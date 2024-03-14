.class public Lcom/ironsource/mediationsdk/IronSourceObject;
.super Ljava/lang/Object;
.source "IronSourceObject.java"

# interfaces
.implements Lcom/ironsource/mediationsdk/sdk/IronSourceInterface;
.implements Lcom/ironsource/mediationsdk/MediationInitializer$OnMediationInitializationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/mediationsdk/IronSourceObject$IResponseListener;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/ironsource/mediationsdk/IronSourceObject;


# instance fields
.field private final IRONSOURCE_VERSION_STRING:Ljava/lang/String;

.field private final KEY_INIT_COUNTER:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private mActivity:Landroid/app/Activity;

.field private mAdUnitsToInitialize:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;",
            ">;"
        }
    .end annotation
.end field

.field private mAppKey:Ljava/lang/String;

.field private mAtomicIsFirstInit:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mBannerManager:Lcom/ironsource/mediationsdk/BannerManager;

.field private mBnLayoutToLoad:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

.field private mBnPlacementToLoad:Ljava/lang/String;

.field private mConsent:Ljava/lang/Boolean;

.field private mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

.field private mDemandOnlyIsLoadBeforeInitCompleted:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDemandOnlyIsManager:Lcom/ironsource/mediationsdk/DemandOnlyIsManager;

.field private mDemandOnlyRvLoadBeforeInitCompleted:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDemandOnlyRvManager:Lcom/ironsource/mediationsdk/DemandOnlyRvManager;

.field private mDidInitBanner:Z

.field private mDidInitInterstitial:Z

.field private mDidInitRewardedVideo:Z

.field private mDynamicUserId:Ljava/lang/String;

.field private mEventManagersInit:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mInitCounter:I

.field private mInitSucceeded:Z

.field private mInitiatedAdUnits:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;",
            ">;"
        }
    .end annotation
.end field

.field private mInterstitialManager:Lcom/ironsource/mediationsdk/InterstitialManager;

.field private mIronSegment:Lcom/ironsource/mediationsdk/IronSourceSegment;

.field private mIsBnLoadBeforeInitCompleted:Ljava/lang/Boolean;

.field private mIsDemandOnlyIs:Z

.field private mIsDemandOnlyRv:Z

.field private mIsIsLoadBeforeInitCompleted:Z

.field private mIsIsProgrammatic:Z

.field private mIsRvProgrammatic:Z

.field private mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

.field private mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

.field private mMediationType:Ljava/lang/String;

.field private mOfferwallAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

.field private mOfferwallManager:Lcom/ironsource/mediationsdk/OfferwallManager;

.field private mProgIsManager:Lcom/ironsource/mediationsdk/ProgIsManager;

.field private mProgRvManager:Lcom/ironsource/mediationsdk/IProgRvManager;

.field private mPublisherLogger:Lcom/ironsource/mediationsdk/logger/PublisherLogger;

.field private mRequestedAdUnits:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;",
            ">;"
        }
    .end annotation
.end field

.field private mRewardedVideoManager:Lcom/ironsource/mediationsdk/RewardedVideoManager;

.field private mRvServerParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSegment:Ljava/lang/String;

.field private final mServerResponseLocker:Ljava/lang/Object;

.field private mSessionId:Ljava/lang/String;

.field private mShouldSendGetInstanceEvent:Z

.field private mShouldTrackNetworkState:Ljava/lang/Boolean;

.field private mTrackNetworkStateContext:Landroid/content/Context;

.field private mUserAge:Ljava/lang/Integer;

.field private mUserGender:Ljava/lang/String;

.field private mUserId:Ljava/lang/String;

.field private rvProgrammaticMode:I


# direct methods
.method private constructor <init>()V
    .registers 5

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->TAG:Ljava/lang/String;

    const-string v0, "!SDK-VERSION-STRING!:com.ironsource:mediationsdk:\u200b7.0.1.1"

    .line 78
    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->IRONSOURCE_VERSION_STRING:Ljava/lang/String;

    .line 94
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mServerResponseLocker:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 95
    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    .line 97
    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mAppKey:Ljava/lang/String;

    .line 98
    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mUserId:Ljava/lang/String;

    .line 99
    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mUserAge:Ljava/lang/Integer;

    .line 100
    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mUserGender:Ljava/lang/String;

    .line 101
    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mSegment:Ljava/lang/String;

    .line 102
    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDynamicUserId:Ljava/lang/String;

    .line 103
    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRvServerParams:Ljava/util/Map;

    .line 104
    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mMediationType:Ljava/lang/String;

    const/4 v1, 0x0

    .line 106
    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInitSucceeded:Z

    .line 108
    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mSessionId:Ljava/lang/String;

    .line 110
    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mShouldTrackNetworkState:Ljava/lang/Boolean;

    const/4 v2, 0x1

    .line 115
    iput-boolean v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mShouldSendGetInstanceEvent:Z

    const-string v3, "sessionDepth"

    .line 119
    iput-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->KEY_INIT_COUNTER:Ljava/lang/String;

    .line 132
    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mConsent:Ljava/lang/Boolean;

    .line 154
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->initializeManagers()V

    .line 157
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mEventManagersInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 158
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mAdUnitsToInitialize:Ljava/util/Set;

    .line 159
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRequestedAdUnits:Ljava/util/Set;

    .line 160
    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsDemandOnlyIs:Z

    .line 161
    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsDemandOnlyRv:Z

    .line 162
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mAtomicIsFirstInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 163
    iput v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInitCounter:I

    .line 164
    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDidInitRewardedVideo:Z

    .line 165
    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDidInitInterstitial:Z

    .line 166
    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDidInitBanner:Z

    .line 167
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mSessionId:Ljava/lang/String;

    .line 168
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsBnLoadBeforeInitCompleted:Ljava/lang/Boolean;

    .line 169
    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsIsLoadBeforeInitCompleted:Z

    .line 170
    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mBnPlacementToLoad:Ljava/lang/String;

    .line 171
    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mProgRvManager:Lcom/ironsource/mediationsdk/IProgRvManager;

    .line 172
    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mProgIsManager:Lcom/ironsource/mediationsdk/ProgIsManager;

    .line 173
    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsRvProgrammatic:Z

    .line 174
    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsIsProgrammatic:Z

    .line 175
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyIsLoadBeforeInitCompleted:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 176
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyRvLoadBeforeInitCompleted:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 177
    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyIsManager:Lcom/ironsource/mediationsdk/DemandOnlyIsManager;

    .line 178
    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyRvManager:Lcom/ironsource/mediationsdk/DemandOnlyRvManager;

    .line 179
    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mBannerManager:Lcom/ironsource/mediationsdk/BannerManager;

    .line 180
    iput v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->rvProgrammaticMode:I

    return-void
.end method

.method private addToDictionary(Lorg/json/JSONObject;[[Ljava/lang/Object;)V
    .registers 9

    if-eqz p2, :cond_38

    .line 2788
    :try_start_2
    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v0, :cond_38

    aget-object v3, p2, v2

    .line 2789
    aget-object v4, v3, v1

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v3, v3, v5

    invoke-virtual {p1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_15} :catch_18

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :catch_18
    move-exception p1

    .line 2793
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object p2

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IronSourceObject addToDictionary: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x3

    invoke-virtual {p2, v0, p1, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    :cond_38
    return-void
.end method

.method private varargs declared-synchronized attachAdUnits(Z[Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V
    .registers 14

    monitor-enter p0

    .line 349
    :try_start_1
    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_4
    const/4 v3, 0x1

    if-ge v2, v0, :cond_21

    aget-object v4, p2, v2

    .line 350
    sget-object v5, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v4, v5}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 351
    iput-boolean v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDidInitInterstitial:Z

    goto :goto_1e

    .line 352
    :cond_14
    sget-object v5, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->BANNER:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v4, v5}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 353
    iput-boolean v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDidInitBanner:Z

    :cond_1e
    :goto_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 357
    :cond_21
    invoke-static {}, Lcom/ironsource/mediationsdk/MediationInitializer;->getInstance()Lcom/ironsource/mediationsdk/MediationInitializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/MediationInitializer;->getCurrentInitStatus()Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    move-result-object v0

    sget-object v2, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;->INIT_FAILED:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_14d

    if-ne v0, v2, :cond_4a

    .line 360
    :try_start_2d
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    if-eqz p1, :cond_14b

    .line 361
    array-length p1, p2

    :goto_32
    if-ge v1, p1, :cond_14b

    aget-object v0, p2, v1

    .line 362
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mAdUnitsToInitialize:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_41

    .line 363
    invoke-direct {p0, v0, v3}, Lcom/ironsource/mediationsdk/IronSourceObject;->notifyPublisherAboutInitFailed(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Z)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_41} :catch_44
    .catchall {:try_start_2d .. :try_end_41} :catchall_14d

    :cond_41
    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    :catch_44
    move-exception p1

    .line 367
    :try_start_45
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_14b

    .line 369
    :cond_4a
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInitSucceeded:Z

    const/4 v2, 0x3

    const/16 v4, 0xe

    if-nez v0, :cond_c2

    .line 371
    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(Z)Lorg/json/JSONObject;

    move-result-object p1

    .line 374
    array-length v0, p2

    const/4 v5, 0x0

    :goto_57
    if-ge v1, v0, :cond_96

    aget-object v6, p2, v1

    .line 375
    iget-object v7, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mAdUnitsToInitialize:Ljava/util/Set;

    invoke-interface {v7, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7b

    .line 378
    iget-object v5, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mAdUnitsToInitialize:Ljava/util/Set;

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 379
    iget-object v5, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRequestedAdUnits:Ljava/util/Set;

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_6d
    .catchall {:try_start_45 .. :try_end_6d} :catchall_14d

    .line 382
    :try_start_6d
    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_74} :catch_75
    .catchall {:try_start_6d .. :try_end_74} :catchall_14d

    goto :goto_79

    :catch_75
    move-exception v5

    .line 384
    :try_start_76
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    :goto_79
    const/4 v5, 0x1

    goto :goto_93

    .line 387
    :cond_7b
    iget-object v7, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v8, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " ad unit has started initializing."

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v8, v6, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_93
    .catchall {:try_start_76 .. :try_end_93} :catchall_14d

    :goto_93
    add-int/lit8 v1, v1, 0x1

    goto :goto_57

    :cond_96
    if-eqz v5, :cond_14b

    :try_start_98
    const-string p2, "sessionDepth"

    .line 393
    iget v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInitCounter:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInitCounter:I

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 394
    invoke-static {}, Lcom/ironsource/environment/ApplicationContext;->isKotlinLibraryExist()Z

    move-result p2

    if-eqz p2, :cond_b4

    const-string p2, "ext1"

    const-string v0, "appLanguage=Kotlin"

    .line 395
    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_af
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_af} :catch_b0
    .catchall {:try_start_98 .. :try_end_af} :catchall_14d

    goto :goto_b4

    :catch_b0
    move-exception p2

    .line 398
    :try_start_b1
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 400
    :cond_b4
    :goto_b4
    new-instance p2, Lcom/ironsource/eventsmodule/EventData;

    invoke-direct {p2, v4, p1}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 401
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    goto/16 :goto_14b

    .line 405
    :cond_c2
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInitiatedAdUnits:Ljava/util/List;
    :try_end_c4
    .catchall {:try_start_b1 .. :try_end_c4} :catchall_14d

    if-nez v0, :cond_c8

    .line 406
    monitor-exit p0

    return-void

    .line 408
    :cond_c8
    :try_start_c8
    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(Z)Lorg/json/JSONObject;

    move-result-object p1

    .line 411
    array-length v0, p2

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_cf
    if-ge v5, v0, :cond_121

    aget-object v7, p2, v5

    .line 413
    iget-object v8, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mAdUnitsToInitialize:Ljava/util/Set;

    invoke-interface {v8, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_106

    .line 416
    iget-object v6, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mAdUnitsToInitialize:Ljava/util/Set;

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 417
    iget-object v6, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRequestedAdUnits:Ljava/util/Set;

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_e5
    .catchall {:try_start_c8 .. :try_end_e5} :catchall_14d

    .line 420
    :try_start_e5
    invoke-virtual {v7}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_ec
    .catch Ljava/lang/Exception; {:try_start_e5 .. :try_end_ec} :catch_ed
    .catchall {:try_start_e5 .. :try_end_ec} :catchall_14d

    goto :goto_f1

    :catch_ed
    move-exception v6

    .line 422
    :try_start_ee
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 426
    :goto_f1
    iget-object v6, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInitiatedAdUnits:Ljava/util/List;

    if-eqz v6, :cond_101

    iget-object v6, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInitiatedAdUnits:Ljava/util/List;

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_101

    .line 427
    invoke-direct {p0, v7}, Lcom/ironsource/mediationsdk/IronSourceObject;->startAdUnit(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V

    goto :goto_104

    .line 430
    :cond_101
    invoke-direct {p0, v7, v1}, Lcom/ironsource/mediationsdk/IronSourceObject;->notifyPublisherAboutInitFailed(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Z)V

    :goto_104
    const/4 v6, 0x1

    goto :goto_11e

    .line 433
    :cond_106
    iget-object v8, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v9, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " ad unit has already been initialized"

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v9, v7, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_11e
    .catchall {:try_start_ee .. :try_end_11e} :catchall_14d

    :goto_11e
    add-int/lit8 v5, v5, 0x1

    goto :goto_cf

    :cond_121
    if-eqz v6, :cond_14b

    :try_start_123
    const-string p2, "sessionDepth"

    .line 439
    iget v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInitCounter:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInitCounter:I

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 441
    invoke-static {}, Lcom/ironsource/environment/ApplicationContext;->isKotlinLibraryExist()Z

    move-result p2

    if-eqz p2, :cond_13f

    const-string p2, "ext1"

    const-string v0, "appLanguage=Kotlin"

    .line 442
    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_13a
    .catch Ljava/lang/Exception; {:try_start_123 .. :try_end_13a} :catch_13b
    .catchall {:try_start_123 .. :try_end_13a} :catchall_14d

    goto :goto_13f

    :catch_13b
    move-exception p2

    .line 445
    :try_start_13c
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 447
    :cond_13f
    :goto_13f
    new-instance p2, Lcom/ironsource/eventsmodule/EventData;

    invoke-direct {p2, v4, p1}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 448
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V
    :try_end_14b
    .catchall {:try_start_13c .. :try_end_14b} :catchall_14d

    .line 451
    :cond_14b
    :goto_14b
    monitor-exit p0

    return-void

    :catchall_14d
    move-exception p1

    monitor-exit p0

    throw p1

    return-void
.end method

.method private connectAndGetServerResponse(Landroid/content/Context;Ljava/lang/String;Lcom/ironsource/mediationsdk/IronSourceObject$IResponseListener;)Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;
    .registers 14

    .line 2198
    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 2205
    :cond_8
    :try_start_8
    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/IronSourceObject;->getAdvertiserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2206
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_22

    .line 2207
    invoke-static {p1}, Lcom/ironsource/environment/DeviceStatus;->getOrGenerateOnceUniqueIdentifier(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2208
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v2

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v5, "using custom identifier"

    invoke-virtual {v2, v4, v5, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    :cond_22
    move-object v7, v0

    .line 2211
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIronSegment:Lcom/ironsource/mediationsdk/IronSourceSegment;

    if-eqz v0, :cond_2f

    .line 2212
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIronSegment:Lcom/ironsource/mediationsdk/IronSourceSegment;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceSegment;->getSegmentData()Ljava/util/Vector;

    move-result-object v0

    move-object v9, v0

    goto :goto_30

    :cond_2f
    move-object v9, v1

    .line 2214
    :goto_30
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getMediationType()Ljava/lang/String;

    move-result-object v8

    .line 2216
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getIronSourceAppKey()Ljava/lang/String;

    move-result-object v5

    move-object v4, p1

    move-object v6, p2

    invoke-static/range {v4 .. v9}, Lcom/ironsource/mediationsdk/server/ServerURL;->getCPVProvidersURL(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/ironsource/mediationsdk/server/HttpFunctions;->getStringFromURL(Ljava/lang/String;Lcom/ironsource/mediationsdk/IronSourceObject$IResponseListener;)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_45

    return-object v1

    .line 2222
    :cond_45
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getSerr()I

    move-result v0

    if-ne v0, v3, :cond_63

    .line 2223
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p3, "response"

    .line 2225
    invoke-virtual {v0, p3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 2227
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5d

    return-object v1

    :cond_5d
    const-string v0, "C38FB23A402222A0C17D34A92F971D1F"

    .line 2231
    invoke-static {v0, p3}, Lcom/ironsource/mediationsdk/utils/IronSourceAES;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 2234
    :cond_63
    new-instance v0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getIronSourceAppKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v2, p2, p3}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_6c} :catch_75

    .line 2237
    :try_start_6c
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->isValidResponse()Z

    move-result p1
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_70} :catch_73

    if-nez p1, :cond_7a

    return-object v1

    :catch_73
    move-exception p1

    goto :goto_77

    :catch_75
    move-exception p1

    move-object v0, v1

    .line 2241
    :goto_77
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7a
    return-object v0
.end method

.method private getBannerPlacement(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/BannerPlacement;
    .registers 4

    .line 2736
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/Configurations;->getBannerConfigurations()Lcom/ironsource/mediationsdk/model/BannerConfigurations;

    move-result-object v0

    if-nez v0, :cond_e

    const/4 p1, 0x0

    return-object p1

    .line 2742
    :cond_e
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 2743
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/BannerConfigurations;->getDefaultBannerPlacement()Lcom/ironsource/mediationsdk/model/BannerPlacement;

    move-result-object p1

    return-object p1

    .line 2746
    :cond_19
    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/model/BannerConfigurations;->getBannerPlacement(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/BannerPlacement;

    move-result-object p1

    if-eqz p1, :cond_20

    return-object p1

    .line 2750
    :cond_20
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/BannerConfigurations;->getDefaultBannerPlacement()Lcom/ironsource/mediationsdk/model/BannerPlacement;

    move-result-object p1

    return-object p1
.end method

.method private getCachedResponse(Landroid/content/Context;Ljava/lang/String;)Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;
    .registers 7

    .line 2161
    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getLastResponse(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2164
    :try_start_4
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_9} :catch_a

    goto :goto_f

    .line 2166
    :catch_a
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :goto_f
    const-string v0, "appKey"

    .line 2169
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "userId"

    .line 2170
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "response"

    .line 2171
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2173
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_95

    .line 2174
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_95

    .line 2175
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_95

    .line 2179
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getIronSourceAppKey()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_95

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getIronSourceAppKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_95

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_95

    .line 2181
    new-instance p2, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-direct {p2, p1, v0, v2, v1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2183
    invoke-static {v0, v2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildUsingCachedConfigurationError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    .line 2184
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 2185
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    const/4 p1, 0x0

    .line 2186
    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(Z)Lorg/json/JSONObject;

    move-result-object p1

    .line 2187
    new-instance v0, Lcom/ironsource/eventsmodule/EventData;

    const/16 v1, 0x8c

    invoke-direct {v0, v1, p1}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 2188
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    goto :goto_96

    :cond_95
    const/4 p2, 0x0

    :goto_96
    return-object p2
.end method

.method private getDefaultInterstitialPlacement()Lcom/ironsource/mediationsdk/model/InterstitialPlacement;
    .registers 2

    .line 1676
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/Configurations;->getInterstitialConfigurations()Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 1680
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->getDefaultInterstitialPlacement()Lcom/ironsource/mediationsdk/model/InterstitialPlacement;

    move-result-object v0

    return-object v0

    :cond_11
    const/4 v0, 0x0

    return-object v0
.end method

.method private getDefaultRewardedVideoPlacement()Lcom/ironsource/mediationsdk/model/Placement;
    .registers 2

    .line 1226
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 1230
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->getDefaultRewardedVideoPlacement()Lcom/ironsource/mediationsdk/model/Placement;

    move-result-object v0

    return-object v0

    :cond_11
    const/4 v0, 0x0

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;
    .registers 2

    const-class v0, Lcom/ironsource/mediationsdk/IronSourceObject;

    monitor-enter v0

    .line 145
    :try_start_3
    sget-object v1, Lcom/ironsource/mediationsdk/IronSourceObject;->sInstance:Lcom/ironsource/mediationsdk/IronSourceObject;

    if-nez v1, :cond_e

    .line 146
    new-instance v1, Lcom/ironsource/mediationsdk/IronSourceObject;

    invoke-direct {v1}, Lcom/ironsource/mediationsdk/IronSourceObject;-><init>()V

    sput-object v1, Lcom/ironsource/mediationsdk/IronSourceObject;->sInstance:Lcom/ironsource/mediationsdk/IronSourceObject;

    .line 149
    :cond_e
    sget-object v1, Lcom/ironsource/mediationsdk/IronSourceObject;->sInstance:Lcom/ironsource/mediationsdk/IronSourceObject;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getInterstitialCappingStatus(Ljava/lang/String;)Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;
    .registers 6

    .line 2614
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    if-eqz v0, :cond_3f

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    .line 2615
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/Configurations;->getInterstitialConfigurations()Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;

    move-result-object v0

    if-nez v0, :cond_17

    goto :goto_3f

    :cond_17
    const/4 v0, 0x0

    .line 2621
    :try_start_18
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInterstitialPlacement(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/InterstitialPlacement;

    move-result-object v0

    if-nez v0, :cond_33

    .line 2625
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getDefaultInterstitialPlacement()Lcom/ironsource/mediationsdk/model/InterstitialPlacement;

    move-result-object v0

    if-nez v0, :cond_33

    const-string p1, "Default placement was not found"

    .line 2629
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, p1, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_2e} :catch_2f

    goto :goto_33

    :catch_2f
    move-exception p1

    .line 2633
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_33
    :goto_33
    if-nez v0, :cond_38

    .line 2637
    sget-object p1, Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;->NOT_CAPPED:Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;

    return-object p1

    .line 2639
    :cond_38
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mActivity:Landroid/app/Activity;

    invoke-static {p1, v0}, Lcom/ironsource/mediationsdk/utils/CappingManager;->isPlacementCapped(Landroid/content/Context;Lcom/ironsource/mediationsdk/model/InterstitialPlacement;)Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;

    move-result-object p1

    return-object p1

    .line 2616
    :cond_3f
    :goto_3f
    sget-object p1, Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;->NOT_CAPPED:Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;

    return-object p1
.end method

.method private getInterstitialPlacement(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/InterstitialPlacement;
    .registers 3

    .line 1664
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/Configurations;->getInterstitialConfigurations()Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 1668
    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->getInterstitialPlacement(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/InterstitialPlacement;

    move-result-object p1

    return-object p1

    :cond_11
    const/4 p1, 0x0

    return-object p1
.end method

.method private getInterstitialPlacementToShowWithEvent(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/InterstitialPlacement;
    .registers 7

    .line 1882
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInterstitialPlacement(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/InterstitialPlacement;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_21

    .line 1886
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v2, 0x3

    const-string v3, "Placement is not valid, please make sure you are using the right placements, using the default placement."

    invoke-virtual {p1, v1, v3, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1889
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getDefaultInterstitialPlacement()Lcom/ironsource/mediationsdk/model/InterstitialPlacement;

    move-result-object p1

    if-nez p1, :cond_21

    .line 1893
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v3, "Default placement was not found, please make sure you are using the right placements."

    invoke-virtual {p1, v1, v3, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-object v0

    .line 1898
    :cond_21
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/InterstitialPlacement;->getPlacementName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInterstitialCappingStatus(Ljava/lang/String;)Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;

    move-result-object v1

    .line 1899
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/InterstitialPlacement;->getPlacementName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/ironsource/mediationsdk/IronSourceObject;->getCappingMessage(Ljava/lang/String;Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;)Ljava/lang/String;

    move-result-object v1

    .line 1900
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4e

    .line 1901
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1902
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-virtual {v2, p1}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->setInterstitialPlacement(Lcom/ironsource/mediationsdk/model/InterstitialPlacement;)V

    .line 1903
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-static {v1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildCappedPerPlacementError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-object v0

    :cond_4e
    return-object p1
.end method

.method private getPlacementToShowWithEvent(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/Placement;
    .registers 6

    .line 1489
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/IronSourceObject;->getRewardedVideoPlacement(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/Placement;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_21

    .line 1492
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v2, 0x3

    const-string v3, "Placement is not valid, please make sure you are using the right placements, using the default placement."

    invoke-virtual {p1, v1, v3, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1495
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getDefaultRewardedVideoPlacement()Lcom/ironsource/mediationsdk/model/Placement;

    move-result-object p1

    if-nez p1, :cond_21

    .line 1498
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v3, "Default placement was not found, please make sure you are using the right placements."

    invoke-virtual {p1, v1, v3, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-object v0

    .line 1503
    :cond_21
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mActivity:Landroid/app/Activity;

    invoke-static {v1, p1}, Lcom/ironsource/mediationsdk/utils/CappingManager;->isPlacementCapped(Landroid/content/Context;Lcom/ironsource/mediationsdk/model/Placement;)Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;

    move-result-object v1

    .line 1504
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/Placement;->getPlacementName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/ironsource/mediationsdk/IronSourceObject;->getCappingMessage(Ljava/lang/String;Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;)Ljava/lang/String;

    move-result-object v1

    .line 1505
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_47

    .line 1506
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v1, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1507
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-static {v1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildCappedPerPlacementError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-object v0

    :cond_47
    return-object p1
.end method

.method private getRewardedVideoCappingStatus(Ljava/lang/String;)Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;
    .registers 6

    .line 2643
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    if-eqz v0, :cond_3f

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    .line 2644
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v0

    if-nez v0, :cond_17

    goto :goto_3f

    :cond_17
    const/4 v0, 0x0

    .line 2650
    :try_start_18
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/IronSourceObject;->getRewardedVideoPlacement(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/Placement;

    move-result-object v0

    if-nez v0, :cond_33

    .line 2654
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getDefaultRewardedVideoPlacement()Lcom/ironsource/mediationsdk/model/Placement;

    move-result-object v0

    if-nez v0, :cond_33

    const-string p1, "Default placement was not found"

    .line 2658
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, p1, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_2e} :catch_2f

    goto :goto_33

    :catch_2f
    move-exception p1

    .line 2662
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_33
    :goto_33
    if-nez v0, :cond_38

    .line 2666
    sget-object p1, Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;->NOT_CAPPED:Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;

    return-object p1

    .line 2668
    :cond_38
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mActivity:Landroid/app/Activity;

    invoke-static {p1, v0}, Lcom/ironsource/mediationsdk/utils/CappingManager;->isPlacementCapped(Landroid/content/Context;Lcom/ironsource/mediationsdk/model/Placement;)Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;

    move-result-object p1

    return-object p1

    .line 2645
    :cond_3f
    :goto_3f
    sget-object p1, Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;->NOT_CAPPED:Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;

    return-object p1
.end method

.method private getRewardedVideoPlacement(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/Placement;
    .registers 3

    .line 1215
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 1219
    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->getRewardedVideoPlacement(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/Placement;

    move-result-object p1

    return-object p1

    :cond_11
    const/4 p1, 0x0

    return-object p1
.end method

.method private initializeEventsSettings(Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;Landroid/content/Context;)V
    .registers 9

    .line 2254
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->isRewardedVideoConfigurationsReady()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 2255
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->getRewardedVideoEventsConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationEvents;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->isEventsEnabled()Z

    move-result v0

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 2259
    :goto_19
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->isInterstitialConfigurationsReady()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 2260
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/Configurations;->getInterstitialConfigurations()Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->getInterstitialEventsConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationEvents;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->isEventsEnabled()Z

    move-result v2

    goto :goto_31

    :cond_30
    const/4 v2, 0x0

    .line 2264
    :goto_31
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->isBannerConfigurationsReady()Z

    move-result v3

    if-eqz v3, :cond_48

    .line 2265
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/Configurations;->getBannerConfigurations()Lcom/ironsource/mediationsdk/model/BannerConfigurations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/BannerConfigurations;->getBannerEventsConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationEvents;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->isEventsEnabled()Z

    move-result v3

    goto :goto_49

    :cond_48
    const/4 v3, 0x0

    .line 2269
    :goto_49
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->isOfferwallConfigurationsReady()Z

    move-result v4

    if-eqz v4, :cond_60

    .line 2270
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/Configurations;->getOfferwallConfigurations()Lcom/ironsource/mediationsdk/model/OfferwallConfigurations;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/OfferwallConfigurations;->getOfferWallEventsConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationEvents;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->isEventsEnabled()Z

    move-result v4

    goto :goto_61

    :cond_60
    const/4 v4, 0x0

    :goto_61
    if-eqz v0, :cond_e7

    .line 2275
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->getRewardedVideoEventsConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationEvents;

    move-result-object v0

    .line 2276
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v4

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getEventsType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->setFormatterType(Ljava/lang/String;Landroid/content/Context;)V

    .line 2277
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v4

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getEventsURL()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->setEventsUrl(Ljava/lang/String;Landroid/content/Context;)V

    .line 2278
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v4

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getMaxNumberOfEvents()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->setMaxNumberOfEvents(I)V

    .line 2279
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v4

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getMaxEventsPerBatch()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->setMaxEventsPerBatch(I)V

    .line 2280
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v4

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getEventsBackupThreshold()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->setBackupThreshold(I)V

    .line 2281
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v4

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getOptOutEvents()[I

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->setOptOutEvents([ILandroid/content/Context;)V

    .line 2282
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v4

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getOptInEvents()[I

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->setOptInEvents([ILandroid/content/Context;)V

    .line 2283
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v4

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getTriggerEvents()[I

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->setTriggerEvents([ILandroid/content/Context;)V

    .line 2284
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v4

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getNonConnectivityEvents()[I

    move-result-object v0

    invoke-virtual {v4, v0, p2}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->setNonConnectivityEvents([ILandroid/content/Context;)V

    .line 2285
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/Configurations;->getApplicationConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;->getSegmetData()Lcom/ironsource/mediationsdk/model/ServerSegmetData;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->setServerSegmentData(Lcom/ironsource/mediationsdk/model/ServerSegmetData;)V

    goto/16 :goto_173

    :cond_e7
    if-eqz v4, :cond_16c

    .line 2288
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/Configurations;->getOfferwallConfigurations()Lcom/ironsource/mediationsdk/model/OfferwallConfigurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/OfferwallConfigurations;->getOfferWallEventsConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationEvents;

    move-result-object v0

    .line 2289
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v4

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getEventsType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->setFormatterType(Ljava/lang/String;Landroid/content/Context;)V

    .line 2290
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v4

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getEventsURL()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->setEventsUrl(Ljava/lang/String;Landroid/content/Context;)V

    .line 2291
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v4

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getMaxNumberOfEvents()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->setMaxNumberOfEvents(I)V

    .line 2292
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v4

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getMaxEventsPerBatch()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->setMaxEventsPerBatch(I)V

    .line 2293
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v4

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getEventsBackupThreshold()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->setBackupThreshold(I)V

    .line 2294
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v4

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getOptOutEvents()[I

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->setOptOutEvents([ILandroid/content/Context;)V

    .line 2295
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v4

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getOptInEvents()[I

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->setOptInEvents([ILandroid/content/Context;)V

    .line 2296
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v4

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getTriggerEvents()[I

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->setTriggerEvents([ILandroid/content/Context;)V

    .line 2297
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v4

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getNonConnectivityEvents()[I

    move-result-object v0

    invoke-virtual {v4, v0, p2}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->setNonConnectivityEvents([ILandroid/content/Context;)V

    .line 2298
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/Configurations;->getApplicationConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;->getSegmetData()Lcom/ironsource/mediationsdk/model/ServerSegmetData;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->setServerSegmentData(Lcom/ironsource/mediationsdk/model/ServerSegmetData;)V

    goto :goto_173

    .line 2301
    :cond_16c
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->setIsEventsEnabled(Z)V

    :goto_173
    if-eqz v2, :cond_1f9

    .line 2304
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/Configurations;->getInterstitialConfigurations()Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->getInterstitialEventsConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationEvents;

    move-result-object v0

    .line 2305
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getEventsType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->setFormatterType(Ljava/lang/String;Landroid/content/Context;)V

    .line 2306
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getEventsURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->setEventsUrl(Ljava/lang/String;Landroid/content/Context;)V

    .line 2307
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getMaxNumberOfEvents()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->setMaxNumberOfEvents(I)V

    .line 2308
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getMaxEventsPerBatch()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->setMaxEventsPerBatch(I)V

    .line 2309
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getEventsBackupThreshold()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->setBackupThreshold(I)V

    .line 2310
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getOptOutEvents()[I

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->setOptOutEvents([ILandroid/content/Context;)V

    .line 2311
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getOptInEvents()[I

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->setOptInEvents([ILandroid/content/Context;)V

    .line 2312
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getTriggerEvents()[I

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->setTriggerEvents([ILandroid/content/Context;)V

    .line 2313
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getNonConnectivityEvents()[I

    move-result-object v0

    invoke-virtual {v1, v0, p2}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->setNonConnectivityEvents([ILandroid/content/Context;)V

    .line 2314
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object p2

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/Configurations;->getApplicationConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;->getSegmetData()Lcom/ironsource/mediationsdk/model/ServerSegmetData;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->setServerSegmentData(Lcom/ironsource/mediationsdk/model/ServerSegmetData;)V

    goto/16 :goto_285

    :cond_1f9
    if-eqz v3, :cond_27e

    .line 2316
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/Configurations;->getBannerConfigurations()Lcom/ironsource/mediationsdk/model/BannerConfigurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/BannerConfigurations;->getBannerEventsConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationEvents;

    move-result-object v0

    .line 2317
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getEventsType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->setFormatterType(Ljava/lang/String;Landroid/content/Context;)V

    .line 2318
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getEventsURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->setEventsUrl(Ljava/lang/String;Landroid/content/Context;)V

    .line 2319
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getMaxNumberOfEvents()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->setMaxNumberOfEvents(I)V

    .line 2320
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getMaxEventsPerBatch()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->setMaxEventsPerBatch(I)V

    .line 2321
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getEventsBackupThreshold()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->setBackupThreshold(I)V

    .line 2322
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getOptOutEvents()[I

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->setOptOutEvents([ILandroid/content/Context;)V

    .line 2323
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getOptInEvents()[I

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->setOptInEvents([ILandroid/content/Context;)V

    .line 2324
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getTriggerEvents()[I

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->setTriggerEvents([ILandroid/content/Context;)V

    .line 2325
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getNonConnectivityEvents()[I

    move-result-object v0

    invoke-virtual {v1, v0, p2}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->setNonConnectivityEvents([ILandroid/content/Context;)V

    .line 2326
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object p2

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/Configurations;->getApplicationConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;->getSegmetData()Lcom/ironsource/mediationsdk/model/ServerSegmetData;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->setServerSegmentData(Lcom/ironsource/mediationsdk/model/ServerSegmetData;)V

    goto :goto_285

    .line 2328
    :cond_27e
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->setIsEventsEnabled(Z)V

    :goto_285
    return-void
.end method

.method private initializeLoggerManager(Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;)V
    .registers 4

    .line 2332
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mPublisherLogger:Lcom/ironsource/mediationsdk/logger/PublisherLogger;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/Configurations;->getApplicationConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;->getLoggerConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationLogger;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/ApplicationLogger;->getPublisherLoggerLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/PublisherLogger;->setDebugLevel(I)V

    .line 2333
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/Configurations;->getApplicationConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;->getLoggerConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationLogger;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/ApplicationLogger;->getConsoleLoggerLevel()I

    move-result p1

    const-string v1, "console"

    invoke-virtual {v0, v1, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->setLoggerDebugLevel(Ljava/lang/String;I)V

    return-void
.end method

.method private initializeManagers()V
    .registers 4

    const/4 v0, 0x0

    .line 967
    invoke-static {v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger(I)Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    .line 968
    new-instance v0, Lcom/ironsource/mediationsdk/logger/PublisherLogger;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/ironsource/mediationsdk/logger/PublisherLogger;-><init>(Lcom/ironsource/mediationsdk/logger/LogListener;I)V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mPublisherLogger:Lcom/ironsource/mediationsdk/logger/PublisherLogger;

    .line 969
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mPublisherLogger:Lcom/ironsource/mediationsdk/logger/PublisherLogger;

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->addLogger(Lcom/ironsource/mediationsdk/logger/IronSourceLogger;)V

    .line 971
    new-instance v0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-direct {v0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    .line 973
    new-instance v0, Lcom/ironsource/mediationsdk/RewardedVideoManager;

    invoke-direct {v0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/RewardedVideoManager;

    .line 974
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/RewardedVideoManager;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->setRewardedVideoListener(Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;)V

    .line 976
    new-instance v0, Lcom/ironsource/mediationsdk/InterstitialManager;

    invoke-direct {v0}, Lcom/ironsource/mediationsdk/InterstitialManager;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialManager:Lcom/ironsource/mediationsdk/InterstitialManager;

    .line 977
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialManager:Lcom/ironsource/mediationsdk/InterstitialManager;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/InterstitialManager;->setInterstitialListener(Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;)V

    .line 979
    new-instance v0, Lcom/ironsource/mediationsdk/OfferwallManager;

    invoke-direct {v0}, Lcom/ironsource/mediationsdk/OfferwallManager;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mOfferwallManager:Lcom/ironsource/mediationsdk/OfferwallManager;

    .line 980
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mOfferwallManager:Lcom/ironsource/mediationsdk/OfferwallManager;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/OfferwallManager;->setInternalOfferwallListener(Lcom/ironsource/mediationsdk/sdk/InternalOfferwallListener;)V

    return-void
.end method

.method private initializeSettingsFromServerResponse(Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;Landroid/content/Context;)V
    .registers 3

    .line 2248
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/IronSourceObject;->initializeLoggerManager(Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;)V

    .line 2249
    invoke-direct {p0, p1, p2}, Lcom/ironsource/mediationsdk/IronSourceObject;->initializeEventsSettings(Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;Landroid/content/Context;)V

    return-void
.end method

.method private isBannerConfigurationsReady()Z
    .registers 2

    .line 2022
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    if-eqz v0, :cond_18

    .line 2023
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    .line 2024
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/Configurations;->getBannerConfigurations()Lcom/ironsource/mediationsdk/model/BannerConfigurations;

    move-result-object v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0
.end method

.method private isInterstitialConfigurationsReady()Z
    .registers 2

    .line 1876
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    if-eqz v0, :cond_18

    .line 1877
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    .line 1878
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/Configurations;->getInterstitialConfigurations()Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;

    move-result-object v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0
.end method

.method private isOfferwallConfigurationsReady()Z
    .registers 2

    .line 1913
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    if-eqz v0, :cond_18

    .line 1914
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    .line 1915
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/Configurations;->getOfferwallConfigurations()Lcom/ironsource/mediationsdk/model/OfferwallConfigurations;

    move-result-object v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0
.end method

.method private isRewardedVideoConfigurationsReady()Z
    .registers 2

    .line 1483
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    if-eqz v0, :cond_18

    .line 1484
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    .line 1485
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0
.end method

.method private notifyPublisherAboutInitFailed(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Z)V
    .registers 7

    .line 891
    sget-object v0, Lcom/ironsource/mediationsdk/IronSourceObject$1;->$SwitchMap$com$ironsource$mediationsdk$IronSource$AD_UNIT:[I

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_9e

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5c

    const/4 v1, 0x3

    if-eq v0, v1, :cond_45

    const/4 p1, 0x4

    if-eq v0, p1, :cond_17

    goto/16 :goto_df

    .line 921
    :cond_17
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsBnLoadBeforeInitCompleted:Ljava/lang/Boolean;

    monitor-enter v0

    .line 922
    :try_start_1a
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsBnLoadBeforeInitCompleted:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3f

    .line 923
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsBnLoadBeforeInitCompleted:Ljava/lang/Boolean;

    .line 924
    invoke-static {}, Lcom/ironsource/mediationsdk/BannerCallbackThrottler;->getInstance()Lcom/ironsource/mediationsdk/BannerCallbackThrottler;

    move-result-object p1

    iget-object p2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mBnLayoutToLoad:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    new-instance v1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v2, 0x25a

    const-string v3, "Init had failed"

    invoke-direct {v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, p2, v1}, Lcom/ironsource/mediationsdk/BannerCallbackThrottler;->sendBannerAdLoadFailed(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    const/4 p1, 0x0

    .line 925
    iput-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mBnLayoutToLoad:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    .line 926
    iput-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mBnPlacementToLoad:Ljava/lang/String;

    .line 928
    :cond_3f
    monitor-exit v0

    goto/16 :goto_df

    :catchall_42
    move-exception p1

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_1a .. :try_end_44} :catchall_42

    throw p1

    :cond_45
    if-nez p2, :cond_55

    .line 917
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->isOfferwallConfigurationsReady()Z

    move-result p2

    if-nez p2, :cond_55

    iget-object p2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRequestedAdUnits:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_df

    .line 918
    :cond_55
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-virtual {p1, v2}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onOfferwallAvailable(Z)V

    goto/16 :goto_df

    .line 904
    :cond_5c
    iget-boolean p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsDemandOnlyIs:Z

    if-eqz p1, :cond_88

    .line 905
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyIsLoadBeforeInitCompleted:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_66
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_82

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 906
    invoke-static {}, Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;

    move-result-object v0

    const-string v1, "initISDemandOnly() had failed"

    const-string v2, "Interstitial"

    invoke-static {v1, v2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;->onInterstitialAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_66

    .line 908
    :cond_82
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyIsLoadBeforeInitCompleted:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    goto :goto_df

    .line 910
    :cond_88
    iget-boolean p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsIsLoadBeforeInitCompleted:Z

    if-eqz p1, :cond_df

    .line 911
    iput-boolean v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsIsLoadBeforeInitCompleted:Z

    .line 912
    invoke-static {}, Lcom/ironsource/mediationsdk/CallbackThrottler;->getInstance()Lcom/ironsource/mediationsdk/CallbackThrottler;

    move-result-object p1

    const-string p2, "init() had failed"

    const-string v0, "Interstitial"

    invoke-static {p2, v0}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/CallbackThrottler;->onInterstitialAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_df

    .line 893
    :cond_9e
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsDemandOnlyRv:Z

    if-eqz v0, :cond_ca

    .line 894
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyRvLoadBeforeInitCompleted:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_a8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_c4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 895
    invoke-static {}, Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;

    move-result-object v0

    const-string v1, "initISDemandOnly() had failed"

    const-string v2, "Rewarded Video"

    invoke-static {v1, v2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;->onRewardedVideoAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_a8

    .line 897
    :cond_c4
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyRvLoadBeforeInitCompleted:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    goto :goto_df

    :cond_ca
    if-nez p2, :cond_da

    .line 899
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->isRewardedVideoConfigurationsReady()Z

    move-result p2

    if-nez p2, :cond_da

    iget-object p2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRequestedAdUnits:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_df

    .line 900
    :cond_da
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-virtual {p1, v2}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onRewardedVideoAvailabilityChanged(Z)V

    :cond_df
    :goto_df
    return-void
.end method

.method private prepareEventManagers(Landroid/app/Activity;)V
    .registers 5

    .line 934
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mEventManagersInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_36

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 936
    invoke-static {}, Lcom/ironsource/mediationsdk/events/SuperLooper;->getLooper()Lcom/ironsource/mediationsdk/events/SuperLooper;

    move-result-object v0

    new-instance v1, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/events/SuperLooper;->post(Ljava/lang/Runnable;)V

    .line 938
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIronSegment:Lcom/ironsource/mediationsdk/IronSourceSegment;

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->start(Landroid/content/Context;Lcom/ironsource/mediationsdk/IronSourceSegment;)V

    .line 939
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIronSegment:Lcom/ironsource/mediationsdk/IronSourceSegment;

    invoke-virtual {v0, p1, v1}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->start(Landroid/content/Context;Lcom/ironsource/mediationsdk/IronSourceSegment;)V

    :cond_36
    return-void
.end method

.method private sendIsCappedEvent(ZLjava/lang/String;)V
    .registers 8

    if-nez p1, :cond_3

    return-void

    .line 2691
    :cond_3
    iget-boolean p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsDemandOnlyRv:Z

    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsRvProgrammatic:Z

    iget v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->rvProgrammaticMode:I

    invoke-static {p1, v0, v1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(ZZI)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p2, :cond_21

    const/4 v0, 0x1

    .line 2694
    new-array v1, v0, [[Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "placement"

    aput-object v4, v2, v3

    aput-object p2, v2, v0

    aput-object v2, v1, v3

    invoke-direct {p0, p1, v1}, Lcom/ironsource/mediationsdk/IronSourceObject;->addToDictionary(Lorg/json/JSONObject;[[Ljava/lang/Object;)V

    :cond_21
    const/16 p2, 0x456

    .line 2697
    invoke-direct {p0, p2, p1}, Lcom/ironsource/mediationsdk/IronSourceObject;->sentEventWithRVEventManager(ILorg/json/JSONObject;)V

    return-void
.end method

.method private sentEventWithISEventManager(ILorg/json/JSONObject;)V
    .registers 4

    .line 2673
    new-instance v0, Lcom/ironsource/eventsmodule/EventData;

    invoke-direct {v0, p1, p2}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 2674
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    return-void
.end method

.method private sentEventWithRVEventManager(ILorg/json/JSONObject;)V
    .registers 4

    .line 2678
    new-instance v0, Lcom/ironsource/eventsmodule/EventData;

    invoke-direct {v0, p1, p2}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 2679
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    return-void
.end method

.method private showProgrammaticInterstitial(Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x0

    .line 1689
    :try_start_1
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInterstitialPlacement(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/InterstitialPlacement;

    move-result-object p1

    if-nez p1, :cond_b

    .line 1692
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getDefaultInterstitialPlacement()Lcom/ironsource/mediationsdk/model/InterstitialPlacement;

    move-result-object p1

    :cond_b
    if-eqz p1, :cond_1d

    .line 1696
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/InterstitialPlacement;->getPlacementName()Ljava/lang/String;

    move-result-object p1
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_11} :catch_13

    move-object v0, p1

    goto :goto_1d

    :catch_13
    move-exception p1

    .line 1700
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v3, "showProgrammaticInterstitial()"

    invoke-virtual {v1, v2, v3, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1702
    :cond_1d
    :goto_1d
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mProgIsManager:Lcom/ironsource/mediationsdk/ProgIsManager;

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/ProgIsManager;->showInterstitial(Ljava/lang/String;)V

    return-void
.end method

.method private showProgrammaticRewardedVideo(Ljava/lang/String;)V
    .registers 5

    .line 1237
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/IronSourceObject;->getRewardedVideoPlacement(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/Placement;

    move-result-object p1

    if-nez p1, :cond_a

    .line 1240
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getDefaultRewardedVideoPlacement()Lcom/ironsource/mediationsdk/model/Placement;

    move-result-object p1

    :cond_a
    if-nez p1, :cond_23

    const-string p1, "showProgrammaticRewardedVideo error: empty default placement in response"

    .line 1245
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, p1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1246
    new-instance v0, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v1, 0x3fd

    invoke-direct {v0, v1, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    .line 1247
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_28

    .line 1249
    :cond_23
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mProgRvManager:Lcom/ironsource/mediationsdk/IProgRvManager;

    invoke-interface {v0, p1}, Lcom/ironsource/mediationsdk/IProgRvManager;->showRewardedVideo(Lcom/ironsource/mediationsdk/model/Placement;)V

    :goto_28
    return-void
.end method

.method private startAdUnit(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V
    .registers 4

    .line 497
    sget-object v0, Lcom/ironsource/mediationsdk/IronSourceObject$1;->$SwitchMap$com$ironsource$mediationsdk$IronSource$AD_UNIT:[I

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2b

    const/4 v0, 0x2

    if-eq p1, v0, :cond_27

    const/4 v0, 0x3

    if-eq p1, v0, :cond_19

    const/4 v0, 0x4

    if-eq p1, v0, :cond_15

    goto :goto_2e

    .line 508
    :cond_15
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->startBanner()V

    goto :goto_2e

    .line 505
    :cond_19
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mOfferwallManager:Lcom/ironsource/mediationsdk/OfferwallManager;

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getIronSourceAppKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getIronSourceUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/ironsource/mediationsdk/OfferwallManager;->initOfferwall(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2e

    .line 502
    :cond_27
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->startInterstitial()V

    goto :goto_2e

    .line 499
    :cond_2b
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->startRewardedVideo()V

    :goto_2e
    return-void
.end method

.method private startBanner()V
    .registers 12

    .line 809
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsBnLoadBeforeInitCompleted:Ljava/lang/Boolean;

    monitor-enter v0

    .line 810
    :try_start_3
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/Configurations;->getBannerConfigurations()Lcom/ironsource/mediationsdk/model/BannerConfigurations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/BannerConfigurations;->getBannerAdaptersSmartLoadTimeout()J

    move-result-wide v6

    .line 811
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/Configurations;->getBannerConfigurations()Lcom/ironsource/mediationsdk/model/BannerConfigurations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/BannerConfigurations;->getBannerRefreshInterval()I

    move-result v8

    .line 812
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/Configurations;->getBannerConfigurations()Lcom/ironsource/mediationsdk/model/BannerConfigurations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/BannerConfigurations;->getBannerDelayLoadFailure()I

    move-result v9

    .line 814
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 815
    :goto_34
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getProviderOrder()Lcom/ironsource/mediationsdk/model/ProviderOrder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->getBannerProviderOrder()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_6c

    .line 816
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getProviderOrder()Lcom/ironsource/mediationsdk/model/ProviderOrder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->getBannerProviderOrder()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 818
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_69

    .line 819
    iget-object v5, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getProviderSettingsHolder()Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->getProviderSettings(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/ProviderSettings;

    move-result-object v4

    if-eqz v4, :cond_69

    .line 822
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_69
    add-int/lit8 v2, v2, 0x1

    goto :goto_34

    .line 827
    :cond_6c
    new-instance v10, Lcom/ironsource/mediationsdk/BannerManager;

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getIronSourceAppKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getUserIdForNetworks()Ljava/lang/String;

    move-result-object v5

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lcom/ironsource/mediationsdk/BannerManager;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;JII)V

    iput-object v10, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mBannerManager:Lcom/ironsource/mediationsdk/BannerManager;

    .line 829
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsBnLoadBeforeInitCompleted:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_96

    .line 830
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsBnLoadBeforeInitCompleted:Ljava/lang/Boolean;

    .line 831
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mBnLayoutToLoad:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mBnPlacementToLoad:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/ironsource/mediationsdk/IronSourceObject;->loadBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 832
    iput-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mBnLayoutToLoad:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    .line 833
    iput-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mBnPlacementToLoad:Ljava/lang/String;

    .line 835
    :cond_96
    monitor-exit v0

    return-void

    :catchall_98
    move-exception v1

    monitor-exit v0
    :try_end_9a
    .catchall {:try_start_3 .. :try_end_9a} :catchall_98

    throw v1

    return-void
.end method

.method private startDemandOnlyIs()V
    .registers 8

    .line 718
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v2, 0x0

    const-string v3, "Interstitial started in demand only mode"

    invoke-virtual {v0, v1, v3, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 720
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 721
    :goto_10
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getProviderOrder()Lcom/ironsource/mediationsdk/model/ProviderOrder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->getInterstitialProviderOrder()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_46

    .line 722
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getProviderOrder()Lcom/ironsource/mediationsdk/model/ProviderOrder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->getInterstitialProviderOrder()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 724
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_43

    .line 725
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getProviderSettingsHolder()Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->getProviderSettings(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/ProviderSettings;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 729
    :cond_46
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_8b

    .line 733
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyIsLoadBeforeInitCompleted:Ljava/util/concurrent/CopyOnWriteArraySet;

    monitor-enter v1

    .line 734
    :try_start_4f
    new-instance v3, Lcom/ironsource/mediationsdk/DemandOnlyIsManager;

    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/Configurations;->getInterstitialConfigurations()Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;

    move-result-object v4

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getIronSourceAppKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getIronSourceUserId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v0, v4, v5, v6}, Lcom/ironsource/mediationsdk/DemandOnlyIsManager;-><init>(Ljava/util/List;Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyIsManager:Lcom/ironsource/mediationsdk/DemandOnlyIsManager;

    .line 735
    monitor-exit v1
    :try_end_69
    .catchall {:try_start_4f .. :try_end_69} :catchall_88

    .line 737
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyIsLoadBeforeInitCompleted:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_82

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 738
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyIsManager:Lcom/ironsource/mediationsdk/DemandOnlyIsManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4, v2}, Lcom/ironsource/mediationsdk/DemandOnlyIsManager;->loadInterstitialWithAdm(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_6f

    .line 741
    :cond_82
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyIsLoadBeforeInitCompleted:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    goto :goto_b1

    :catchall_88
    move-exception v0

    .line 735
    :try_start_89
    monitor-exit v1
    :try_end_8a
    .catchall {:try_start_89 .. :try_end_8a} :catchall_88

    throw v0

    :cond_8b
    const/4 v0, 0x1

    .line 744
    invoke-static {v2, v2, v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(ZZI)Lorg/json/JSONObject;

    move-result-object v1

    .line 745
    new-array v3, v0, [[Ljava/lang/Object;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "errorCode"

    aput-object v5, v4, v2

    const/16 v5, 0x3f2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    aput-object v4, v3, v2

    invoke-direct {p0, v1, v3}, Lcom/ironsource/mediationsdk/IronSourceObject;->addToDictionary(Lorg/json/JSONObject;[[Ljava/lang/Object;)V

    const v0, 0x1418a

    .line 746
    invoke-direct {p0, v0, v1}, Lcom/ironsource/mediationsdk/IronSourceObject;->sentEventWithISEventManager(ILorg/json/JSONObject;)V

    .line 748
    sget-object v0, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-direct {p0, v0, v2}, Lcom/ironsource/mediationsdk/IronSourceObject;->notifyPublisherAboutInitFailed(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Z)V

    :goto_b1
    return-void
.end method

.method private startDemandOnlyRv()V
    .registers 8

    .line 557
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v2, 0x0

    const-string v3, "Rewarded Video started in demand only mode"

    invoke-virtual {v0, v1, v3, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 559
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 560
    :goto_10
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getProviderOrder()Lcom/ironsource/mediationsdk/model/ProviderOrder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->getRewardedVideoProviderOrder()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_46

    .line 561
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getProviderOrder()Lcom/ironsource/mediationsdk/model/ProviderOrder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->getRewardedVideoProviderOrder()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 563
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_43

    .line 564
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getProviderSettingsHolder()Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->getProviderSettings(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/ProviderSettings;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 568
    :cond_46
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_8b

    .line 572
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyRvLoadBeforeInitCompleted:Ljava/util/concurrent/CopyOnWriteArraySet;

    monitor-enter v1

    .line 573
    :try_start_4f
    new-instance v3, Lcom/ironsource/mediationsdk/DemandOnlyRvManager;

    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v4

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getIronSourceAppKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getIronSourceUserId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v0, v4, v5, v6}, Lcom/ironsource/mediationsdk/DemandOnlyRvManager;-><init>(Ljava/util/List;Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyRvManager:Lcom/ironsource/mediationsdk/DemandOnlyRvManager;

    .line 574
    monitor-exit v1
    :try_end_69
    .catchall {:try_start_4f .. :try_end_69} :catchall_88

    .line 576
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyRvLoadBeforeInitCompleted:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_82

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 578
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyRvManager:Lcom/ironsource/mediationsdk/DemandOnlyRvManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4, v2}, Lcom/ironsource/mediationsdk/DemandOnlyRvManager;->loadRewardedVideoWithAdm(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_6f

    .line 581
    :cond_82
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyRvLoadBeforeInitCompleted:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    goto :goto_90

    :catchall_88
    move-exception v0

    .line 574
    :try_start_89
    monitor-exit v1
    :try_end_8a
    .catchall {:try_start_89 .. :try_end_8a} :catchall_88

    throw v0

    .line 584
    :cond_8b
    sget-object v0, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-direct {p0, v0, v2}, Lcom/ironsource/mediationsdk/IronSourceObject;->notifyPublisherAboutInitFailed(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Z)V

    :goto_90
    return-void
.end method

.method private startInterstitial()V
    .registers 7

    .line 753
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsDemandOnlyIs:Z

    if-eqz v0, :cond_8

    .line 754
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->startDemandOnlyIs()V

    return-void

    .line 758
    :cond_8
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/Configurations;->getInterstitialConfigurations()Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->getInterstitialAuctionSettings()Lcom/ironsource/mediationsdk/utils/AuctionSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->getIsProgrammatic()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsIsProgrammatic:Z

    const v0, 0x14050

    .line 759
    iget-boolean v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsIsProgrammatic:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v3, v1, v2}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(ZZI)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ironsource/mediationsdk/IronSourceObject;->sentEventWithISEventManager(ILorg/json/JSONObject;)V

    .line 761
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsIsProgrammatic:Z

    if-eqz v0, :cond_32

    .line 762
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->startProgrammaticIs()V

    return-void

    .line 766
    :cond_32
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/Configurations;->getInterstitialConfigurations()Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->getInterstitialAdaptersSmartLoadTimeout()I

    move-result v0

    .line 767
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/Configurations;->getInterstitialConfigurations()Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->getISDelayLoadFailure()I

    move-result v1

    .line 768
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialManager:Lcom/ironsource/mediationsdk/InterstitialManager;

    invoke-virtual {v4, v1}, Lcom/ironsource/mediationsdk/InterstitialManager;->setDelayLoadFailureNotificationInSeconds(I)V

    const/4 v1, 0x0

    .line 770
    :goto_54
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getProviderOrder()Lcom/ironsource/mediationsdk/model/ProviderOrder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->getInterstitialProviderOrder()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_a3

    .line 771
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getProviderOrder()Lcom/ironsource/mediationsdk/model/ProviderOrder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->getInterstitialProviderOrder()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 773
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a0

    .line 774
    iget-object v5, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getProviderSettingsHolder()Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->getProviderSettings(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/ProviderSettings;

    move-result-object v4

    if-eqz v4, :cond_a0

    .line 777
    new-instance v5, Lcom/ironsource/mediationsdk/InterstitialSmash;

    invoke-direct {v5, v4, v0}, Lcom/ironsource/mediationsdk/InterstitialSmash;-><init>(Lcom/ironsource/mediationsdk/model/ProviderSettings;I)V

    .line 779
    invoke-direct {p0, v5}, Lcom/ironsource/mediationsdk/IronSourceObject;->validateSmash(Lcom/ironsource/mediationsdk/AbstractSmash;)Z

    move-result v4

    if-eqz v4, :cond_a0

    .line 780
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialManager:Lcom/ironsource/mediationsdk/InterstitialManager;

    invoke-virtual {v5, v4}, Lcom/ironsource/mediationsdk/InterstitialSmash;->setInterstitialManagerListener(Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;)V

    add-int/lit8 v4, v1, 0x1

    .line 782
    invoke-virtual {v5, v4}, Lcom/ironsource/mediationsdk/InterstitialSmash;->setProviderPriority(I)V

    .line 783
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialManager:Lcom/ironsource/mediationsdk/InterstitialManager;

    invoke-virtual {v4, v5}, Lcom/ironsource/mediationsdk/InterstitialManager;->addSmashToArray(Lcom/ironsource/mediationsdk/AbstractSmash;)V

    :cond_a0
    add-int/lit8 v1, v1, 0x1

    goto :goto_54

    .line 789
    :cond_a3
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialManager:Lcom/ironsource/mediationsdk/InterstitialManager;

    iget-object v0, v0, Lcom/ironsource/mediationsdk/InterstitialManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-lez v0, :cond_d9

    .line 790
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/Configurations;->getInterstitialConfigurations()Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->getInterstitialAdaptersSmartLoadAmount()I

    move-result v0

    .line 791
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialManager:Lcom/ironsource/mediationsdk/InterstitialManager;

    invoke-virtual {v1, v0}, Lcom/ironsource/mediationsdk/InterstitialManager;->setSmartLoadAmount(I)V

    .line 793
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialManager:Lcom/ironsource/mediationsdk/InterstitialManager;

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getIronSourceAppKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getUserIdForNetworks()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/mediationsdk/InterstitialManager;->initInterstitial(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsIsLoadBeforeInitCompleted:Z

    if-eqz v0, :cond_fe

    .line 795
    iput-boolean v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsIsLoadBeforeInitCompleted:Z

    .line 796
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialManager:Lcom/ironsource/mediationsdk/InterstitialManager;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/InterstitialManager;->loadInterstitial()V

    goto :goto_fe

    .line 799
    :cond_d9
    invoke-static {v3, v3, v2}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(ZZI)Lorg/json/JSONObject;

    move-result-object v0

    .line 800
    new-array v1, v2, [[Ljava/lang/Object;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "errorCode"

    aput-object v5, v4, v3

    const/16 v5, 0x3f2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    aput-object v4, v1, v3

    invoke-direct {p0, v0, v1}, Lcom/ironsource/mediationsdk/IronSourceObject;->addToDictionary(Lorg/json/JSONObject;[[Ljava/lang/Object;)V

    const v1, 0x1418a

    .line 801
    invoke-direct {p0, v1, v0}, Lcom/ironsource/mediationsdk/IronSourceObject;->sentEventWithISEventManager(ILorg/json/JSONObject;)V

    .line 803
    sget-object v0, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-direct {p0, v0, v3}, Lcom/ironsource/mediationsdk/IronSourceObject;->notifyPublisherAboutInitFailed(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Z)V

    :cond_fe
    :goto_fe
    return-void
.end method

.method private startProgrammaticIs()V
    .registers 11

    .line 681
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v2, 0x0

    const-string v3, "Interstitial started in programmatic mode"

    invoke-virtual {v0, v1, v3, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 683
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 684
    :goto_10
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getProviderOrder()Lcom/ironsource/mediationsdk/model/ProviderOrder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->getInterstitialProviderOrder()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_46

    .line 685
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getProviderOrder()Lcom/ironsource/mediationsdk/model/ProviderOrder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->getInterstitialProviderOrder()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 687
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_43

    .line 688
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getProviderSettingsHolder()Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->getProviderSettings(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/ProviderSettings;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_43
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 692
    :cond_46
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_9e

    .line 693
    new-instance v0, Lcom/ironsource/mediationsdk/ProgIsManager;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/Configurations;->getInterstitialConfigurations()Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;

    move-result-object v6

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getIronSourceAppKey()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getUserIdForNetworks()Ljava/lang/String;

    move-result-object v8

    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/Configurations;->getInterstitialConfigurations()Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->getISDelayLoadFailure()I

    move-result v9

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lcom/ironsource/mediationsdk/ProgIsManager;-><init>(Ljava/util/List;Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mProgIsManager:Lcom/ironsource/mediationsdk/ProgIsManager;

    .line 696
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mShouldTrackNetworkState:Ljava/lang/Boolean;

    if-eqz v0, :cond_92

    .line 697
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mProgIsManager:Lcom/ironsource/mediationsdk/ProgIsManager;

    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mTrackNetworkStateContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v3, v0}, Lcom/ironsource/mediationsdk/ProgIsManager;->shouldTrackNetworkState(Landroid/content/Context;Z)V

    .line 699
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mShouldTrackNetworkState:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_92

    .line 700
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialManager:Lcom/ironsource/mediationsdk/InterstitialManager;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mTrackNetworkStateContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/mediationsdk/InterstitialManager;->shouldTrackNetworkState(Landroid/content/Context;Z)V

    .line 704
    :cond_92
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsIsLoadBeforeInitCompleted:Z

    if-eqz v0, :cond_c4

    .line 705
    iput-boolean v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsIsLoadBeforeInitCompleted:Z

    .line 706
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mProgIsManager:Lcom/ironsource/mediationsdk/ProgIsManager;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/ProgIsManager;->loadInterstitial()V

    goto :goto_c4

    :cond_9e
    const/4 v0, 0x1

    .line 709
    invoke-static {v2, v0, v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(ZZI)Lorg/json/JSONObject;

    move-result-object v1

    .line 710
    new-array v3, v0, [[Ljava/lang/Object;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "errorCode"

    aput-object v5, v4, v2

    const/16 v5, 0x3f2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    aput-object v4, v3, v2

    invoke-direct {p0, v1, v3}, Lcom/ironsource/mediationsdk/IronSourceObject;->addToDictionary(Lorg/json/JSONObject;[[Ljava/lang/Object;)V

    const v0, 0x1418a

    .line 711
    invoke-direct {p0, v0, v1}, Lcom/ironsource/mediationsdk/IronSourceObject;->sentEventWithISEventManager(ILorg/json/JSONObject;)V

    .line 713
    sget-object v0, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-direct {p0, v0, v2}, Lcom/ironsource/mediationsdk/IronSourceObject;->notifyPublisherAboutInitFailed(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Z)V

    :cond_c4
    :goto_c4
    return-void
.end method

.method private startProgrammaticRv()V
    .registers 7

    .line 514
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v2, 0x0

    const-string v3, "Rewarded Video started in programmatic mode"

    invoke-virtual {v0, v1, v3, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 516
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 517
    :goto_10
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getProviderOrder()Lcom/ironsource/mediationsdk/model/ProviderOrder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->getRewardedVideoProviderOrder()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_46

    .line 518
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getProviderOrder()Lcom/ironsource/mediationsdk/model/ProviderOrder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->getRewardedVideoProviderOrder()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 520
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_43

    .line 521
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getProviderSettingsHolder()Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->getProviderSettings(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/ProviderSettings;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 525
    :cond_46
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_b2

    .line 527
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    .line 528
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v1

    .line 529
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v1

    .line 530
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->getRewardedVideoAuctionSettings()Lcom/ironsource/mediationsdk/utils/AuctionSettings;

    move-result-object v1

    .line 531
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->getIsLoadWhileShow()Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 532
    new-instance v1, Lcom/ironsource/mediationsdk/LWSProgRvManager;

    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v3

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getIronSourceAppKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getUserIdForNetworks()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v0, v3, v4, v5}, Lcom/ironsource/mediationsdk/LWSProgRvManager;-><init>(Ljava/util/List;Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mProgRvManager:Lcom/ironsource/mediationsdk/IProgRvManager;

    goto :goto_93

    .line 535
    :cond_7a
    new-instance v1, Lcom/ironsource/mediationsdk/ProgRvManager;

    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v3

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getIronSourceAppKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getUserIdForNetworks()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v0, v3, v4, v5}, Lcom/ironsource/mediationsdk/ProgRvManager;-><init>(Ljava/util/List;Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mProgRvManager:Lcom/ironsource/mediationsdk/IProgRvManager;

    .line 538
    :goto_93
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mShouldTrackNetworkState:Ljava/lang/Boolean;

    if-eqz v0, :cond_da

    .line 539
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mProgRvManager:Lcom/ironsource/mediationsdk/IProgRvManager;

    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mTrackNetworkStateContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {v1, v3, v0}, Lcom/ironsource/mediationsdk/IProgRvManager;->shouldTrackNetworkState(Landroid/content/Context;Z)V

    .line 541
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mShouldTrackNetworkState:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_da

    .line 542
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/RewardedVideoManager;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mTrackNetworkStateContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->shouldTrackNetworkState(Landroid/content/Context;Z)V

    goto :goto_da

    .line 548
    :cond_b2
    iget v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->rvProgrammaticMode:I

    const/4 v1, 0x1

    invoke-static {v2, v1, v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(ZZI)Lorg/json/JSONObject;

    move-result-object v0

    .line 549
    new-array v3, v1, [[Ljava/lang/Object;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "errorCode"

    aput-object v5, v4, v2

    const/16 v5, 0x3f2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    aput-object v4, v3, v2

    invoke-direct {p0, v0, v3}, Lcom/ironsource/mediationsdk/IronSourceObject;->addToDictionary(Lorg/json/JSONObject;[[Ljava/lang/Object;)V

    const v1, 0x13da2

    .line 550
    invoke-direct {p0, v1, v0}, Lcom/ironsource/mediationsdk/IronSourceObject;->sentEventWithRVEventManager(ILorg/json/JSONObject;)V

    .line 552
    sget-object v0, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-direct {p0, v0, v2}, Lcom/ironsource/mediationsdk/IronSourceObject;->notifyPublisherAboutInitFailed(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Z)V

    :cond_da
    :goto_da
    return-void
.end method

.method private startRewardedVideo()V
    .registers 8

    .line 590
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsDemandOnlyRv:Z

    if-eqz v0, :cond_8

    .line 591
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->startDemandOnlyRv()V

    return-void

    .line 595
    :cond_8
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->getRewardedVideoAuctionSettings()Lcom/ironsource/mediationsdk/utils/AuctionSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->getIsProgrammatic()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsRvProgrammatic:Z

    .line 596
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    .line 597
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    .line 598
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v0

    .line 599
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->getRewardedVideoAuctionSettings()Lcom/ironsource/mediationsdk/utils/AuctionSettings;

    move-result-object v0

    .line 600
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->getIsLoadWhileShow()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_34

    const/4 v0, 0x2

    goto :goto_35

    :cond_34
    const/4 v0, 0x1

    :goto_35
    iput v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->rvProgrammaticMode:I

    const v0, 0x13c68

    .line 602
    iget-boolean v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsRvProgrammatic:Z

    iget v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->rvProgrammaticMode:I

    const/4 v5, 0x0

    invoke-static {v5, v3, v4}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(ZZI)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/ironsource/mediationsdk/IronSourceObject;->sentEventWithRVEventManager(ILorg/json/JSONObject;)V

    .line 604
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsRvProgrammatic:Z

    if-eqz v0, :cond_4e

    .line 605
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->startProgrammaticRv()V

    return-void

    .line 609
    :cond_4e
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->getRewardedVideoAdaptersSmartLoadTimeout()I

    move-result v0

    const/4 v3, 0x0

    .line 611
    :goto_5d
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getProviderOrder()Lcom/ironsource/mediationsdk/model/ProviderOrder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->getRewardedVideoProviderOrder()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_ac

    .line 612
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getProviderOrder()Lcom/ironsource/mediationsdk/model/ProviderOrder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->getRewardedVideoProviderOrder()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 614
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_a9

    .line 615
    iget-object v6, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getProviderSettingsHolder()Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->getProviderSettings(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/ProviderSettings;

    move-result-object v4

    if-eqz v4, :cond_a9

    .line 618
    new-instance v6, Lcom/ironsource/mediationsdk/RewardedVideoSmash;

    invoke-direct {v6, v4, v0}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;-><init>(Lcom/ironsource/mediationsdk/model/ProviderSettings;I)V

    .line 620
    invoke-direct {p0, v6}, Lcom/ironsource/mediationsdk/IronSourceObject;->validateSmash(Lcom/ironsource/mediationsdk/AbstractSmash;)Z

    move-result v4

    if-eqz v4, :cond_a9

    .line 621
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/RewardedVideoManager;

    invoke-virtual {v6, v4}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->setRewardedVideoManagerListener(Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;)V

    add-int/lit8 v4, v3, 0x1

    .line 622
    invoke-virtual {v6, v4}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->setProviderPriority(I)V

    .line 623
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/RewardedVideoManager;

    invoke-virtual {v4, v6}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->addSmashToArray(Lcom/ironsource/mediationsdk/AbstractSmash;)V

    :cond_a9
    add-int/lit8 v3, v3, 0x1

    goto :goto_5d

    .line 630
    :cond_ac
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/RewardedVideoManager;

    iget-object v3, v3, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    if-lez v3, :cond_15b

    .line 631
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->getRewardedVideoEventsConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationEvents;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->isUltraEventsEnabled()Z

    move-result v1

    .line 632
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/RewardedVideoManager;

    invoke-virtual {v2, v1}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->setIsUltraEventsEnabled(Z)V

    .line 634
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->getRewardedVideoAdaptersSmartLoadAmount()I

    move-result v1

    .line 635
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/RewardedVideoManager;

    invoke-virtual {v2, v1}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->setSmartLoadAmount(I)V

    .line 637
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->getManualLoadIntervalInSeconds()I

    move-result v1

    .line 638
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/RewardedVideoManager;

    invoke-virtual {v2, v1}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->setManualLoadInterval(I)V

    .line 640
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getRVBackFillProvider()Ljava/lang/String;

    move-result-object v1

    .line 642
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_120

    .line 643
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getProviderSettingsHolder()Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->getProviderSettings(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/ProviderSettings;

    move-result-object v1

    if-eqz v1, :cond_120

    .line 646
    new-instance v2, Lcom/ironsource/mediationsdk/RewardedVideoSmash;

    invoke-direct {v2, v1, v0}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;-><init>(Lcom/ironsource/mediationsdk/model/ProviderSettings;I)V

    .line 648
    invoke-direct {p0, v2}, Lcom/ironsource/mediationsdk/IronSourceObject;->validateSmash(Lcom/ironsource/mediationsdk/AbstractSmash;)Z

    move-result v1

    if-eqz v1, :cond_120

    .line 649
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/RewardedVideoManager;

    invoke-virtual {v2, v1}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->setRewardedVideoManagerListener(Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;)V

    .line 650
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/RewardedVideoManager;

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->setBackfillSmash(Lcom/ironsource/mediationsdk/AbstractSmash;)V

    .line 655
    :cond_120
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getRVPremiumProvider()Ljava/lang/String;

    move-result-object v1

    .line 657
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_14d

    .line 658
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getProviderSettingsHolder()Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->getProviderSettings(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/ProviderSettings;

    move-result-object v1

    if-eqz v1, :cond_14d

    .line 661
    new-instance v2, Lcom/ironsource/mediationsdk/RewardedVideoSmash;

    invoke-direct {v2, v1, v0}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;-><init>(Lcom/ironsource/mediationsdk/model/ProviderSettings;I)V

    .line 663
    invoke-direct {p0, v2}, Lcom/ironsource/mediationsdk/IronSourceObject;->validateSmash(Lcom/ironsource/mediationsdk/AbstractSmash;)Z

    move-result v0

    if-eqz v0, :cond_14d

    .line 664
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/RewardedVideoManager;

    invoke-virtual {v2, v0}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->setRewardedVideoManagerListener(Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;)V

    .line 665
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/RewardedVideoManager;

    invoke-virtual {v0, v2}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->setPremiumSmash(Lcom/ironsource/mediationsdk/AbstractSmash;)V

    .line 670
    :cond_14d
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/RewardedVideoManager;

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getIronSourceAppKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getUserIdForNetworks()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->initRewardedVideo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_181

    .line 672
    :cond_15b
    iget v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->rvProgrammaticMode:I

    invoke-static {v5, v5, v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(ZZI)Lorg/json/JSONObject;

    move-result-object v0

    .line 673
    new-array v3, v2, [[Ljava/lang/Object;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v4, "errorCode"

    aput-object v4, v1, v5

    const/16 v4, 0x3f2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    aput-object v1, v3, v5

    invoke-direct {p0, v0, v3}, Lcom/ironsource/mediationsdk/IronSourceObject;->addToDictionary(Lorg/json/JSONObject;[[Ljava/lang/Object;)V

    const v1, 0x13da2

    .line 674
    invoke-direct {p0, v1, v0}, Lcom/ironsource/mediationsdk/IronSourceObject;->sentEventWithRVEventManager(ILorg/json/JSONObject;)V

    .line 676
    sget-object v0, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-direct {p0, v0, v5}, Lcom/ironsource/mediationsdk/IronSourceObject;->notifyPublisherAboutInitFailed(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Z)V

    :goto_181
    return-void
.end method

.method private validateAge(ILcom/ironsource/mediationsdk/config/ConfigValidationResult;)V
    .registers 7

    const-string v0, "age value should be between 5-120"

    const-string v1, "SupersonicAds"

    const-string v2, "age"

    const/4 v3, 0x5

    if-lt p1, v3, :cond_d

    const/16 v3, 0x78

    if-le p1, v3, :cond_1c

    .line 2424
    :cond_d
    :try_start_d
    invoke-static {v2, v1, v0}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_14
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_14} :catch_15

    goto :goto_1c

    .line 2427
    :catch_15
    invoke-static {v2, v1, v0}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :cond_1c
    :goto_1c
    return-void
.end method

.method private validateAlphanumeric(Ljava/lang/String;)Z
    .registers 3

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return p1

    :cond_4
    const-string v0, "^[a-zA-Z0-9]*$"

    .line 2456
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private validateAppKey(Ljava/lang/String;)Lcom/ironsource/mediationsdk/config/ConfigValidationResult;
    .registers 5

    .line 2380
    new-instance v0, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;

    invoke-direct {v0}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;-><init>()V

    if-eqz p1, :cond_2c

    const/4 v1, 0x5

    const/16 v2, 0xa

    .line 2384
    invoke-direct {p0, p1, v1, v2}, Lcom/ironsource/mediationsdk/IronSourceObject;->validateLength(Ljava/lang/String;II)Z

    move-result v1

    const-string v2, "appKey"

    if-eqz v1, :cond_22

    .line 2385
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/IronSourceObject;->validateAlphanumeric(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_38

    const-string v1, "should contain only english characters and numbers"

    .line 2386
    invoke-static {v2, p1, v1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInvalidCredentialsError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    .line 2388
    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_38

    :cond_22
    const-string v1, "length should be between 5-10 characters"

    .line 2391
    invoke-static {v2, p1, v1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInvalidCredentialsError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    .line 2393
    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_38

    .line 2396
    :cond_2c
    new-instance p1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v1, 0x1fa

    const-string v2, "Init Fail - appKey is missing"

    invoke-direct {p1, v1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    .line 2397
    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :cond_38
    :goto_38
    return-object v0
.end method

.method private validateDynamicUserId(Ljava/lang/String;Lcom/ironsource/mediationsdk/config/ConfigValidationResult;)V
    .registers 5

    const/4 v0, 0x1

    const/16 v1, 0x80

    .line 2443
    invoke-direct {p0, p1, v0, v1}, Lcom/ironsource/mediationsdk/IronSourceObject;->validateLength(Ljava/lang/String;II)Z

    move-result p1

    if-nez p1, :cond_16

    const-string p1, "dynamicUserId"

    const-string v0, "SupersonicAds"

    const-string v1, "dynamicUserId is invalid, should be between 1-128 chars in length."

    .line 2444
    invoke-static {p1, v0, v1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :cond_16
    return-void
.end method

.method private validateGender(Ljava/lang/String;Lcom/ironsource/mediationsdk/config/ConfigValidationResult;)V
    .registers 7

    const-string v0, "gender value should be one of male/female/unknown."

    const-string v1, "SupersonicAds"

    const-string v2, "gender"

    if-eqz p1, :cond_37

    .line 2406
    :try_start_8
    invoke-static {p1}, Lcom/ironsource/environment/StringUtils;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v3, "male"

    .line 2408
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_37

    const-string v3, "female"

    .line 2409
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_37

    const-string v3, "unknown"

    .line 2410
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_37

    .line 2411
    invoke-static {v2, v1, v0}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_2f} :catch_30

    goto :goto_37

    .line 2414
    :catch_30
    invoke-static {v2, v1, v0}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :cond_37
    :goto_37
    return-void
.end method

.method private validateLength(Ljava/lang/String;II)Z
    .registers 5

    if-eqz p1, :cond_10

    .line 2448
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, p2, :cond_10

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-gt p1, p3, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    return p1
.end method

.method private validateSegment(Ljava/lang/String;Lcom/ironsource/mediationsdk/config/ConfigValidationResult;)V
    .registers 7

    const-string v0, "segment value should not exceed 64 characters."

    const-string v1, "SupersonicAds"

    const-string v2, "segment"

    if-eqz p1, :cond_1f

    .line 2434
    :try_start_8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v3, 0x40

    if-le p1, v3, :cond_1f

    .line 2435
    invoke-static {v2, v1, v0}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_17} :catch_18

    goto :goto_1f

    .line 2438
    :catch_18
    invoke-static {v2, v1, v0}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :cond_1f
    :goto_1f
    return-void
.end method

.method private validateSmash(Lcom/ironsource/mediationsdk/AbstractSmash;)Z
    .registers 4

    .line 839
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMaxAdsPerIteration()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_e

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMaxAdsPerSession()I

    move-result p1

    if-lt p1, v1, :cond_e

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method


# virtual methods
.method declared-synchronized addOWAdapter(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    .registers 2

    monitor-enter p0

    .line 945
    :try_start_1
    iput-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mOfferwallAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 946
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public clearRewardedVideoServerParameters()V
    .registers 2

    const/4 v0, 0x0

    .line 1352
    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRvServerParams:Ljava/util/Map;

    return-void
.end method

.method public createBanner(Landroid/app/Activity;Lcom/ironsource/mediationsdk/ISBannerSize;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;
    .registers 7

    .line 2029
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "createBanner()"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    if-nez p1, :cond_18

    .line 2031
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v0, 0x3

    const-string v1, "createBanner() : Activity cannot be null"

    invoke-virtual {p1, p2, v1, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    const/4 p1, 0x0

    return-object p1

    .line 2036
    :cond_18
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->getInstance()Lcom/ironsource/mediationsdk/utils/ContextProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->updateActivity(Landroid/app/Activity;)V

    .line 2038
    new-instance v0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    invoke-direct {v0, p1, p2}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;-><init>(Landroid/app/Activity;Lcom/ironsource/mediationsdk/ISBannerSize;)V

    return-object v0
.end method

.method public destroyBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)V
    .registers 6

    .line 2104
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "destroyBanner()"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 2107
    :try_start_a
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mBannerManager:Lcom/ironsource/mediationsdk/BannerManager;

    if-eqz v0, :cond_1c

    .line 2108
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mBannerManager:Lcom/ironsource/mediationsdk/BannerManager;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/BannerManager;->destroyBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_13} :catch_14

    goto :goto_1c

    :catch_14
    move-exception p1

    .line 2111
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v0, v1, v2, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1c
    :goto_1c
    return-void
.end method

.method public getAdvertiserId(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    const-string v0, ""

    .line 2498
    :try_start_2
    invoke-static {p1}, Lcom/ironsource/environment/DeviceStatus;->getAdvertisingIdInfo(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p1

    .line 2499
    array-length v1, p1

    if-lez v1, :cond_11

    const/4 v1, 0x0

    aget-object v2, p1, v1

    if-eqz v2, :cond_11

    .line 2500
    aget-object p1, p1, v1
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_10} :catch_11

    return-object p1

    :catch_11
    :cond_11
    return-object v0
.end method

.method public declared-synchronized getAge()Ljava/lang/Integer;
    .registers 2

    monitor-enter p0

    .line 1153
    :try_start_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mUserAge:Ljava/lang/Integer;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getAllSettingsForProvider(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashSet;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2729
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    if-nez v0, :cond_a

    .line 2730
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    return-object p1

    .line 2732
    :cond_a
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getProviderSettingsHolder()Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->getProviderSettingsByReflectionName(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object p1

    return-object p1
.end method

.method getCappingMessage(Ljava/lang/String;Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    if-nez p2, :cond_4

    return-object v0

    .line 2705
    :cond_4
    sget-object v1, Lcom/ironsource/mediationsdk/IronSourceObject$1;->$SwitchMap$com$ironsource$mediationsdk$utils$CappingManager$ECappingStatus:[I

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;->ordinal()I

    move-result p2

    aget p2, v1, p2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_16

    const/4 v1, 0x2

    if-eq p2, v1, :cond_16

    const/4 v1, 0x3

    if-eq p2, v1, :cond_16

    return-object v0

    .line 2709
    :cond_16
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "placement "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is capped"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method getConsent()Ljava/lang/Boolean;
    .registers 2

    .line 2781
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mConsent:Ljava/lang/Boolean;

    return-object v0
.end method

.method getCurrentServerResponse()Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;
    .registers 2

    .line 2717
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    return-object v0
.end method

.method declared-synchronized getDynamicUserId()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 1165
    :try_start_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDynamicUserId:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getGender()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 1157
    :try_start_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mUserGender:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getISDemandOnlyBiddingData()Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    const v1, 0x1443d

    .line 2834
    invoke-direct {p0, v1, v0}, Lcom/ironsource/mediationsdk/IronSourceObject;->sentEventWithRVEventManager(ILorg/json/JSONObject;)V

    .line 2835
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->info(Ljava/lang/String;)V

    .line 2837
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    if-nez v1, :cond_1a

    .line 2838
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v2, "bidding data cannot be retrieved, SDK not initialized"

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    goto :goto_82

    .line 2841
    :cond_1a
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getProviderSettingsHolder()Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    move-result-object v1

    const-string v2, "IronSource"

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->getProviderSettings(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/ProviderSettings;

    move-result-object v1

    if-eqz v1, :cond_82

    .line 2843
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 2844
    invoke-static {}, Lcom/ironsource/mediationsdk/AdapterRepository;->getInstance()Lcom/ironsource/mediationsdk/AdapterRepository;

    move-result-object v3

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getApplicationSettings()Lorg/json/JSONObject;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v3, v1, v4, v5}, Lcom/ironsource/mediationsdk/AdapterRepository;->getAdapter(Lcom/ironsource/mediationsdk/model/ProviderSettings;Lorg/json/JSONObject;Z)Lcom/ironsource/mediationsdk/AbstractAdapter;

    move-result-object v1

    if-eqz v1, :cond_3e

    .line 2847
    :try_start_3a
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getPlayerBiddingData()Lorg/json/JSONObject;

    move-result-object v2

    .line 2849
    :cond_3e
    invoke-static {}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->getInstance()Lcom/ironsource/mediationsdk/AuctionDataUtils;

    move-result-object v1

    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/Configurations;->getApplicationConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;->getTokenSettings()Lcom/ironsource/mediationsdk/utils/TokenSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/utils/TokenSettings;->getOptInKeyParamsTokenArray()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->createToken(Lorg/json/JSONObject;Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object v1

    .line 2850
    invoke-static {}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->getInstance()Lcom/ironsource/mediationsdk/AuctionDataUtils;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->encryptToken(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_60} :catch_61

    goto :goto_83

    :catch_61
    move-exception v1

    const v2, 0x1443f

    .line 2853
    invoke-direct {p0, v2, v0}, Lcom/ironsource/mediationsdk/IronSourceObject;->sentEventWithRVEventManager(ILorg/json/JSONObject;)V

    .line 2854
    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "got error during creating the token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    :cond_82
    :goto_82
    move-object v1, v0

    :goto_83
    if-nez v1, :cond_8b

    const v2, 0x1443e

    .line 2860
    invoke-direct {p0, v2, v0}, Lcom/ironsource/mediationsdk/IronSourceObject;->sentEventWithRVEventManager(ILorg/json/JSONObject;)V

    :cond_8b
    return-object v1
.end method

.method public getInterstitialPlacementInfo(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/InterstitialPlacement;
    .registers 7

    .line 2463
    :try_start_0
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInterstitialPlacement(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/InterstitialPlacement;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_36

    if-nez v0, :cond_14

    .line 2466
    :try_start_6
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v3, "Placement is not valid, please make sure you are using the right placements, using the default placement."

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v3, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 2467
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getDefaultInterstitialPlacement()Lcom/ironsource/mediationsdk/model/InterstitialPlacement;

    move-result-object v0

    .line 2470
    :cond_14
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPlacementInfo(placement: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "):"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p1, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_35} :catch_37

    goto :goto_37

    :catch_36
    const/4 v0, 0x0

    :catch_37
    :goto_37
    return-object v0
.end method

.method public declared-synchronized getIronSourceAppKey()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 2372
    :try_start_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mAppKey:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getIronSourceUserId()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 2376
    :try_start_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mUserId:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getMediationSegment()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 1161
    :try_start_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mSegment:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMediationType()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 1173
    :try_start_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mMediationType:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getOfferwallAdapter(Ljava/lang/String;)Lcom/ironsource/mediationsdk/AbstractAdapter;
    .registers 6

    monitor-enter p0

    .line 950
    :try_start_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mOfferwallAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    if-eqz v0, :cond_31

    .line 951
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mOfferwallAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_31

    .line 952
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mOfferwallAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_13} :catch_17
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    monitor-exit p0

    return-object p1

    :catchall_15
    move-exception p1

    goto :goto_34

    :catch_17
    move-exception p1

    .line 956
    :try_start_18
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOfferwallAdapter exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_31
    .catchall {:try_start_18 .. :try_end_31} :catchall_15

    :cond_31
    const/4 p1, 0x0

    .line 958
    monitor-exit p0

    return-object p1

    :goto_34
    monitor-exit p0

    throw p1
.end method

.method public getOfferwallCredits()V
    .registers 5

    .line 1989
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "getOfferwallCredits()"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1992
    :try_start_a
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mOfferwallManager:Lcom/ironsource/mediationsdk/OfferwallManager;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/OfferwallManager;->getOfferwallCredits()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_f} :catch_10

    goto :goto_18

    :catch_10
    move-exception v0

    .line 1994
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v1, v3, v2, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_18
    return-void
.end method

.method public getRewardedVideoPlacementInfo(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/Placement;
    .registers 7

    .line 2481
    :try_start_0
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/IronSourceObject;->getRewardedVideoPlacement(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/Placement;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_36

    if-nez v0, :cond_14

    .line 2484
    :try_start_6
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v3, "Placement is not valid, please make sure you are using the right placements, using the default placement."

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v3, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 2485
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getDefaultRewardedVideoPlacement()Lcom/ironsource/mediationsdk/model/Placement;

    move-result-object v0

    .line 2488
    :cond_14
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPlacementInfo(placement: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "):"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p1, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_35} :catch_37

    goto :goto_37

    :catch_36
    const/4 v0, 0x0

    :catch_37
    :goto_37
    return-object v0
.end method

.method declared-synchronized getRvServerParams()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1169
    :try_start_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRvServerParams:Ljava/util/Map;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getServerResponse(Landroid/content/Context;Ljava/lang/String;Lcom/ironsource/mediationsdk/IronSourceObject$IResponseListener;)Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;
    .registers 8

    .line 2122
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mServerResponseLocker:Ljava/lang/Object;

    monitor-enter v0

    .line 2124
    :try_start_3
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    if-eqz v1, :cond_10

    .line 2125
    new-instance p1, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    iget-object p2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-direct {p1, p2}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;-><init>(Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;)V

    monitor-exit v0

    return-object p1

    .line 2131
    :cond_10
    invoke-direct {p0, p1, p2, p3}, Lcom/ironsource/mediationsdk/IronSourceObject;->connectAndGetServerResponse(Landroid/content/Context;Ljava/lang/String;Lcom/ironsource/mediationsdk/IronSourceObject$IResponseListener;)Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    move-result-object p3

    if-eqz p3, :cond_1c

    .line 2134
    invoke-virtual {p3}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->isValidResponse()Z

    move-result v1

    if-nez v1, :cond_2c

    .line 2135
    :cond_1c
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object p3

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "Null or invalid response. Trying to get cached response"

    const/4 v3, 0x0

    invoke-virtual {p3, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 2137
    invoke-direct {p0, p1, p2}, Lcom/ironsource/mediationsdk/IronSourceObject;->getCachedResponse(Landroid/content/Context;Ljava/lang/String;)Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    move-result-object p3

    :cond_2c
    if-eqz p3, :cond_3c

    .line 2144
    iput-object p3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    .line 2145
    invoke-virtual {p3}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->saveLastResponse(Landroid/content/Context;Ljava/lang/String;)V

    .line 2146
    iget-object p2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-direct {p0, p2, p1}, Lcom/ironsource/mediationsdk/IronSourceObject;->initializeSettingsFromServerResponse(Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;Landroid/content/Context;)V

    .line 2150
    :cond_3c
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->setHasServerResponse(Z)V

    .line 2151
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->setHasServerResponse(Z)V

    .line 2152
    monitor-exit v0

    return-object p3

    :catchall_4d
    move-exception p1

    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_3 .. :try_end_4f} :catchall_4d

    throw p1
.end method

.method public declared-synchronized getSessionId()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 2755
    :try_start_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mSessionId:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public varargs declared-synchronized init(Landroid/app/Activity;Ljava/lang/String;Z[Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V
    .registers 12

    monitor-enter p0

    .line 200
    :try_start_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mAtomicIsFirstInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_14e

    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mAtomicIsFirstInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_14e

    if-eqz p4, :cond_46

    .line 201
    array-length v0, p4

    if-nez v0, :cond_15

    goto :goto_46

    .line 211
    :cond_15
    array-length v0, p4

    const/4 v3, 0x0

    :goto_17
    if-ge v3, v0, :cond_5e

    aget-object v4, p4, v3

    .line 212
    iget-object v5, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mAdUnitsToInitialize:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 213
    iget-object v5, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRequestedAdUnits:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 214
    sget-object v5, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v4, v5}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 215
    iput-boolean v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDidInitInterstitial:Z

    .line 218
    :cond_2f
    sget-object v5, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->BANNER:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v4, v5}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_39

    .line 219
    iput-boolean v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDidInitBanner:Z

    .line 222
    :cond_39
    sget-object v5, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v4, v5}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 223
    iput-boolean v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDidInitRewardedVideo:Z

    :cond_43
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 203
    :cond_46
    :goto_46
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->values()[Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object v0

    array-length v3, v0

    const/4 v4, 0x0

    :goto_4c
    if-ge v4, v3, :cond_58

    aget-object v5, v0, v4

    .line 204
    iget-object v6, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mAdUnitsToInitialize:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_4c

    .line 206
    :cond_58
    iput-boolean v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDidInitRewardedVideo:Z

    .line 207
    iput-boolean v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDidInitInterstitial:Z

    .line 208
    iput-boolean v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDidInitBanner:Z

    .line 228
    :cond_5e
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "init(appKey:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    if-nez p1, :cond_89

    .line 231
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string p3, "Init Fail - provided activity is null"

    const/4 p4, 0x2

    invoke-virtual {p1, p2, p3, p4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_87
    .catchall {:try_start_1 .. :try_end_87} :catchall_160

    .line 232
    monitor-exit p0

    return-void

    .line 236
    :cond_89
    :try_start_89
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->getInstance()Lcom/ironsource/mediationsdk/utils/ContextProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->updateActivity(Landroid/app/Activity;)V

    .line 239
    invoke-static {}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->getInstance()Lcom/ironsource/mediationsdk/AuctionDataUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->setBrowserUserAgent()V

    .line 241
    iput-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mActivity:Landroid/app/Activity;

    .line 242
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/IronSourceObject;->prepareEventManagers(Landroid/app/Activity;)V

    .line 245
    invoke-direct {p0, p2}, Lcom/ironsource/mediationsdk/IronSourceObject;->validateAppKey(Ljava/lang/String;)Lcom/ironsource/mediationsdk/config/ConfigValidationResult;

    move-result-object v0

    .line 246
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->isValid()Z

    move-result v3

    if-eqz v3, :cond_112

    .line 247
    iput-object p2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mAppKey:Ljava/lang/String;

    .line 260
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mShouldSendGetInstanceEvent:Z

    if-eqz v0, :cond_ee

    .line 261
    invoke-static {p3}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(Z)Lorg/json/JSONObject;

    move-result-object p3
    :try_end_b0
    .catchall {:try_start_89 .. :try_end_b0} :catchall_160

    if-eqz p4, :cond_c2

    .line 264
    :try_start_b2
    array-length v0, p4

    const/4 v3, 0x0

    :goto_b4
    if-ge v3, v0, :cond_c2

    aget-object v4, p4, v3

    .line 265
    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    add-int/lit8 v3, v3, 0x1

    goto :goto_b4

    :cond_c2
    const-string v0, "sessionDepth"

    .line 268
    iget v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInitCounter:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInitCounter:I

    invoke-virtual {p3, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 269
    invoke-static {}, Lcom/ironsource/environment/ApplicationContext;->isKotlinLibraryExist()Z

    move-result v0

    if-eqz v0, :cond_de

    const-string v0, "ext1"

    const-string v2, "appLanguage=Kotlin"

    .line 270
    invoke-virtual {p3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_d9
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_d9} :catch_da
    .catchall {:try_start_b2 .. :try_end_d9} :catchall_160

    goto :goto_de

    :catch_da
    move-exception v0

    .line 273
    :try_start_db
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 275
    :cond_de
    :goto_de
    new-instance v0, Lcom/ironsource/eventsmodule/EventData;

    const/16 v2, 0xe

    invoke-direct {v0, v2, p3}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 276
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object p3

    invoke-virtual {p3, v0}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    .line 277
    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mShouldSendGetInstanceEvent:Z

    .line 280
    :cond_ee
    iget-object p3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mAdUnitsToInitialize:Ljava/util/Set;

    sget-object v0, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-interface {p3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_101

    .line 281
    invoke-static {}, Lcom/ironsource/mediationsdk/MediationInitializer;->getInstance()Lcom/ironsource/mediationsdk/MediationInitializer;

    move-result-object p3

    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialManager:Lcom/ironsource/mediationsdk/InterstitialManager;

    invoke-virtual {p3, v0}, Lcom/ironsource/mediationsdk/MediationInitializer;->addMediationInitializationListener(Lcom/ironsource/mediationsdk/MediationInitializer$OnMediationInitializationListener;)V

    .line 284
    :cond_101
    invoke-static {}, Lcom/ironsource/mediationsdk/MediationInitializer;->getInstance()Lcom/ironsource/mediationsdk/MediationInitializer;

    move-result-object p3

    invoke-virtual {p3, p0}, Lcom/ironsource/mediationsdk/MediationInitializer;->addMediationInitializationListener(Lcom/ironsource/mediationsdk/MediationInitializer$OnMediationInitializationListener;)V

    .line 285
    invoke-static {}, Lcom/ironsource/mediationsdk/MediationInitializer;->getInstance()Lcom/ironsource/mediationsdk/MediationInitializer;

    move-result-object p3

    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mUserId:Ljava/lang/String;

    invoke-virtual {p3, p1, p2, v0, p4}, Lcom/ironsource/mediationsdk/MediationInitializer;->init(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V

    goto :goto_15e

    .line 249
    :cond_112
    invoke-static {}, Lcom/ironsource/mediationsdk/MediationInitializer;->getInstance()Lcom/ironsource/mediationsdk/MediationInitializer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/MediationInitializer;->setInitStatusFailed()V

    .line 250
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mAdUnitsToInitialize:Ljava/util/Set;

    sget-object p2, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_128

    .line 251
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-virtual {p1, v1}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onRewardedVideoAvailabilityChanged(Z)V

    .line 252
    :cond_128
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mAdUnitsToInitialize:Ljava/util/Set;

    sget-object p2, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->OFFERWALL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13b

    .line 253
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->getIronSourceError()Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onOfferwallAvailable(ZLcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 255
    :cond_13b
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object p1

    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->getIronSourceError()Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p3

    invoke-virtual {p3}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_14c
    .catchall {:try_start_db .. :try_end_14c} :catchall_160

    .line 257
    monitor-exit p0

    return-void

    :cond_14e
    if-eqz p4, :cond_154

    .line 288
    :try_start_150
    invoke-direct {p0, p3, p4}, Lcom/ironsource/mediationsdk/IronSourceObject;->attachAdUnits(Z[Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V

    goto :goto_15e

    .line 290
    :cond_154
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string p3, "Multiple calls to init without ad units are not allowed"

    const/4 p4, 0x3

    invoke-virtual {p1, p2, p3, p4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_15e
    .catchall {:try_start_150 .. :try_end_15e} :catchall_160

    .line 292
    :goto_15e
    monitor-exit p0

    return-void

    :catchall_160
    move-exception p1

    monitor-exit p0

    throw p1

    return-void
.end method

.method public varargs declared-synchronized initISDemandOnly(Landroid/app/Activity;Ljava/lang/String;[Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V
    .registers 14

    monitor-enter p0

    .line 295
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x3

    if-nez p3, :cond_14

    .line 297
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string p3, "Cannot initialized demand only mode: No ad units selected"

    invoke-virtual {p1, p2, p3, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_d9

    .line 298
    monitor-exit p0

    return-void

    .line 301
    :cond_14
    :try_start_14
    array-length v2, p3

    if-gtz v2, :cond_22

    .line 302
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string p3, "Cannot initialized demand only mode: No ad units selected"

    invoke-virtual {p1, p2, p3, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_20
    .catchall {:try_start_14 .. :try_end_20} :catchall_d9

    .line 303
    monitor-exit p0

    return-void

    .line 307
    :cond_22
    :try_start_22
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->getInstance()Lcom/ironsource/mediationsdk/utils/ContextProvider;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->updateActivity(Landroid/app/Activity;)V

    .line 309
    array-length v2, p3

    const/4 v3, 0x0

    :goto_2b
    const/4 v4, 0x1

    if-ge v3, v2, :cond_c2

    aget-object v5, p3, v3

    .line 310
    sget-object v6, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->BANNER:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v5, v6}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a6

    sget-object v6, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->OFFERWALL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v5, v6}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_41

    goto :goto_a6

    .line 315
    :cond_41
    sget-object v6, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v5, v6}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_73

    .line 316
    iget-boolean v6, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDidInitInterstitial:Z

    if-eqz v6, :cond_66

    .line 317
    iget-object v6, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v7, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " ad unit has already been initialized"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    goto :goto_73

    .line 319
    :cond_66
    iput-boolean v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDidInitInterstitial:Z

    .line 320
    iput-boolean v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsDemandOnlyIs:Z

    .line 321
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_73

    .line 322
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    :cond_73
    :goto_73
    sget-object v6, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v5, v6}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_be

    .line 328
    iget-boolean v6, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDidInitRewardedVideo:Z

    if-eqz v6, :cond_98

    .line 329
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v6, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " ad unit has already been initialized"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v6, v5, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    goto :goto_be

    .line 331
    :cond_98
    iput-boolean v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDidInitRewardedVideo:Z

    .line 332
    iput-boolean v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsDemandOnlyRv:Z

    .line 333
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_be

    .line 334
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_be

    .line 311
    :cond_a6
    :goto_a6
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v6, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " ad unit cannot be initialized in demand only mode"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v6, v5, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    :cond_be
    :goto_be
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2b

    .line 340
    :cond_c2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-lez p3, :cond_d7

    .line 341
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p3

    new-array p3, p3, [Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    .line 342
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    .line 343
    invoke-virtual {p0, p1, p2, v4, p3}, Lcom/ironsource/mediationsdk/IronSourceObject;->init(Landroid/app/Activity;Ljava/lang/String;Z[Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V
    :try_end_d7
    .catchall {:try_start_22 .. :try_end_d7} :catchall_d9

    .line 345
    :cond_d7
    monitor-exit p0

    return-void

    :catchall_d9
    move-exception p1

    monitor-exit p0

    throw p1

    return-void
.end method

.method public initInterstitial(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    return-void
.end method

.method public initOfferwall(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public initRewardedVideo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    return-void
.end method

.method isBannerPlacementCapped(Ljava/lang/String;)Z
    .registers 7

    .line 2586
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    const/4 v1, 0x0

    if-eqz v0, :cond_56

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    if-eqz v0, :cond_56

    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    .line 2587
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/Configurations;->getBannerConfigurations()Lcom/ironsource/mediationsdk/model/BannerConfigurations;

    move-result-object v0

    if-nez v0, :cond_18

    goto :goto_56

    :cond_18
    const/4 v0, 0x0

    .line 2592
    :try_start_19
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/Configurations;->getBannerConfigurations()Lcom/ironsource/mediationsdk/model/BannerConfigurations;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/ironsource/mediationsdk/model/BannerConfigurations;->getBannerPlacement(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/BannerPlacement;

    move-result-object v0

    if-nez v0, :cond_48

    .line 2595
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/Configurations;->getBannerConfigurations()Lcom/ironsource/mediationsdk/model/BannerConfigurations;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/BannerConfigurations;->getDefaultBannerPlacement()Lcom/ironsource/mediationsdk/model/BannerPlacement;

    move-result-object v0

    if-nez v0, :cond_48

    .line 2598
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v3, "Banner default placement was not found"

    const/4 v4, 0x3

    invoke-virtual {p1, v2, v3, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_43} :catch_44

    return v1

    :catch_44
    move-exception p1

    .line 2603
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_48
    if-nez v0, :cond_4b

    return v1

    .line 2610
    :cond_4b
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/BannerPlacement;->getPlacementName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ironsource/mediationsdk/utils/CappingManager;->isBnPlacementCapped(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_56
    :goto_56
    return v1
.end method

.method public declared-synchronized isDemandOnlyInterstitialReady(Ljava/lang/String;)Z
    .registers 3

    monitor-enter p0

    .line 1866
    :try_start_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyIsManager:Lcom/ironsource/mediationsdk/DemandOnlyIsManager;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyIsManager:Lcom/ironsource/mediationsdk/DemandOnlyIsManager;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/DemandOnlyIsManager;->isInterstitialReady(Ljava/lang/String;)Z

    move-result p1
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_12

    if-eqz p1, :cond_f

    const/4 p1, 0x1

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    :goto_10
    monitor-exit p0

    return p1

    :catchall_12
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isDemandOnlyRewardedVideoAvailable(Ljava/lang/String;)Z
    .registers 3

    monitor-enter p0

    .line 1473
    :try_start_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyRvManager:Lcom/ironsource/mediationsdk/DemandOnlyRvManager;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyRvManager:Lcom/ironsource/mediationsdk/DemandOnlyRvManager;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/DemandOnlyRvManager;->isRewardedVideoAvailable(Ljava/lang/String;)Z

    move-result p1
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_12

    if-eqz p1, :cond_f

    const/4 p1, 0x1

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    :goto_10
    monitor-exit p0

    return p1

    :catchall_12
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method isInterstitialPlacementCapped(Ljava/lang/String;)Z
    .registers 6

    .line 2539
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsDemandOnlyIs:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    .line 2543
    :cond_6
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInterstitialCappingStatus(Ljava/lang/String;)Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;

    move-result-object v0

    sget-object v2, Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;->NOT_CAPPED:Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;

    const/4 v3, 0x1

    if-eq v0, v2, :cond_10

    const/4 v1, 0x1

    :cond_10
    if-eqz v1, :cond_36

    .line 2546
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsDemandOnlyIs:Z

    iget-boolean v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsIsProgrammatic:Z

    invoke-static {v0, v2, v3}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(ZZI)Lorg/json/JSONObject;

    move-result-object v0

    :try_start_1a
    const-string v2, "placement"

    .line 2548
    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2550
    iget-boolean p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsIsProgrammatic:Z

    if-eqz p1, :cond_28

    const-string p1, "programmatic"

    .line 2551
    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_28} :catch_28

    .line 2556
    :catch_28
    :cond_28
    new-instance p1, Lcom/ironsource/eventsmodule/EventData;

    const/16 v2, 0x837

    invoke-direct {p1, v2, v0}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 2557
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    :cond_36
    return v1
.end method

.method public isInterstitialReady()Z
    .registers 9

    const-string v0, "isInterstitialReady():"

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1711
    :try_start_4
    iget-boolean v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsDemandOnlyIs:Z

    if-eqz v3, :cond_13

    .line 1712
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v5, "Interstitial was initialized in demand only mode. Use isISDemandOnlyInterstitialReady instead"

    const/4 v6, 0x3

    invoke-virtual {v3, v4, v5, v6}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return v2

    .line 1716
    :cond_13
    iget-boolean v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsIsProgrammatic:Z

    if-eqz v3, :cond_27

    .line 1717
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mProgIsManager:Lcom/ironsource/mediationsdk/ProgIsManager;

    if-eqz v3, :cond_25

    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mProgIsManager:Lcom/ironsource/mediationsdk/ProgIsManager;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/ProgIsManager;->isInterstitialReady()Z

    move-result v3

    if-eqz v3, :cond_25

    :goto_23
    const/4 v3, 0x1

    goto :goto_34

    :cond_25
    const/4 v3, 0x0

    goto :goto_34

    .line 1719
    :cond_27
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialManager:Lcom/ironsource/mediationsdk/InterstitialManager;

    if-eqz v3, :cond_25

    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialManager:Lcom/ironsource/mediationsdk/InterstitialManager;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/InterstitialManager;->isInterstitialReady()Z

    move-result v3
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_31} :catch_67

    if-eqz v3, :cond_25

    goto :goto_23

    .line 1722
    :goto_34
    :try_start_34
    iget-boolean v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsIsProgrammatic:Z

    invoke-static {v2, v4, v1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(ZZI)Lorg/json/JSONObject;

    move-result-object v4

    .line 1723
    new-instance v5, Lcom/ironsource/eventsmodule/EventData;

    if-eqz v3, :cond_41

    const/16 v6, 0x835

    goto :goto_43

    :cond_41
    const/16 v6, 0x836

    :goto_43
    invoke-direct {v5, v6, v4}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 1724
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    .line 1726
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v5, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_63
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_63} :catch_65

    move v2, v3

    goto :goto_89

    :catch_65
    move-exception v4

    goto :goto_6a

    :catch_67
    move-exception v3

    move-object v4, v3

    const/4 v3, 0x0

    .line 1729
    :goto_6a
    iget-object v5, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v6, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v6, v0, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1730
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v3, "isInterstitialReady()"

    invoke-virtual {v0, v1, v3, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_89
    return v2
.end method

.method public isOfferwallAvailable()Z
    .registers 3

    const/4 v0, 0x0

    .line 1977
    :try_start_1
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mOfferwallManager:Lcom/ironsource/mediationsdk/OfferwallManager;

    if-eqz v1, :cond_b

    .line 1978
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mOfferwallManager:Lcom/ironsource/mediationsdk/OfferwallManager;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/OfferwallManager;->isOfferwallAvailable()Z

    move-result v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_b

    :catch_b
    :cond_b
    return v0
.end method

.method public isRewardedVideoAvailable()Z
    .registers 9

    const-string v0, "isRewardedVideoAvailable():"

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1292
    :try_start_4
    iget-boolean v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsDemandOnlyRv:Z

    if-eqz v3, :cond_13

    .line 1293
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v5, "Rewarded Video was initialized in demand only mode. Use isISDemandOnlyRewardedVideoAvailable instead"

    const/4 v6, 0x3

    invoke-virtual {v3, v4, v5, v6}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return v2

    .line 1297
    :cond_13
    iget-boolean v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsRvProgrammatic:Z

    if-eqz v3, :cond_27

    .line 1298
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mProgRvManager:Lcom/ironsource/mediationsdk/IProgRvManager;

    if-eqz v3, :cond_25

    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mProgRvManager:Lcom/ironsource/mediationsdk/IProgRvManager;

    invoke-interface {v3}, Lcom/ironsource/mediationsdk/IProgRvManager;->isRewardedVideoAvailable()Z

    move-result v3

    if-eqz v3, :cond_25

    const/4 v3, 0x1

    goto :goto_2d

    :cond_25
    const/4 v3, 0x0

    goto :goto_2d

    .line 1300
    :cond_27
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/RewardedVideoManager;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->isRewardedVideoAvailable()Z

    move-result v3
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_2d} :catch_78

    .line 1303
    :goto_2d
    :try_start_2d
    invoke-static {v2}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(Z)Lorg/json/JSONObject;

    move-result-object v4

    .line 1305
    iget-boolean v5, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsRvProgrammatic:Z

    if-eqz v5, :cond_4b

    .line 1306
    new-array v5, v1, [[Ljava/lang/Object;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "programmatic"

    aput-object v7, v6, v2

    iget v7, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->rvProgrammaticMode:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    aput-object v6, v5, v2

    invoke-direct {p0, v4, v5}, Lcom/ironsource/mediationsdk/IronSourceObject;->addToDictionary(Lorg/json/JSONObject;[[Ljava/lang/Object;)V

    .line 1309
    :cond_4b
    new-instance v5, Lcom/ironsource/eventsmodule/EventData;

    if-eqz v3, :cond_52

    const/16 v6, 0x44d

    goto :goto_54

    :cond_52
    const/16 v6, 0x44e

    :goto_54
    invoke-direct {v5, v6, v4}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 1310
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    .line 1311
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v5, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_74
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_74} :catch_76

    move v2, v3

    goto :goto_9a

    :catch_76
    move-exception v4

    goto :goto_7b

    :catch_78
    move-exception v3

    move-object v4, v3

    const/4 v3, 0x0

    .line 1314
    :goto_7b
    iget-object v5, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v6, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v6, v0, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1315
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v3, "isRewardedVideoAvailable()"

    invoke-virtual {v0, v1, v3, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_9a
    return v2
.end method

.method isRewardedVideoPlacementCapped(Ljava/lang/String;)Z
    .registers 5

    .line 2565
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/IronSourceObject;->getRewardedVideoCappingStatus(Ljava/lang/String;)Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_17

    .line 2568
    sget-object v2, Lcom/ironsource/mediationsdk/IronSourceObject$1;->$SwitchMap$com$ironsource$mediationsdk$utils$CappingManager$ECappingStatus:[I

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;->ordinal()I

    move-result v0

    aget v0, v2, v0

    if-eq v0, v1, :cond_18

    const/4 v2, 0x2

    if-eq v0, v2, :cond_18

    const/4 v2, 0x3

    if-eq v0, v2, :cond_18

    :cond_17
    const/4 v1, 0x0

    .line 2580
    :cond_18
    invoke-direct {p0, v1, p1}, Lcom/ironsource/mediationsdk/IronSourceObject;->sendIsCappedEvent(ZLjava/lang/String;)V

    return v1
.end method

.method public loadBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)V
    .registers 3

    const-string v0, ""

    .line 2100
    invoke-virtual {p0, p1, v0}, Lcom/ironsource/mediationsdk/IronSourceObject;->loadBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Ljava/lang/String;)V

    return-void
.end method

.method public loadBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Ljava/lang/String;)V
    .registers 8

    .line 2042
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadBanner("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    if-nez p1, :cond_2e

    .line 2045
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v0, "loadBanner can\'t be called with a null parameter"

    invoke-virtual {p1, p2, v0, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void

    .line 2049
    :cond_2e
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDidInitBanner:Z

    const/4 v1, 0x3

    if-nez v0, :cond_3d

    .line 2050
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v0, "init() must be called before loadBanner()"

    invoke-virtual {p1, p2, v0, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void

    .line 2054
    :cond_3d
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->getSize()Lcom/ironsource/mediationsdk/ISBannerSize;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/ISBannerSize;->getDescription()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CUSTOM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_78

    .line 2055
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->getSize()Lcom/ironsource/mediationsdk/ISBannerSize;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/ISBannerSize;->getWidth()I

    move-result v0

    if-lez v0, :cond_61

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->getSize()Lcom/ironsource/mediationsdk/ISBannerSize;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/ISBannerSize;->getHeight()I

    move-result v0

    if-gtz v0, :cond_78

    .line 2056
    :cond_61
    iget-object p2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "loadBanner: Unsupported banner size. Height and width must be bigger than 0"

    invoke-virtual {p2, v0, v2, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 2057
    invoke-static {}, Lcom/ironsource/mediationsdk/BannerCallbackThrottler;->getInstance()Lcom/ironsource/mediationsdk/BannerCallbackThrottler;

    move-result-object p2

    const-string v0, ""

    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->unsupportedBannerSize(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/ironsource/mediationsdk/BannerCallbackThrottler;->sendBannerAdLoadFailed(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    .line 2062
    :cond_78
    invoke-static {}, Lcom/ironsource/mediationsdk/MediationInitializer;->getInstance()Lcom/ironsource/mediationsdk/MediationInitializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/MediationInitializer;->getCurrentInitStatus()Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    move-result-object v0

    .line 2064
    sget-object v2, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;->INIT_FAILED:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    if-ne v0, v2, :cond_9e

    .line 2065
    iget-object p2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "init() had failed"

    invoke-virtual {p2, v0, v2, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 2066
    invoke-static {}, Lcom/ironsource/mediationsdk/BannerCallbackThrottler;->getInstance()Lcom/ironsource/mediationsdk/BannerCallbackThrottler;

    move-result-object p2

    new-instance v0, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v1, 0x258

    const-string v2, "Init() had failed"

    invoke-direct {v0, v1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, p1, v0}, Lcom/ironsource/mediationsdk/BannerCallbackThrottler;->sendBannerAdLoadFailed(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    .line 2070
    :cond_9e
    sget-object v2, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;->INIT_IN_PROGRESS:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    if-ne v0, v2, :cond_cd

    .line 2071
    invoke-static {}, Lcom/ironsource/mediationsdk/MediationInitializer;->getInstance()Lcom/ironsource/mediationsdk/MediationInitializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/MediationInitializer;->isInProgressMoreThan15Secs()Z

    move-result v0

    if-eqz v0, :cond_c6

    .line 2072
    iget-object p2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "init() had failed"

    invoke-virtual {p2, v0, v2, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 2073
    invoke-static {}, Lcom/ironsource/mediationsdk/BannerCallbackThrottler;->getInstance()Lcom/ironsource/mediationsdk/BannerCallbackThrottler;

    move-result-object p2

    new-instance v0, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v1, 0x259

    const-string v2, "Init had failed"

    invoke-direct {v0, v1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, p1, v0}, Lcom/ironsource/mediationsdk/BannerCallbackThrottler;->sendBannerAdLoadFailed(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_cc

    .line 2075
    :cond_c6
    iput-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mBnLayoutToLoad:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    .line 2076
    iput-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsBnLoadBeforeInitCompleted:Ljava/lang/Boolean;

    .line 2077
    iput-object p2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mBnPlacementToLoad:Ljava/lang/String;

    :goto_cc
    return-void

    .line 2083
    :cond_cd
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsBnLoadBeforeInitCompleted:Ljava/lang/Boolean;

    monitor-enter v0

    .line 2084
    :try_start_d0
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mBannerManager:Lcom/ironsource/mediationsdk/BannerManager;

    if-nez v2, :cond_d8

    .line 2085
    iput-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsBnLoadBeforeInitCompleted:Ljava/lang/Boolean;

    .line 2086
    monitor-exit v0

    return-void

    .line 2088
    :cond_d8
    monitor-exit v0
    :try_end_d9
    .catchall {:try_start_d0 .. :try_end_d9} :catchall_114

    .line 2090
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    if-eqz v0, :cond_fa

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    if-eqz v0, :cond_fa

    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/Configurations;->getBannerConfigurations()Lcom/ironsource/mediationsdk/model/BannerConfigurations;

    move-result-object v0

    if-nez v0, :cond_f0

    goto :goto_fa

    .line 2096
    :cond_f0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mBannerManager:Lcom/ironsource/mediationsdk/BannerManager;

    invoke-direct {p0, p2}, Lcom/ironsource/mediationsdk/IronSourceObject;->getBannerPlacement(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/BannerPlacement;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/ironsource/mediationsdk/BannerManager;->loadBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lcom/ironsource/mediationsdk/model/BannerPlacement;)V

    return-void

    .line 2091
    :cond_fa
    :goto_fa
    iget-object p2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "No banner configurations found"

    invoke-virtual {p2, v0, v2, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 2092
    invoke-static {}, Lcom/ironsource/mediationsdk/BannerCallbackThrottler;->getInstance()Lcom/ironsource/mediationsdk/BannerCallbackThrottler;

    move-result-object p2

    new-instance v0, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v1, 0x267

    const-string v2, "No banner configurations found"

    invoke-direct {v0, v1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, p1, v0}, Lcom/ironsource/mediationsdk/BannerCallbackThrottler;->sendBannerAdLoadFailed(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    :catchall_114
    move-exception p1

    .line 2088
    :try_start_115
    monitor-exit v0
    :try_end_116
    .catchall {:try_start_115 .. :try_end_116} :catchall_114

    throw p1
.end method

.method public declared-synchronized loadDemandOnlyInterstitial(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    monitor-enter p0

    .line 1767
    :try_start_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadISDemandOnlyInterstitial() instanceId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_135

    const/16 v0, 0x1fe

    .line 1770
    :try_start_1c
    iget-boolean v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDidInitInterstitial:Z

    const/4 v2, 0x3

    if-nez v1, :cond_38

    const-string p2, "initISDemandOnly() must be called before loadISDemandOnlyInterstitial()"

    .line 1772
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v1, v3, p2, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1773
    invoke-static {}, Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;

    move-result-object v1

    new-instance v2, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-direct {v2, v0, p2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, p1, v2}, Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;->onInterstitialAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_36} :catch_119
    .catchall {:try_start_1c .. :try_end_36} :catchall_135

    .line 1774
    monitor-exit p0

    return-void

    .line 1777
    :cond_38
    :try_start_38
    iget-boolean v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsDemandOnlyIs:Z

    if-nez v1, :cond_53

    const-string p2, "Interstitial was initialized in mediation mode. Use loadInterstitial instead"

    .line 1779
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v1, v3, p2, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1780
    invoke-static {}, Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;

    move-result-object v1

    new-instance v2, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-direct {v2, v0, p2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, p1, v2}, Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;->onInterstitialAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_51} :catch_119
    .catchall {:try_start_38 .. :try_end_51} :catchall_135

    .line 1781
    monitor-exit p0

    return-void

    .line 1784
    :cond_53
    :try_start_53
    invoke-static {}, Lcom/ironsource/mediationsdk/MediationInitializer;->getInstance()Lcom/ironsource/mediationsdk/MediationInitializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/MediationInitializer;->getCurrentInitStatus()Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    move-result-object v1

    .line 1786
    sget-object v4, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;->INIT_FAILED:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    if-ne v1, v4, :cond_79

    .line 1787
    iget-object p2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v3, "init() had failed"

    invoke-virtual {p2, v1, v3, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1788
    invoke-static {}, Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;

    move-result-object p2

    const-string v1, "init() had failed"

    const-string v2, "Interstitial"

    invoke-static {v1, v2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v1

    invoke-virtual {p2, p1, v1}, Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;->onInterstitialAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_77
    .catch Ljava/lang/Throwable; {:try_start_53 .. :try_end_77} :catch_119
    .catchall {:try_start_53 .. :try_end_77} :catchall_135

    .line 1789
    monitor-exit p0

    return-void

    .line 1792
    :cond_79
    :try_start_79
    sget-object v4, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;->INIT_IN_PROGRESS:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    const v5, 0x14439

    if-ne v1, v4, :cond_ba

    .line 1793
    invoke-static {}, Lcom/ironsource/mediationsdk/MediationInitializer;->getInstance()Lcom/ironsource/mediationsdk/MediationInitializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/MediationInitializer;->isInProgressMoreThan15Secs()Z

    move-result v1

    if-eqz v1, :cond_a3

    .line 1794
    iget-object p2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v3, "init() had failed"

    invoke-virtual {p2, v1, v3, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1795
    invoke-static {}, Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;

    move-result-object p2

    const-string v1, "init() had failed"

    const-string v2, "Interstitial"

    invoke-static {v1, v2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v1

    invoke-virtual {p2, p1, v1}, Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;->onInterstitialAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_b5

    .line 1797
    :cond_a3
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyIsLoadBeforeInitCompleted:Ljava/util/concurrent/CopyOnWriteArraySet;

    monitor-enter v1
    :try_end_a6
    .catch Ljava/lang/Throwable; {:try_start_79 .. :try_end_a6} :catch_119
    .catchall {:try_start_79 .. :try_end_a6} :catchall_135

    .line 1798
    :try_start_a6
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyIsLoadBeforeInitCompleted:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 1799
    monitor-exit v1
    :try_end_ac
    .catchall {:try_start_a6 .. :try_end_ac} :catchall_b7

    if-eqz p2, :cond_b5

    .line 1802
    :try_start_ae
    invoke-static {v3, v3, v3}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(ZZI)Lorg/json/JSONObject;

    move-result-object p2

    .line 1803
    invoke-direct {p0, v5, p2}, Lcom/ironsource/mediationsdk/IronSourceObject;->sentEventWithISEventManager(ILorg/json/JSONObject;)V
    :try_end_b5
    .catch Ljava/lang/Throwable; {:try_start_ae .. :try_end_b5} :catch_119
    .catchall {:try_start_ae .. :try_end_b5} :catchall_135

    .line 1806
    :cond_b5
    :goto_b5
    monitor-exit p0

    return-void

    :catchall_b7
    move-exception p2

    .line 1799
    :try_start_b8
    monitor-exit v1
    :try_end_b9
    .catchall {:try_start_b8 .. :try_end_b9} :catchall_b7

    :try_start_b9
    throw p2

    .line 1810
    :cond_ba
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyIsLoadBeforeInitCompleted:Ljava/util/concurrent/CopyOnWriteArraySet;

    monitor-enter v1
    :try_end_bd
    .catch Ljava/lang/Throwable; {:try_start_b9 .. :try_end_bd} :catch_119
    .catchall {:try_start_b9 .. :try_end_bd} :catchall_135

    .line 1811
    :try_start_bd
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyIsManager:Lcom/ironsource/mediationsdk/DemandOnlyIsManager;

    if-nez v4, :cond_d2

    .line 1813
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyIsLoadBeforeInitCompleted:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_cf

    .line 1815
    invoke-static {v3, v3, v3}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(ZZI)Lorg/json/JSONObject;

    move-result-object p2

    .line 1816
    invoke-direct {p0, v5, p2}, Lcom/ironsource/mediationsdk/IronSourceObject;->sentEventWithISEventManager(ILorg/json/JSONObject;)V

    .line 1818
    :cond_cf
    monitor-exit v1
    :try_end_d0
    .catchall {:try_start_bd .. :try_end_d0} :catchall_116

    monitor-exit p0

    return-void

    .line 1820
    :cond_d2
    :try_start_d2
    monitor-exit v1
    :try_end_d3
    .catchall {:try_start_d2 .. :try_end_d3} :catchall_116

    .line 1822
    :try_start_d3
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    if-eqz v1, :cond_fc

    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v1

    if-eqz v1, :cond_fc

    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/Configurations;->getInterstitialConfigurations()Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;

    move-result-object v1

    if-nez v1, :cond_ec

    goto :goto_fc

    :cond_ec
    if-nez p2, :cond_f6

    .line 1829
    iget-object p2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyIsManager:Lcom/ironsource/mediationsdk/DemandOnlyIsManager;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p2, p1, v1, v2}, Lcom/ironsource/mediationsdk/DemandOnlyIsManager;->loadInterstitialWithAdm(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_133

    .line 1833
    :cond_f6
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyIsManager:Lcom/ironsource/mediationsdk/DemandOnlyIsManager;

    invoke-virtual {v1, p1, p2, v3}, Lcom/ironsource/mediationsdk/DemandOnlyIsManager;->loadInterstitialWithAdm(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_133

    .line 1823
    :cond_fc
    :goto_fc
    iget-object p2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v3, "No interstitial configurations found"

    invoke-virtual {p2, v1, v3, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1824
    invoke-static {}, Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;

    move-result-object p2

    const-string v1, "the server response does not contain interstitial data"

    const-string v2, "Interstitial"

    invoke-static {v1, v2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v1

    invoke-virtual {p2, p1, v1}, Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;->onInterstitialAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_114
    .catch Ljava/lang/Throwable; {:try_start_d3 .. :try_end_114} :catch_119
    .catchall {:try_start_d3 .. :try_end_114} :catchall_135

    .line 1825
    monitor-exit p0

    return-void

    :catchall_116
    move-exception p2

    .line 1820
    :try_start_117
    monitor-exit v1
    :try_end_118
    .catchall {:try_start_117 .. :try_end_118} :catchall_116

    :try_start_118
    throw p2
    :try_end_119
    .catch Ljava/lang/Throwable; {:try_start_118 .. :try_end_119} :catch_119
    .catchall {:try_start_118 .. :try_end_119} :catchall_135

    :catch_119
    move-exception p2

    .line 1837
    :try_start_11a
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v3, "loadDemandOnlyInterstitial"

    invoke-virtual {v1, v2, v3, p2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1838
    invoke-static {}, Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;

    move-result-object v1

    new-instance v2, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v2, v0, p2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, p1, v2}, Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;->onInterstitialAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_133
    .catchall {:try_start_11a .. :try_end_133} :catchall_135

    .line 1840
    :goto_133
    monitor-exit p0

    return-void

    :catchall_135
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized loadISDemandOnlyInterstitialWithAdm(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    monitor-enter p0

    if-nez p2, :cond_1d

    :try_start_3
    const-string p2, "adm cannot be null"

    .line 1754
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, p2, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1755
    invoke-static {}, Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;

    move-result-object v0

    new-instance v1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v2, 0x1fe

    invoke-direct {v1, v2, p2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;->onInterstitialAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_22

    .line 1756
    monitor-exit p0

    return-void

    .line 1758
    :cond_1d
    :try_start_1d
    invoke-virtual {p0, p1, p2}, Lcom/ironsource/mediationsdk/IronSourceObject;->loadDemandOnlyInterstitial(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_22

    .line 1759
    monitor-exit p0

    return-void

    :catchall_22
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized loadISDemandOnlyRewardedVideo(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    monitor-enter p0

    .line 1373
    :try_start_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadISDemandOnlyRewardedVideo() instanceId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_13b

    .line 1376
    :try_start_1a
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDidInitRewardedVideo:Z

    const/16 v1, 0x1fc

    const/4 v2, 0x3

    if-nez v0, :cond_38

    const-string p2, "initISDemandOnly() must be called before loadISDemandOnlyRewardedVideo()"

    .line 1378
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v0, v3, p2, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1379
    invoke-static {}, Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;

    move-result-object v0

    new-instance v2, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-direct {v2, v1, p2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, p1, v2}, Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;->onRewardedVideoAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_36} :catch_11d
    .catchall {:try_start_1a .. :try_end_36} :catchall_13b

    .line 1380
    monitor-exit p0

    return-void

    .line 1383
    :cond_38
    :try_start_38
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsDemandOnlyRv:Z

    if-nez v0, :cond_53

    const-string p2, "Rewarded video was initialized in mediation mode"

    .line 1385
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v0, v3, p2, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1386
    invoke-static {}, Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;

    move-result-object v0

    new-instance v2, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-direct {v2, v1, p2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, p1, v2}, Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;->onRewardedVideoAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_51} :catch_11d
    .catchall {:try_start_38 .. :try_end_51} :catchall_13b

    .line 1387
    monitor-exit p0

    return-void

    .line 1390
    :cond_53
    :try_start_53
    invoke-static {}, Lcom/ironsource/mediationsdk/MediationInitializer;->getInstance()Lcom/ironsource/mediationsdk/MediationInitializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/MediationInitializer;->getCurrentInitStatus()Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    move-result-object v0

    .line 1392
    sget-object v1, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;->INIT_FAILED:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    if-ne v0, v1, :cond_79

    .line 1393
    iget-object p2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v1, "init() had failed"

    invoke-virtual {p2, v0, v1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1394
    invoke-static {}, Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;

    move-result-object p2

    const-string v0, "init() had failed"

    const-string v1, "Rewarded Video"

    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;->onRewardedVideoAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_77
    .catch Ljava/lang/Throwable; {:try_start_53 .. :try_end_77} :catch_11d
    .catchall {:try_start_53 .. :try_end_77} :catchall_13b

    .line 1395
    monitor-exit p0

    return-void

    .line 1398
    :cond_79
    :try_start_79
    sget-object v1, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;->INIT_IN_PROGRESS:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    const v4, 0x14438

    if-ne v0, v1, :cond_bc

    .line 1399
    invoke-static {}, Lcom/ironsource/mediationsdk/MediationInitializer;->getInstance()Lcom/ironsource/mediationsdk/MediationInitializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/MediationInitializer;->isInProgressMoreThan15Secs()Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 1400
    iget-object p2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v1, "init() had failed"

    invoke-virtual {p2, v0, v1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1401
    invoke-static {}, Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;

    move-result-object p2

    const-string v0, "init() had failed"

    const-string v1, "Rewarded Video"

    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;->onRewardedVideoAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_b7

    .line 1403
    :cond_a3
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyRvLoadBeforeInitCompleted:Ljava/util/concurrent/CopyOnWriteArraySet;

    monitor-enter v0
    :try_end_a6
    .catch Ljava/lang/Throwable; {:try_start_79 .. :try_end_a6} :catch_11d
    .catchall {:try_start_79 .. :try_end_a6} :catchall_13b

    .line 1404
    :try_start_a6
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyRvLoadBeforeInitCompleted:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 1405
    monitor-exit v0
    :try_end_ac
    .catchall {:try_start_a6 .. :try_end_ac} :catchall_b9

    if-eqz p2, :cond_b7

    .line 1408
    :try_start_ae
    iget p2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->rvProgrammaticMode:I

    invoke-static {v3, v3, p2}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(ZZI)Lorg/json/JSONObject;

    move-result-object p2

    .line 1409
    invoke-direct {p0, v4, p2}, Lcom/ironsource/mediationsdk/IronSourceObject;->sentEventWithISEventManager(ILorg/json/JSONObject;)V
    :try_end_b7
    .catch Ljava/lang/Throwable; {:try_start_ae .. :try_end_b7} :catch_11d
    .catchall {:try_start_ae .. :try_end_b7} :catchall_13b

    .line 1412
    :cond_b7
    :goto_b7
    monitor-exit p0

    return-void

    :catchall_b9
    move-exception p2

    .line 1405
    :try_start_ba
    monitor-exit v0
    :try_end_bb
    .catchall {:try_start_ba .. :try_end_bb} :catchall_b9

    :try_start_bb
    throw p2

    .line 1416
    :cond_bc
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyRvLoadBeforeInitCompleted:Ljava/util/concurrent/CopyOnWriteArraySet;

    monitor-enter v0
    :try_end_bf
    .catch Ljava/lang/Throwable; {:try_start_bb .. :try_end_bf} :catch_11d
    .catchall {:try_start_bb .. :try_end_bf} :catchall_13b

    .line 1417
    :try_start_bf
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyRvManager:Lcom/ironsource/mediationsdk/DemandOnlyRvManager;

    if-nez v1, :cond_d6

    .line 1419
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyRvLoadBeforeInitCompleted:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_d3

    .line 1421
    iget p2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->rvProgrammaticMode:I

    invoke-static {v3, v3, p2}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(ZZI)Lorg/json/JSONObject;

    move-result-object p2

    .line 1422
    invoke-direct {p0, v4, p2}, Lcom/ironsource/mediationsdk/IronSourceObject;->sentEventWithISEventManager(ILorg/json/JSONObject;)V

    .line 1424
    :cond_d3
    monitor-exit v0
    :try_end_d4
    .catchall {:try_start_bf .. :try_end_d4} :catchall_11a

    monitor-exit p0

    return-void

    .line 1426
    :cond_d6
    :try_start_d6
    monitor-exit v0
    :try_end_d7
    .catchall {:try_start_d6 .. :try_end_d7} :catchall_11a

    .line 1428
    :try_start_d7
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    if-eqz v0, :cond_100

    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    if-eqz v0, :cond_100

    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v0

    if-nez v0, :cond_f0

    goto :goto_100

    :cond_f0
    if-nez p2, :cond_fa

    .line 1434
    iget-object p2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyRvManager:Lcom/ironsource/mediationsdk/DemandOnlyRvManager;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v0, v1}, Lcom/ironsource/mediationsdk/DemandOnlyRvManager;->loadRewardedVideoWithAdm(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_139

    .line 1437
    :cond_fa
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyRvManager:Lcom/ironsource/mediationsdk/DemandOnlyRvManager;

    invoke-virtual {v0, p1, p2, v3}, Lcom/ironsource/mediationsdk/DemandOnlyRvManager;->loadRewardedVideoWithAdm(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_139

    .line 1429
    :cond_100
    :goto_100
    iget-object p2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v1, "No rewarded video configurations found"

    invoke-virtual {p2, v0, v1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1430
    invoke-static {}, Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;

    move-result-object p2

    const-string v0, "the server response does not contain rewarded video data"

    const-string v1, "Rewarded Video"

    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;->onRewardedVideoAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_118
    .catch Ljava/lang/Throwable; {:try_start_d7 .. :try_end_118} :catch_11d
    .catchall {:try_start_d7 .. :try_end_118} :catchall_13b

    .line 1431
    monitor-exit p0

    return-void

    :catchall_11a
    move-exception p2

    .line 1426
    :try_start_11b
    monitor-exit v0
    :try_end_11c
    .catchall {:try_start_11b .. :try_end_11c} :catchall_11a

    :try_start_11c
    throw p2
    :try_end_11d
    .catch Ljava/lang/Throwable; {:try_start_11c .. :try_end_11d} :catch_11d
    .catchall {:try_start_11c .. :try_end_11d} :catchall_13b

    :catch_11d
    move-exception p2

    .line 1442
    :try_start_11e
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "loadISDemandOnlyRewardedVideo"

    invoke-virtual {v0, v1, v2, p2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1443
    invoke-static {}, Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;

    move-result-object v0

    new-instance v1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v2, 0x1fe

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, v2, p2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;->onRewardedVideoAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_139
    .catchall {:try_start_11e .. :try_end_139} :catchall_13b

    .line 1445
    :goto_139
    monitor-exit p0

    return-void

    :catchall_13b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized loadISDemandOnlyRewardedVideoWithAdm(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    monitor-enter p0

    if-nez p2, :cond_1d

    :try_start_3
    const-string p2, "adm cannot be null"

    .line 1360
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, p2, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1361
    invoke-static {}, Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;

    move-result-object v0

    new-instance v1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v2, 0x1fe

    invoke-direct {v1, v2, p2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;->onRewardedVideoAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_22

    .line 1362
    monitor-exit p0

    return-void

    .line 1364
    :cond_1d
    :try_start_1d
    invoke-virtual {p0, p1, p2}, Lcom/ironsource/mediationsdk/IronSourceObject;->loadISDemandOnlyRewardedVideo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_22

    .line 1365
    monitor-exit p0

    return-void

    :catchall_22
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public loadInterstitial()V
    .registers 8

    .line 1519
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v2, 0x1

    const-string v3, "loadInterstitial()"

    invoke-virtual {v0, v1, v3, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1522
    :try_start_a
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsDemandOnlyIs:Z
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_c} :catch_cb

    const-string v1, "Interstitial"

    const/4 v4, 0x3

    if-eqz v0, :cond_26

    :try_start_11
    const-string v0, "Interstitial was initialized in demand only mode. Use loadISDemandOnlyInterstitial instead"

    .line 1524
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v5, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v2, v5, v0, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1525
    invoke-static {}, Lcom/ironsource/mediationsdk/CallbackThrottler;->getInstance()Lcom/ironsource/mediationsdk/CallbackThrottler;

    move-result-object v2

    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/ironsource/mediationsdk/CallbackThrottler;->onInterstitialAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    .line 1529
    :cond_26
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDidInitInterstitial:Z

    if-nez v0, :cond_3f

    const-string v0, "init() must be called before loadInterstitial()"

    .line 1531
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v5, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v2, v5, v0, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1532
    invoke-static {}, Lcom/ironsource/mediationsdk/CallbackThrottler;->getInstance()Lcom/ironsource/mediationsdk/CallbackThrottler;

    move-result-object v2

    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/ironsource/mediationsdk/CallbackThrottler;->onInterstitialAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    .line 1536
    :cond_3f
    invoke-static {}, Lcom/ironsource/mediationsdk/MediationInitializer;->getInstance()Lcom/ironsource/mediationsdk/MediationInitializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/MediationInitializer;->getCurrentInitStatus()Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    move-result-object v0

    .line 1538
    sget-object v5, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;->INIT_FAILED:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_49} :catch_cb

    const-string v6, "init() had failed"

    if-ne v0, v5, :cond_60

    .line 1539
    :try_start_4d
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v0, v2, v6, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1540
    invoke-static {}, Lcom/ironsource/mediationsdk/CallbackThrottler;->getInstance()Lcom/ironsource/mediationsdk/CallbackThrottler;

    move-result-object v0

    invoke-static {v6, v1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/CallbackThrottler;->onInterstitialAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    .line 1544
    :cond_60
    sget-object v5, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;->INIT_IN_PROGRESS:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    if-ne v0, v5, :cond_84

    .line 1545
    invoke-static {}, Lcom/ironsource/mediationsdk/MediationInitializer;->getInstance()Lcom/ironsource/mediationsdk/MediationInitializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/MediationInitializer;->isInProgressMoreThan15Secs()Z

    move-result v0

    if-eqz v0, :cond_81

    .line 1546
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v0, v2, v6, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1547
    invoke-static {}, Lcom/ironsource/mediationsdk/CallbackThrottler;->getInstance()Lcom/ironsource/mediationsdk/CallbackThrottler;

    move-result-object v0

    invoke-static {v6, v1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/CallbackThrottler;->onInterstitialAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_83

    .line 1549
    :cond_81
    iput-boolean v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsIsLoadBeforeInitCompleted:Z

    :goto_83
    return-void

    .line 1555
    :cond_84
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    if-eqz v0, :cond_b4

    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    if-eqz v0, :cond_b4

    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/Configurations;->getInterstitialConfigurations()Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;

    move-result-object v0

    if-nez v0, :cond_9d

    goto :goto_b4

    .line 1561
    :cond_9d
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsIsProgrammatic:Z

    if-nez v0, :cond_a7

    .line 1562
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialManager:Lcom/ironsource/mediationsdk/InterstitialManager;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/InterstitialManager;->loadInterstitial()V

    return-void

    .line 1566
    :cond_a7
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mProgIsManager:Lcom/ironsource/mediationsdk/ProgIsManager;

    if-nez v0, :cond_ae

    .line 1570
    iput-boolean v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsIsLoadBeforeInitCompleted:Z

    goto :goto_e5

    .line 1572
    :cond_ae
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mProgIsManager:Lcom/ironsource/mediationsdk/ProgIsManager;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/ProgIsManager;->loadInterstitial()V

    goto :goto_e5

    .line 1556
    :cond_b4
    :goto_b4
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v5, "No interstitial configurations found"

    invoke-virtual {v0, v2, v5, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1557
    invoke-static {}, Lcom/ironsource/mediationsdk/CallbackThrottler;->getInstance()Lcom/ironsource/mediationsdk/CallbackThrottler;

    move-result-object v0

    const-string v2, "the server response does not contain interstitial data"

    invoke-static {v2, v1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/CallbackThrottler;->onInterstitialAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_ca
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_ca} :catch_cb

    return-void

    :catch_cb
    move-exception v0

    .line 1576
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v1, v2, v3, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1577
    invoke-static {}, Lcom/ironsource/mediationsdk/CallbackThrottler;->getInstance()Lcom/ironsource/mediationsdk/CallbackThrottler;

    move-result-object v1

    new-instance v2, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v3, 0x1fe

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/CallbackThrottler;->onInterstitialAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :goto_e5
    return-void
.end method

.method public onInitFailed(Ljava/lang/String;)V
    .registers 6

    .line 845
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onInitFailed(reason:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    const-string p1, "Mediation init failed"

    .line 846
    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->sendAutomationLog(Ljava/lang/String;)V

    .line 848
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    if-eqz p1, :cond_41

    .line 849
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mAdUnitsToInitialize:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    .line 850
    invoke-direct {p0, v0, v2}, Lcom/ironsource/mediationsdk/IronSourceObject;->notifyPublisherAboutInitFailed(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Z)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3c} :catch_3d

    goto :goto_2d

    :catch_3d
    move-exception p1

    .line 854
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_41
    return-void
.end method

.method public onInitSuccess(Ljava/util/List;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;",
            ">;Z)V"
        }
    .end annotation

    .line 456
    :try_start_0
    iput-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInitiatedAdUnits:Ljava/util/List;

    const/4 v0, 0x1

    .line 457
    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInitSucceeded:Z

    .line 458
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v3, "onInitSuccess()"

    invoke-virtual {v1, v2, v3, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    const-string v1, "init success"

    .line 459
    invoke-static {v1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->sendAutomationLog(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p2, :cond_32

    .line 463
    invoke-static {v1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(Z)Lorg/json/JSONObject;

    move-result-object p2
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_71

    :try_start_1a
    const-string v2, "revived"

    .line 465
    invoke-virtual {p2, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_1f
    .catch Lorg/json/JSONException; {:try_start_1a .. :try_end_1f} :catch_20
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1f} :catch_71

    goto :goto_24

    :catch_20
    move-exception v0

    .line 467
    :try_start_21
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 469
    :goto_24
    new-instance v0, Lcom/ironsource/eventsmodule/EventData;

    const/16 v2, 0x72

    invoke-direct {v0, v2, p2}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 470
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    .line 474
    :cond_32
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->triggerEventsSend()V

    .line 475
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->triggerEventsSend()V

    .line 476
    invoke-static {}, Lcom/ironsource/mediationsdk/AdapterRepository;->getInstance()Lcom/ironsource/mediationsdk/AdapterRepository;

    move-result-object p2

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getIronSourceAppKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getIronSourceUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Lcom/ironsource/mediationsdk/AdapterRepository;->setInitParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->values()[Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object p2

    array-length v0, p2

    const/4 v2, 0x0

    :goto_55
    if-ge v2, v0, :cond_75

    aget-object v3, p2, v2

    .line 481
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mAdUnitsToInitialize:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6e

    .line 483
    invoke-interface {p1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6b

    .line 484
    invoke-direct {p0, v3}, Lcom/ironsource/mediationsdk/IronSourceObject;->startAdUnit(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V

    goto :goto_6e

    .line 487
    :cond_6b
    invoke-direct {p0, v3, v1}, Lcom/ironsource/mediationsdk/IronSourceObject;->notifyPublisherAboutInitFailed(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Z)V
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_6e} :catch_71

    :cond_6e
    :goto_6e
    add-int/lit8 v2, v2, 0x1

    goto :goto_55

    :catch_71
    move-exception p1

    .line 492
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_75
    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .registers 6

    const-string v0, "onPause()"

    .line 1010
    :try_start_2
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1013
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->getInstance()Lcom/ironsource/mediationsdk/utils/ContextProvider;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->onPause(Landroid/app/Activity;)V

    .line 1016
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mBannerManager:Lcom/ironsource/mediationsdk/BannerManager;

    if-eqz p1, :cond_23

    .line 1017
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mBannerManager:Lcom/ironsource/mediationsdk/BannerManager;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/BannerManager;->onPause()V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_1a} :catch_1b

    goto :goto_23

    :catch_1b
    move-exception p1

    .line 1020
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v1, v2, v0, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_23
    :goto_23
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .registers 6

    const-string v0, "onResume()"

    .line 989
    :try_start_2
    iput-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mActivity:Landroid/app/Activity;

    .line 990
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 993
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->getInstance()Lcom/ironsource/mediationsdk/utils/ContextProvider;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->onResume(Landroid/app/Activity;)V

    .line 996
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mBannerManager:Lcom/ironsource/mediationsdk/BannerManager;

    if-eqz p1, :cond_25

    .line 997
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mBannerManager:Lcom/ironsource/mediationsdk/BannerManager;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/BannerManager;->onResume()V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_1c} :catch_1d

    goto :goto_25

    :catch_1d
    move-exception p1

    .line 1002
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v1, v2, v0, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_25
    :goto_25
    return-void
.end method

.method public onStillInProgressAfter15Secs()V
    .registers 8

    .line 860
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsBnLoadBeforeInitCompleted:Ljava/lang/Boolean;

    monitor-enter v0

    .line 861
    :try_start_3
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsBnLoadBeforeInitCompleted:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_29

    .line 862
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsBnLoadBeforeInitCompleted:Ljava/lang/Boolean;

    .line 863
    invoke-static {}, Lcom/ironsource/mediationsdk/BannerCallbackThrottler;->getInstance()Lcom/ironsource/mediationsdk/BannerCallbackThrottler;

    move-result-object v1

    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mBnLayoutToLoad:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    new-instance v4, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v5, 0x25b

    const-string v6, "init had failed"

    invoke-direct {v4, v5, v6}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Lcom/ironsource/mediationsdk/BannerCallbackThrottler;->sendBannerAdLoadFailed(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    const/4 v1, 0x0

    .line 864
    iput-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mBnLayoutToLoad:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    .line 865
    iput-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mBnPlacementToLoad:Ljava/lang/String;

    .line 867
    :cond_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_9c

    .line 869
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsIsLoadBeforeInitCompleted:Z

    if-eqz v0, :cond_3f

    .line 870
    iput-boolean v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsIsLoadBeforeInitCompleted:Z

    .line 871
    invoke-static {}, Lcom/ironsource/mediationsdk/CallbackThrottler;->getInstance()Lcom/ironsource/mediationsdk/CallbackThrottler;

    move-result-object v0

    const-string v1, "init() had failed"

    const-string v2, "Interstitial"

    invoke-static {v1, v2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/CallbackThrottler;->onInterstitialAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 874
    :cond_3f
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyIsLoadBeforeInitCompleted:Ljava/util/concurrent/CopyOnWriteArraySet;

    monitor-enter v1

    .line 875
    :try_start_42
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyIsLoadBeforeInitCompleted:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_48
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_64

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 876
    invoke-static {}, Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;

    move-result-object v3

    const-string v4, "init() had failed"

    const-string v5, "Interstitial"

    invoke-static {v4, v5}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;->onInterstitialAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_48

    .line 878
    :cond_64
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyIsLoadBeforeInitCompleted:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    .line 879
    monitor-exit v1
    :try_end_6a
    .catchall {:try_start_42 .. :try_end_6a} :catchall_99

    .line 881
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyRvLoadBeforeInitCompleted:Ljava/util/concurrent/CopyOnWriteArraySet;

    monitor-enter v0

    .line 882
    :try_start_6d
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyRvLoadBeforeInitCompleted:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_73
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 883
    invoke-static {}, Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;

    move-result-object v3

    const-string v4, "init() had failed"

    const-string v5, "Rewarded Video"

    invoke-static {v4, v5}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;->onRewardedVideoAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_73

    .line 885
    :cond_8f
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyRvLoadBeforeInitCompleted:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    .line 886
    monitor-exit v0

    return-void

    :catchall_96
    move-exception v1

    monitor-exit v0
    :try_end_98
    .catchall {:try_start_6d .. :try_end_98} :catchall_96

    throw v1

    :catchall_99
    move-exception v0

    .line 879
    :try_start_9a
    monitor-exit v1
    :try_end_9b
    .catchall {:try_start_9a .. :try_end_9b} :catchall_99

    throw v0

    :catchall_9c
    move-exception v1

    .line 867
    :try_start_9d
    monitor-exit v0
    :try_end_9e
    .catchall {:try_start_9d .. :try_end_9e} :catchall_9c

    throw v1

    return-void
.end method

.method public removeInterstitialListener()V
    .registers 5

    .line 2347
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "removeInterstitialListener()"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 2349
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->setInterstitialListener(Lcom/ironsource/mediationsdk/sdk/InterstitialListener;)V

    return-void
.end method

.method public removeOfferwallListener()V
    .registers 5

    .line 2355
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "removeOfferwallListener()"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 2357
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->setOfferwallListener(Lcom/ironsource/mediationsdk/sdk/OfferwallListener;)V

    return-void
.end method

.method public removeRewardedVideoListener()V
    .registers 5

    .line 2339
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "removeRewardedVideoListener()"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 2341
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->setRewardedVideoListener(Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;)V

    return-void
.end method

.method public sendInitCompletedEvent(J)V
    .registers 5

    .line 185
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsDemandOnlyRv:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsDemandOnlyIs:Z

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    .line 186
    :goto_c
    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(Z)Lorg/json/JSONObject;

    move-result-object v0

    :try_start_10
    const-string v1, "duration"

    .line 189
    invoke-virtual {v0, v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "sessionDepth"

    .line 190
    iget p2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInitCounter:I

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1c} :catch_1d

    goto :goto_21

    :catch_1d
    move-exception p1

    .line 192
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 195
    :goto_21
    new-instance p1, Lcom/ironsource/eventsmodule/EventData;

    const/16 p2, 0x202

    invoke-direct {p1, p2, v0}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 196
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    return-void
.end method

.method public setAdaptersDebug(Z)V
    .registers 6

    .line 1124
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAdaptersDebug : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1125
    invoke-static {}, Lcom/ironsource/mediationsdk/AdapterRepository;->getInstance()Lcom/ironsource/mediationsdk/AdapterRepository;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/AdapterRepository;->setAdaptersDebug(Z)V

    return-void
.end method

.method public setAge(I)V
    .registers 9

    const-string v0, ")"

    const-string v1, ":setAge(age:"

    .line 1026
    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1027
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v2, v5}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1029
    new-instance v2, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;

    invoke-direct {v2}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;-><init>()V

    .line 1031
    invoke-direct {p0, p1, v2}, Lcom/ironsource/mediationsdk/IronSourceObject;->validateAge(ILcom/ironsource/mediationsdk/config/ConfigValidationResult;)V

    .line 1033
    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->isValid()Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 1034
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mUserAge:Ljava/lang/Integer;

    .line 1035
    invoke-static {}, Lcom/ironsource/mediationsdk/AdapterRepository;->getInstance()Lcom/ironsource/mediationsdk/AdapterRepository;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/ironsource/mediationsdk/AdapterRepository;->setAge(I)V

    goto :goto_71

    .line 1038
    :cond_3f
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v3

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->getIronSourceError()Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v2, v5}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_51} :catch_52

    goto :goto_71

    :catch_52
    move-exception v2

    .line 1040
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, v4, p1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_71
    return-void
.end method

.method public setConsent(Z)V
    .registers 7

    .line 2759
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mConsent:Ljava/lang/Boolean;

    .line 2760
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setConsent : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 2762
    invoke-static {}, Lcom/ironsource/mediationsdk/AdapterRepository;->getInstance()Lcom/ironsource/mediationsdk/AdapterRepository;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/AdapterRepository;->setConsent(Z)V

    .line 2765
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mOfferwallAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    if-eqz v0, :cond_4e

    .line 2766
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Offerwall | setConsent(consent:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 2767
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mOfferwallAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->setConsent(Z)V

    :cond_4e
    const/16 v0, 0x28

    if-nez p1, :cond_54

    const/16 v0, 0x29

    :cond_54
    const/4 p1, 0x0

    .line 2775
    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(Z)Lorg/json/JSONObject;

    move-result-object p1

    .line 2776
    new-instance v1, Lcom/ironsource/eventsmodule/EventData;

    invoke-direct {v1, v0, p1}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 2777
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    return-void
.end method

.method public setDynamicUserId(Ljava/lang/String;)Z
    .registers 10

    const-string v0, ")"

    const-string v1, ":setDynamicUserId(dynamicUserId:"

    const/4 v2, 0x0

    .line 1097
    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1098
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v5, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v3, v6}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1100
    new-instance v3, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;

    invoke-direct {v3}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;-><init>()V

    .line 1102
    invoke-direct {p0, p1, v3}, Lcom/ironsource/mediationsdk/IronSourceObject;->validateDynamicUserId(Ljava/lang/String;Lcom/ironsource/mediationsdk/config/ConfigValidationResult;)V

    .line 1104
    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->isValid()Z

    move-result v4

    if-eqz v4, :cond_47

    .line 1105
    iput-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDynamicUserId:Ljava/lang/String;

    .line 1107
    invoke-static {v6}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getJsonForUserId(Z)Lorg/json/JSONObject;

    move-result-object v3

    .line 1108
    new-instance v4, Lcom/ironsource/eventsmodule/EventData;

    const/16 v5, 0x34

    invoke-direct {v4, v5, v3}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 1109
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    return v6

    .line 1112
    :cond_47
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v4

    sget-object v5, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->getIronSourceError()Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v3, v6}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_59} :catch_5a

    return v2

    :catch_5a
    move-exception v3

    .line 1117
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v5, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->TAG:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, v5, p1, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v2
.end method

.method public setGender(Ljava/lang/String;)V
    .registers 9

    const-string v0, ")"

    const-string v1, ":setGender(gender:"

    .line 1046
    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1047
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v2, v5}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1049
    new-instance v2, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;

    invoke-direct {v2}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;-><init>()V

    .line 1051
    invoke-direct {p0, p1, v2}, Lcom/ironsource/mediationsdk/IronSourceObject;->validateGender(Ljava/lang/String;Lcom/ironsource/mediationsdk/config/ConfigValidationResult;)V

    .line 1053
    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->isValid()Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 1054
    iput-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mUserGender:Ljava/lang/String;

    .line 1055
    invoke-static {}, Lcom/ironsource/mediationsdk/AdapterRepository;->getInstance()Lcom/ironsource/mediationsdk/AdapterRepository;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/ironsource/mediationsdk/AdapterRepository;->setGender(Ljava/lang/String;)V

    goto :goto_6d

    .line 1058
    :cond_3b
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v3

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->getIronSourceError()Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v2, v5}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4d} :catch_4e

    goto :goto_6d

    :catch_4e
    move-exception v2

    .line 1060
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, v4, p1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_6d
    return-void
.end method

.method public setISDemandOnlyInterstitialListener(Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyInterstitialListener;)V
    .registers 3

    .line 1870
    invoke-static {}, Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;->setListener(Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyInterstitialListener;)V

    return-void
.end method

.method setISDemandOnlyRewardedVideoListener(Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyRewardedVideoListener;)V
    .registers 3

    .line 1477
    invoke-static {}, Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;->setListener(Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyRewardedVideoListener;)V

    return-void
.end method

.method public setInterstitialListener(Lcom/ironsource/mediationsdk/sdk/InterstitialListener;)V
    .registers 6

    const/4 v0, 0x1

    if-nez p1, :cond_d

    .line 1740
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v3, "setInterstitialListener(ISListener:null)"

    invoke-virtual {v1, v2, v3, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    goto :goto_16

    .line 1742
    :cond_d
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v3, "setInterstitialListener(ISListener)"

    invoke-virtual {v1, v2, v3, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1745
    :goto_16
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->setInterstitialListener(Lcom/ironsource/mediationsdk/sdk/InterstitialListener;)V

    .line 1746
    invoke-static {}, Lcom/ironsource/mediationsdk/ISListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/ISListenerWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/ISListenerWrapper;->setListener(Lcom/ironsource/mediationsdk/sdk/InterstitialListener;)V

    .line 1747
    invoke-static {}, Lcom/ironsource/mediationsdk/CallbackThrottler;->getInstance()Lcom/ironsource/mediationsdk/CallbackThrottler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/CallbackThrottler;->setInterstitialListener(Lcom/ironsource/mediationsdk/sdk/InterstitialListener;)V

    return-void
.end method

.method declared-synchronized setIronSourceUserId(Ljava/lang/String;Z)V
    .registers 6

    monitor-enter p0

    .line 2361
    :try_start_1
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "userId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", isFromPublisher = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 2362
    iput-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mUserId:Ljava/lang/String;

    if-eqz p2, :cond_36

    const/4 p1, 0x0

    .line 2365
    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getJsonForUserId(Z)Lorg/json/JSONObject;

    move-result-object p1

    .line 2366
    new-instance p2, Lcom/ironsource/eventsmodule/EventData;

    const/16 v0, 0x34

    invoke-direct {p2, v0, p1}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 2367
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V
    :try_end_36
    .catchall {:try_start_1 .. :try_end_36} :catchall_38

    .line 2369
    :cond_36
    monitor-exit p0

    return-void

    :catchall_38
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setLogListener(Lcom/ironsource/mediationsdk/logger/LogListener;)V
    .registers 7

    const/4 v0, 0x1

    if-nez p1, :cond_d

    .line 2013
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "setLogListener(LogListener:null)"

    invoke-virtual {p1, v1, v2, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    goto :goto_37

    .line 2015
    :cond_d
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mPublisherLogger:Lcom/ironsource/mediationsdk/logger/PublisherLogger;

    invoke-virtual {v1, p1}, Lcom/ironsource/mediationsdk/logger/PublisherLogger;->setLogListener(Lcom/ironsource/mediationsdk/logger/LogListener;)V

    .line 2016
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setLogListener(LogListener:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    :goto_37
    return-void
.end method

.method public setMediationSegment(Ljava/lang/String;)V
    .registers 9

    const-string v0, ")"

    const-string v1, ":setMediationSegment(segment:"

    .line 1067
    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1068
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v2, v5}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1070
    new-instance v2, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;

    invoke-direct {v2}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;-><init>()V

    .line 1072
    invoke-direct {p0, p1, v2}, Lcom/ironsource/mediationsdk/IronSourceObject;->validateSegment(Ljava/lang/String;Lcom/ironsource/mediationsdk/config/ConfigValidationResult;)V

    .line 1074
    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->isValid()Z

    move-result v3

    if-eqz v3, :cond_34

    .line 1075
    iput-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mSegment:Ljava/lang/String;

    goto :goto_66

    .line 1077
    :cond_34
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v3

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->getIronSourceError()Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v2, v5}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_46} :catch_47

    goto :goto_66

    :catch_47
    move-exception v2

    .line 1079
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, v4, p1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_66
    return-void
.end method

.method public setMediationType(Ljava/lang/String;)V
    .registers 9

    const-string v0, ")"

    const-string v1, ":setMediationType(mediationType:"

    .line 1132
    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1133
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v2, v5}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    const/16 v2, 0x40

    .line 1136
    invoke-direct {p0, p1, v5, v2}, Lcom/ironsource/mediationsdk/IronSourceObject;->validateLength(Ljava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/IronSourceObject;->validateAlphanumeric(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 1137
    iput-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mMediationType:Ljava/lang/String;

    goto :goto_5d

    :cond_34
    const-string v2, " mediationType value is invalid - should be alphanumeric and 1-64 chars in length"

    .line 1141
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v3, v4, v2, v5}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_3d} :catch_3e

    goto :goto_5d

    :catch_3e
    move-exception v2

    .line 1145
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, v4, p1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_5d
    return-void
.end method

.method public setMetaData(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 2798
    invoke-static {}, Lcom/ironsource/mediationsdk/MediationInitializer;->getInstance()Lcom/ironsource/mediationsdk/MediationInitializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/MediationInitializer;->getCurrentInitStatus()Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;->INITIATED:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_2d

    .line 2799
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v3, "setMetaData must be called prior to Init. Calling it after init will be ignored"

    invoke-virtual {v0, v1, v3, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    const-string v0, ""

    .line 2800
    invoke-static {p1, p2, v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getJsonForMetaData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 2801
    new-instance p2, Lcom/ironsource/eventsmodule/EventData;

    const/16 v0, 0x33

    invoke-direct {p2, v0, p1}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 2802
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    return-void

    .line 2806
    :cond_2d
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setMetaData: key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 2807
    invoke-static {p1}, Lcom/ironsource/mediationsdk/metadata/MetaDataUtils;->checkMetaDataKeyValidity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2808
    invoke-static {p2}, Lcom/ironsource/mediationsdk/metadata/MetaDataUtils;->checkMetaDataValueValidity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2810
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-lez v2, :cond_68

    .line 2811
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object p1

    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {p1, p2, v0, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    goto :goto_9d

    .line 2813
    :cond_68
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_78

    .line 2814
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object p1

    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {p1, p2, v1, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    goto :goto_9d

    .line 2817
    :cond_78
    invoke-static {p1, p2}, Lcom/ironsource/mediationsdk/metadata/MetaDataUtils;->formatMetaData(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/metadata/MetaData;

    move-result-object v0

    .line 2818
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/metadata/MetaData;->getMetaDataKey()Ljava/lang/String;

    move-result-object v1

    .line 2819
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/metadata/MetaData;->getMetaDataValue()Ljava/lang/String;

    move-result-object v0

    .line 2820
    invoke-static {}, Lcom/ironsource/mediationsdk/AdapterRepository;->getInstance()Lcom/ironsource/mediationsdk/AdapterRepository;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/ironsource/mediationsdk/AdapterRepository;->setMetaData(Ljava/lang/String;Ljava/lang/String;)V

    .line 2823
    invoke-static {p1, p2, v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getJsonForMetaData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 2824
    new-instance p2, Lcom/ironsource/eventsmodule/EventData;

    const/16 v0, 0x32

    invoke-direct {p2, v0, p1}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 2825
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    :goto_9d
    return-void
.end method

.method public setOfferwallListener(Lcom/ironsource/mediationsdk/sdk/OfferwallListener;)V
    .registers 6

    const/4 v0, 0x1

    if-nez p1, :cond_d

    .line 2001
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v3, "setOfferwallListener(OWListener:null)"

    invoke-virtual {v1, v2, v3, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    goto :goto_16

    .line 2003
    :cond_d
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v3, "setOfferwallListener(OWListener)"

    invoke-virtual {v1, v2, v3, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 2006
    :goto_16
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->setOfferwallListener(Lcom/ironsource/mediationsdk/sdk/OfferwallListener;)V

    return-void
.end method

.method public setRewardedVideoListener(Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;)V
    .registers 6

    const/4 v0, 0x1

    if-nez p1, :cond_d

    .line 1325
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v3, "setRewardedVideoListener(RVListener:null)"

    invoke-virtual {v1, v2, v3, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    goto :goto_16

    .line 1327
    :cond_d
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v3, "setRewardedVideoListener(RVListener)"

    invoke-virtual {v1, v2, v3, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1331
    :goto_16
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->setRewardedVideoListener(Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;)V

    .line 1332
    invoke-static {}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVListenerWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->setListener(Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;)V

    return-void
.end method

.method public setRewardedVideoServerParameters(Ljava/util/Map;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, ")"

    const-string v1, ":setRewardedVideoServerParameters(params:"

    if-eqz p1, :cond_5b

    .line 1338
    :try_start_6
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_d

    goto :goto_5b

    .line 1342
    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1343
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v2, v5}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1344
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRvServerParams:Ljava/util/Map;
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_37} :catch_38

    goto :goto_5b

    :catch_38
    move-exception v2

    .line 1346
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, v4, p1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5b
    :goto_5b
    return-void
.end method

.method public setSegment(Lcom/ironsource/mediationsdk/IronSourceSegment;)V
    .registers 5

    .line 1084
    invoke-static {}, Lcom/ironsource/mediationsdk/MediationInitializer;->getInstance()Lcom/ironsource/mediationsdk/MediationInitializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/MediationInitializer;->getCurrentInitStatus()Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;->INIT_IN_PROGRESS:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    if-eq v0, v1, :cond_1c

    .line 1085
    invoke-static {}, Lcom/ironsource/mediationsdk/MediationInitializer;->getInstance()Lcom/ironsource/mediationsdk/MediationInitializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/MediationInitializer;->getCurrentInitStatus()Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;->INITIATED:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    if-ne v0, v1, :cond_19

    goto :goto_1c

    .line 1090
    :cond_19
    iput-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIronSegment:Lcom/ironsource/mediationsdk/IronSourceSegment;

    goto :goto_28

    .line 1087
    :cond_1c
    :goto_1c
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object p1

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v1, 0x0

    const-string v2, "Segments must be set prior to Init. Setting a segment after the init will be ignored"

    invoke-virtual {p1, v0, v2, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    :goto_28
    return-void
.end method

.method setSegmentListener(Lcom/ironsource/mediationsdk/sdk/SegmentListener;)V
    .registers 3

    .line 2721
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    if-eqz v0, :cond_10

    .line 2722
    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->setSegmentListener(Lcom/ironsource/mediationsdk/sdk/SegmentListener;)V

    .line 2723
    invoke-static {}, Lcom/ironsource/mediationsdk/MediationInitializer;->getInstance()Lcom/ironsource/mediationsdk/MediationInitializer;

    move-result-object p1

    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/MediationInitializer;->setSegmentListener(Lcom/ironsource/mediationsdk/sdk/SegmentListener;)V

    :cond_10
    return-void
.end method

.method public shouldTrackNetworkState(Landroid/content/Context;Z)V
    .registers 4

    .line 2510
    iput-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mTrackNetworkStateContext:Landroid/content/Context;

    .line 2511
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mShouldTrackNetworkState:Ljava/lang/Boolean;

    .line 2514
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsIsProgrammatic:Z

    if-eqz v0, :cond_14

    .line 2515
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mProgIsManager:Lcom/ironsource/mediationsdk/ProgIsManager;

    if-eqz v0, :cond_1b

    .line 2516
    invoke-virtual {v0, p1, p2}, Lcom/ironsource/mediationsdk/ProgIsManager;->shouldTrackNetworkState(Landroid/content/Context;Z)V

    goto :goto_1b

    .line 2520
    :cond_14
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialManager:Lcom/ironsource/mediationsdk/InterstitialManager;

    if-eqz v0, :cond_1b

    .line 2521
    invoke-virtual {v0, p1, p2}, Lcom/ironsource/mediationsdk/InterstitialManager;->shouldTrackNetworkState(Landroid/content/Context;Z)V

    .line 2526
    :cond_1b
    :goto_1b
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsRvProgrammatic:Z

    if-eqz v0, :cond_27

    .line 2527
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mProgRvManager:Lcom/ironsource/mediationsdk/IProgRvManager;

    if-eqz v0, :cond_2e

    .line 2528
    invoke-interface {v0, p1, p2}, Lcom/ironsource/mediationsdk/IProgRvManager;->shouldTrackNetworkState(Landroid/content/Context;Z)V

    goto :goto_2e

    .line 2532
    :cond_27
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/RewardedVideoManager;

    if-eqz v0, :cond_2e

    .line 2533
    invoke-virtual {v0, p1, p2}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->shouldTrackNetworkState(Landroid/content/Context;Z)V

    :cond_2e
    :goto_2e
    return-void
.end method

.method public showDemandOnlyInterstitial(Ljava/lang/String;)V
    .registers 6

    .line 1843
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showISDemandOnlyInterstitial() instanceId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1846
    :try_start_19
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsDemandOnlyIs:Z

    const/4 v1, 0x3

    if-nez v0, :cond_28

    .line 1847
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v3, "Interstitial was initialized in mediation mode. Use showInterstitial instead"

    invoke-virtual {v0, v2, v3, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void

    .line 1851
    :cond_28
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyIsManager:Lcom/ironsource/mediationsdk/DemandOnlyIsManager;

    if-nez v0, :cond_44

    const-string v0, "Interstitial video was not initiated"

    .line 1853
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v2, v3, v0, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1854
    invoke-static {}, Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;

    move-result-object v1

    new-instance v2, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v3, 0x1fc

    invoke-direct {v2, v3, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, p1, v2}, Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;->onInterstitialAdShowFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    .line 1858
    :cond_44
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyIsManager:Lcom/ironsource/mediationsdk/DemandOnlyIsManager;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/DemandOnlyIsManager;->showInterstitial(Ljava/lang/String;)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_49} :catch_4a

    goto :goto_63

    :catch_4a
    move-exception v0

    .line 1860
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v3, "showISDemandOnlyInterstitial"

    invoke-virtual {v1, v2, v3, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1861
    invoke-static {}, Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;

    move-result-object v0

    const-string v1, "showISDemandOnlyInterstitial can\'t be called before the Interstitial ad unit initialization completed successfully"

    const-string v2, "Interstitial"

    invoke-static {v1, v2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;->onInterstitialAdShowFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :goto_63
    return-void
.end method

.method public declared-synchronized showDemandOnlyRewardedVideo(Ljava/lang/String;)V
    .registers 7

    monitor-enter p0

    .line 1448
    :try_start_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showISDemandOnlyRewardedVideo() instanceId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_77

    .line 1451
    :try_start_1a
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsDemandOnlyRv:Z

    const/16 v1, 0x1fc

    const/4 v2, 0x3

    if-nez v0, :cond_38

    const-string v0, "Rewarded video was initialized in mediation mode. Use showRewardedVideo instead"

    .line 1453
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v3, v4, v0, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1454
    invoke-static {}, Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;

    move-result-object v2

    new-instance v3, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-direct {v3, v1, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, p1, v3}, Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;->onRewardedVideoAdShowFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_36} :catch_59
    .catchall {:try_start_1a .. :try_end_36} :catchall_77

    .line 1455
    monitor-exit p0

    return-void

    .line 1458
    :cond_38
    :try_start_38
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyRvManager:Lcom/ironsource/mediationsdk/DemandOnlyRvManager;

    if-nez v0, :cond_53

    const-string v0, "Rewarded video was not initiated"

    .line 1460
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v3, v4, v0, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1461
    invoke-static {}, Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;

    move-result-object v2

    new-instance v3, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-direct {v3, v1, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, p1, v3}, Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;->onRewardedVideoAdShowFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_51} :catch_59
    .catchall {:try_start_38 .. :try_end_51} :catchall_77

    .line 1462
    monitor-exit p0

    return-void

    .line 1465
    :cond_53
    :try_start_53
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyRvManager:Lcom/ironsource/mediationsdk/DemandOnlyRvManager;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/DemandOnlyRvManager;->showRewardedVideo(Ljava/lang/String;)V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_58} :catch_59
    .catchall {:try_start_53 .. :try_end_58} :catchall_77

    goto :goto_75

    :catch_59
    move-exception v0

    .line 1467
    :try_start_5a
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v3, "showISDemandOnlyRewardedVideo"

    invoke-virtual {v1, v2, v3, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1468
    invoke-static {}, Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;

    move-result-object v1

    new-instance v2, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v3, 0x1fe

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, p1, v2}, Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;->onRewardedVideoAdShowFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_75
    .catchall {:try_start_5a .. :try_end_75} :catchall_77

    .line 1470
    :goto_75
    monitor-exit p0

    return-void

    :catchall_77
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public showInterstitial()V
    .registers 7

    .line 1584
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "showInterstitial()"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    const/16 v0, 0x1fe

    .line 1587
    :try_start_c
    iget-boolean v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsDemandOnlyIs:Z

    if-eqz v1, :cond_25

    const-string v1, "Interstitial was initialized in demand only mode. Use showISDemandOnlyInterstitial instead"

    .line 1589
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v1, v5}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1590
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    new-instance v4, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-direct {v4, v0, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    .line 1594
    :cond_25
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->isInterstitialConfigurationsReady()Z

    move-result v1

    if-nez v1, :cond_39

    .line 1595
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    const-string v3, "showInterstitial can\'t be called before the Interstitial ad unit initialization completed successfully"

    const-string v4, "Interstitial"

    invoke-static {v3, v4}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    .line 1599
    :cond_39
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getDefaultInterstitialPlacement()Lcom/ironsource/mediationsdk/model/InterstitialPlacement;

    move-result-object v1

    if-eqz v1, :cond_47

    .line 1601
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/InterstitialPlacement;->getPlacementName()Ljava/lang/String;

    move-result-object v1

    .line 1602
    invoke-virtual {p0, v1}, Lcom/ironsource/mediationsdk/IronSourceObject;->showInterstitial(Ljava/lang/String;)V

    goto :goto_6c

    .line 1604
    :cond_47
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    new-instance v3, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v4, 0x3fc

    const-string v5, "showInterstitial error: empty default placement in response"

    invoke-direct {v3, v4, v5}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_55} :catch_56

    goto :goto_6c

    :catch_56
    move-exception v1

    .line 1607
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v3, v4, v2, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1608
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    new-instance v3, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v0, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :goto_6c
    return-void
.end method

.method public showInterstitial(Ljava/lang/String;)V
    .registers 8

    .line 1614
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showInterstitial("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1615
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    const/16 v1, 0x1fe

    .line 1618
    :try_start_20
    iget-boolean v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsDemandOnlyIs:Z

    if-eqz v2, :cond_39

    const-string p1, "Interstitial was initialized in demand only mode. Use showISDemandOnlyInterstitial instead"

    .line 1620
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v4, 0x3

    invoke-virtual {v2, v3, p1, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1621
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    new-instance v3, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-direct {v3, v1, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    .line 1625
    :cond_39
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->isInterstitialConfigurationsReady()Z

    move-result v2

    if-nez v2, :cond_4d

    .line 1626
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    const-string v2, "showInterstitial can\'t be called before the Interstitial ad unit initialization completed successfully"

    const-string v3, "Interstitial"

    invoke-static {v2, v3}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    .line 1630
    :cond_4d
    iget-boolean v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsIsProgrammatic:Z

    if-eqz v2, :cond_55

    .line 1631
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/IronSourceObject;->showProgrammaticInterstitial(Ljava/lang/String;)V

    return-void

    .line 1635
    :cond_55
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInterstitialPlacementToShowWithEvent(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/InterstitialPlacement;

    move-result-object v2

    const/4 v3, 0x0

    .line 1637
    invoke-static {v3}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(Z)Lorg/json/JSONObject;

    move-result-object v3
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_5e} :catch_97

    const-string v4, "placement"

    if-eqz v2, :cond_6a

    .line 1640
    :try_start_62
    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/InterstitialPlacement;->getPlacementName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_78

    .line 1641
    :cond_6a
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_78

    .line 1642
    invoke-virtual {v3, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_73
    .catch Lorg/json/JSONException; {:try_start_62 .. :try_end_73} :catch_74
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_73} :catch_97

    goto :goto_78

    :catch_74
    move-exception p1

    .line 1645
    :try_start_75
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 1648
    :cond_78
    :goto_78
    new-instance p1, Lcom/ironsource/eventsmodule/EventData;

    const/16 v4, 0x834

    invoke-direct {p1, v4, v3}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 1649
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    if-eqz v2, :cond_ad

    .line 1652
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialManager:Lcom/ironsource/mediationsdk/InterstitialManager;

    invoke-virtual {p1, v2}, Lcom/ironsource/mediationsdk/InterstitialManager;->setCurrentPlacement(Lcom/ironsource/mediationsdk/model/InterstitialPlacement;)V

    .line 1653
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialManager:Lcom/ironsource/mediationsdk/InterstitialManager;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/InterstitialPlacement;->getPlacementName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/ironsource/mediationsdk/InterstitialManager;->showInterstitial(Ljava/lang/String;)V
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_96} :catch_97

    goto :goto_ad

    :catch_97
    move-exception p1

    .line 1657
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v2, v3, v0, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1658
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    new-instance v2, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v1, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :cond_ad
    :goto_ad
    return-void
.end method

.method public showOfferwall()V
    .registers 7

    const-string v0, "Offerwall"

    const-string v1, "showOfferwall can\'t be called before the Offerwall ad unit initialization completed successfully"

    const-string v2, "showOfferwall()"

    .line 1923
    :try_start_6
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v2, v5}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1925
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->isOfferwallConfigurationsReady()Z

    move-result v3

    if-nez v3, :cond_1e

    .line 1926
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-static {v1, v0}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onOfferwallShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    .line 1930
    :cond_1e
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/Configurations;->getOfferwallConfigurations()Lcom/ironsource/mediationsdk/model/OfferwallConfigurations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/OfferwallConfigurations;->getDefaultOfferwallPlacement()Lcom/ironsource/mediationsdk/model/OfferwallPlacement;

    move-result-object v3

    if-eqz v3, :cond_47

    .line 1932
    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/OfferwallPlacement;->getPlacementName()Ljava/lang/String;

    move-result-object v3

    .line 1933
    invoke-virtual {p0, v3}, Lcom/ironsource/mediationsdk/IronSourceObject;->showOfferwall(Ljava/lang/String;)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_35} :catch_36

    goto :goto_47

    :catch_36
    move-exception v3

    .line 1936
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v5, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v4, v5, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1937
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-static {v1, v0}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onOfferwallShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :cond_47
    :goto_47
    return-void
.end method

.method public showOfferwall(Ljava/lang/String;)V
    .registers 8

    const-string v0, "Offerwall"

    const-string v1, "showOfferwall can\'t be called before the Offerwall ad unit initialization completed successfully"

    .line 1943
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showOfferwall("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1944
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v2, v5}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1946
    :try_start_22
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->isOfferwallConfigurationsReady()Z

    move-result v3

    if-nez v3, :cond_32

    .line 1947
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-static {v1, v0}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onOfferwallShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    .line 1951
    :cond_32
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/Configurations;->getOfferwallConfigurations()Lcom/ironsource/mediationsdk/model/OfferwallConfigurations;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/ironsource/mediationsdk/model/OfferwallConfigurations;->getOfferwallPlacement(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/OfferwallPlacement;

    move-result-object p1

    if-nez p1, :cond_66

    const-string p1, "Placement is not valid, please make sure you are using the right placements, using the default placement."

    .line 1954
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v5, 0x3

    invoke-virtual {v3, v4, p1, v5}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1957
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/Configurations;->getOfferwallConfigurations()Lcom/ironsource/mediationsdk/model/OfferwallConfigurations;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/OfferwallConfigurations;->getDefaultOfferwallPlacement()Lcom/ironsource/mediationsdk/model/OfferwallPlacement;

    move-result-object p1

    if-nez p1, :cond_66

    const-string p1, "Default placement was not found, please make sure you are using the right placements."

    .line 1960
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v3, v4, p1, v5}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void

    .line 1965
    :cond_66
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mOfferwallManager:Lcom/ironsource/mediationsdk/OfferwallManager;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/OfferwallPlacement;->getPlacementName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/ironsource/mediationsdk/OfferwallManager;->showOfferwall(Ljava/lang/String;)V
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_6f} :catch_70

    goto :goto_81

    :catch_70
    move-exception p1

    .line 1967
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v3, v4, v2, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1968
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-static {v1, v0}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onOfferwallShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :goto_81
    return-void
.end method

.method public showRewardedVideo()V
    .registers 5

    .line 1195
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->isRewardedVideoConfigurationsReady()Z

    move-result v0

    const/4 v1, 0x3

    if-nez v0, :cond_1c

    const-string v0, "showRewardedVideo can\'t be called before the Rewarded Video ad unit initialization completed successfully"

    .line 1197
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    const-string v3, "Rewarded Video"

    invoke-static {v0, v3}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 1198
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v2, v3, v0, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void

    .line 1202
    :cond_1c
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getDefaultRewardedVideoPlacement()Lcom/ironsource/mediationsdk/model/Placement;

    move-result-object v0

    if-nez v0, :cond_38

    const-string v0, "showRewardedVideo error: empty default placement in response"

    .line 1206
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v2, v3, v0, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1207
    new-instance v1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v2, 0x3fd

    invoke-direct {v1, v2, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    .line 1208
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_3f

    .line 1210
    :cond_38
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/Placement;->getPlacementName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ironsource/mediationsdk/IronSourceObject;->showRewardedVideo(Ljava/lang/String;)V

    :goto_3f
    return-void
.end method

.method public showRewardedVideo(Ljava/lang/String;)V
    .registers 7

    .line 1255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showRewardedVideo("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1256
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1259
    :try_start_1e
    iget-boolean v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsDemandOnlyRv:Z
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_20} :catch_6b

    const-string v2, "Rewarded Video"

    if-eqz v1, :cond_38

    :try_start_24
    const-string p1, "Rewarded Video was initialized in demand only mode. Use showISDemandOnlyRewardedVideo instead"

    .line 1261
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v4, 0x3

    invoke-virtual {v1, v3, p1, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1262
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-static {p1, v2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    .line 1266
    :cond_38
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->isRewardedVideoConfigurationsReady()Z

    move-result v1

    if-nez v1, :cond_4a

    .line 1267
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    const-string v1, "showRewardedVideo can\'t be called before the Rewarded Video ad unit initialization completed successfully"

    invoke-static {v1, v2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    .line 1271
    :cond_4a
    iget-boolean v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsRvProgrammatic:Z

    if-eqz v1, :cond_56

    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mProgRvManager:Lcom/ironsource/mediationsdk/IProgRvManager;

    if-eqz v1, :cond_56

    .line 1272
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/IronSourceObject;->showProgrammaticRewardedVideo(Ljava/lang/String;)V

    return-void

    .line 1276
    :cond_56
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/IronSourceObject;->getPlacementToShowWithEvent(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/Placement;

    move-result-object p1

    if-eqz p1, :cond_83

    .line 1278
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/RewardedVideoManager;

    invoke-virtual {v1, p1}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->setCurrentPlacement(Lcom/ironsource/mediationsdk/model/Placement;)V

    .line 1279
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/RewardedVideoManager;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/Placement;->getPlacementName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->showRewardedVideo(Ljava/lang/String;)V
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_6a} :catch_6b

    goto :goto_83

    :catch_6b
    move-exception p1

    .line 1282
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v1, v2, v0, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1283
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    new-instance v1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v2, 0x1fe

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :cond_83
    :goto_83
    return-void
.end method
