.class public Lcom/ironsource/mediationsdk/LWSProgRvSmash;
.super Lcom/ironsource/mediationsdk/ProgSmash;
.source "LWSProgRvSmash.java"

# interfaces
.implements Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/mediationsdk/LWSProgRvSmash$SMASH_STATE;
    }
.end annotation


# instance fields
.field private mAppKey:Ljava/lang/String;

.field private mAuctionFailReason:Ljava/lang/String;

.field private mAuctionId:Ljava/lang/String;

.field private mAuctionTrial:I

.field private mClosedTime:J

.field private mListener:Lcom/ironsource/mediationsdk/LWSRvManagerListener;

.field private mLoadStartTime:J

.field private mLoadTimeoutSecs:I

.field private mPlacement:Lcom/ironsource/mediationsdk/model/Placement;

.field private mSessionDepth:I

.field private mState:Lcom/ironsource/mediationsdk/LWSProgRvSmash$SMASH_STATE;

.field private final mStateLock:Ljava/lang/Object;

.field private mTimer:Ljava/util/Timer;

.field private mUserId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ironsource/mediationsdk/LWSProgRvSmash;Lcom/ironsource/mediationsdk/LWSRvManagerListener;Lcom/ironsource/mediationsdk/AbstractAdapter;ILjava/lang/String;ILjava/lang/String;)V
    .registers 16

    .line 115
    iget-object v1, p1, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->mAppKey:Ljava/lang/String;

    iget-object v2, p1, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->mUserId:Ljava/lang/String;

    iget-object v0, p1, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->mAdapterConfig:Lcom/ironsource/mediationsdk/model/AdapterConfig;

    .line 117
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/AdapterConfig;->getProviderSettings()Lcom/ironsource/mediationsdk/model/ProviderSettings;

    move-result-object v3

    iget v5, p1, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->mLoadTimeoutSecs:I

    move-object v0, p0

    move-object v4, p2

    move-object v6, p3

    move v7, p4

    .line 115
    invoke-direct/range {v0 .. v7}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/mediationsdk/model/ProviderSettings;Lcom/ironsource/mediationsdk/LWSRvManagerListener;ILcom/ironsource/mediationsdk/AbstractAdapter;I)V

    .line 122
    iput-object p5, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->mAuctionId:Ljava/lang/String;

    .line 123
    iput p6, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->mAuctionTrial:I

    .line 124
    iput-object p7, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->mAuctionFailReason:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/mediationsdk/model/ProviderSettings;Lcom/ironsource/mediationsdk/LWSRvManagerListener;ILcom/ironsource/mediationsdk/AbstractAdapter;I)V
    .registers 10

    .line 98
    new-instance v0, Lcom/ironsource/mediationsdk/model/AdapterConfig;

    invoke-virtual {p3}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getRewardedVideoSettings()Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, p3, v1}, Lcom/ironsource/mediationsdk/model/AdapterConfig;-><init>(Lcom/ironsource/mediationsdk/model/ProviderSettings;Lorg/json/JSONObject;)V

    invoke-direct {p0, v0, p6}, Lcom/ironsource/mediationsdk/ProgSmash;-><init>(Lcom/ironsource/mediationsdk/model/AdapterConfig;Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 93
    new-instance p3, Ljava/lang/Object;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->mStateLock:Ljava/lang/Object;

    .line 99
    iput-object p1, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->mAppKey:Ljava/lang/String;

    .line 100
    iput-object p2, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->mUserId:Ljava/lang/String;

    .line 101
    iput-object p4, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->mListener:Lcom/ironsource/mediationsdk/LWSRvManagerListener;

    .line 102
    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    iput-object p1, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->mTimer:Ljava/util/Timer;

    .line 103
    iput p5, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->mLoadTimeoutSecs:I

    .line 104
    iget-object p1, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-virtual {p1, p0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->updateRewardedVideoListener(Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;)V

    .line 105
    iput p7, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->mSessionDepth:I

    .line 106
    sget-object p1, Lcom/ironsource/mediationsdk/LWSProgRvSmash$SMASH_STATE;->NO_INIT:Lcom/ironsource/mediationsdk/LWSProgRvSmash$SMASH_STATE;

    iput-object p1, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->mState:Lcom/ironsource/mediationsdk/LWSProgRvSmash$SMASH_STATE;

    const-wide/16 p1, 0x0

    .line 107
    iput-wide p1, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->mClosedTime:J

    .line 108
    iget-object p1, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->mAdapterConfig:Lcom/ironsource/mediationsdk/model/AdapterConfig;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/AdapterConfig;->isBidder()Z

    move-result p1

    if-eqz p1, :cond_3c

    .line 109
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->initForBidding()V

    :cond_3c
    return-void
.end method

.method static synthetic access$000(Lcom/ironsource/mediationsdk/LWSProgRvSmash;)Lcom/ironsource/mediationsdk/LWSProgRvSmash$SMASH_STATE;
    .registers 1

    .line 80
    iget-object p0, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->mState:Lcom/ironsource/mediationsdk/LWSProgRvSmash$SMASH_STATE;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ironsource/mediationsdk/LWSProgRvSmash;Lcom/ironsource/mediationsdk/LWSProgRvSmash$SMASH_STATE;)V
    .registers 2

    .line 80
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->setState(Lcom/ironsource/mediationsdk/LWSProgRvSmash$SMASH_STATE;)V

    return-void
.end method

.method static synthetic access$200(Lcom/ironsource/mediationsdk/LWSProgRvSmash;Ljava/lang/String;)V
    .registers 2

    .line 80
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->logInternal(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/ironsource/mediationsdk/LWSProgRvSmash;)J
    .registers 3

    .line 80
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->getElapsedTime()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$400(Lcom/ironsource/mediationsdk/LWSProgRvSmash;)Lcom/ironsource/mediationsdk/LWSRvManagerListener;
    .registers 1

    .line 80
    iget-object p0, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->mListener:Lcom/ironsource/mediationsdk/LWSRvManagerListener;

    return-object p0
.end method

.method private getElapsedTime()J
    .registers 5

    .line 535
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->mLoadStartTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private initForBidding()V
    .registers 5

    const-string v0, "initForBidding()"

    .line 155
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->logInternal(Ljava/lang/String;)V

    .line 156
    sget-object v0, Lcom/ironsource/mediationsdk/LWSProgRvSmash$SMASH_STATE;->INIT_IN_PROGRESS:Lcom/ironsource/mediationsdk/LWSProgRvSmash$SMASH_STATE;

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->setState(Lcom/ironsource/mediationsdk/LWSProgRvSmash$SMASH_STATE;)V

    .line 157
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->setCustomParams()V

    .line 159
    :try_start_d
    iget-object v0, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->mAppKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->mUserId:Ljava/lang/String;

    iget-object v3, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->mAdUnitSettings:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->initRewardedVideoForBidding(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_18} :catch_19

    goto :goto_43

    :catch_19
    move-exception v0

    .line 161
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initForBidding exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->logInternalError(Ljava/lang/String;)V

    .line 162
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 163
    new-instance v1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v2, 0x410

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->onRewardedVideoInitFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :goto_43
    return-void
.end method

.method private logAdapterCallback(Ljava/lang/String;)V
    .registers 5

    .line 584
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LWSProgRvSmash "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 585
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void
.end method

.method private logInternal(Ljava/lang/String;)V
    .registers 5

    .line 591
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LWSProgRvSmash "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 592
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void
.end method

.method private logInternalError(Ljava/lang/String;)V
    .registers 5

    .line 598
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LWSProgRvSmash "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 599
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, p1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void
.end method

.method private sendProviderEvent(I)V
    .registers 4

    const/4 v0, 0x0

    .line 616
    check-cast v0, [[Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->sendProviderEvent(I[[Ljava/lang/Object;Z)V

    return-void
.end method

.method private sendProviderEvent(I[[Ljava/lang/Object;Z)V
    .registers 10

    .line 629
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->getProviderEventData()Ljava/util/Map;

    move-result-object v0

    .line 631
    iget-object v1, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->mAuctionId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 632
    iget-object v1, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->mAuctionId:Ljava/lang/String;

    const-string v2, "auctionId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13
    if-eqz p3, :cond_2e

    .line 635
    iget-object p3, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->mPlacement:Lcom/ironsource/mediationsdk/model/Placement;

    if-eqz p3, :cond_2e

    invoke-virtual {p3}, Lcom/ironsource/mediationsdk/model/Placement;->getPlacementName()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_2e

    .line 636
    iget-object p3, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->mPlacement:Lcom/ironsource/mediationsdk/model/Placement;

    invoke-virtual {p3}, Lcom/ironsource/mediationsdk/model/Placement;->getPlacementName()Ljava/lang/String;

    move-result-object p3

    const-string v1, "placement"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 639
    :cond_2e
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->shouldAddAuctionParams(I)Z

    move-result p3

    if-eqz p3, :cond_3f

    .line 640
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object p3

    iget v1, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->mAuctionTrial:I

    iget-object v2, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->mAuctionFailReason:Ljava/lang/String;

    invoke-virtual {p3, v0, v1, v2}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->setEventAuctionParams(Ljava/util/Map;ILjava/lang/String;)V

    .line 643
    :cond_3f
    iget p3, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->mSessionDepth:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string v1, "sessionDepth"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p3, 0x1

    if-eqz p2, :cond_89

    .line 647
    :try_start_4d
    array-length v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_50
    if-ge v3, v1, :cond_89

    aget-object v4, p2, v3

    .line 648
    aget-object v5, v4, v2

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aget-object v4, v4, p3

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_5f} :catch_62

    add-int/lit8 v3, v3, 0x1

    goto :goto_50

    :catch_62
    move-exception p2

    .line 652
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v1

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " smash: RV sendProviderEvent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v3, 0x3

    invoke-virtual {v1, v2, p2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 655
    :cond_89
    new-instance p2, Lcom/ironsource/eventsmodule/EventData;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-direct {p2, p1, v1}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 656
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    const/16 p2, 0x4b3

    if-ne p1, p2, :cond_a5

    .line 661
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->getInstance()Lcom/ironsource/mediationsdk/utils/SessionDepthManager;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->increaseSessionDepth(I)V

    :cond_a5
    return-void
.end method

.method private sendProviderEventWithPlacement(I)V
    .registers 3

    const/4 v0, 0x0

    .line 604
    check-cast v0, [[Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->sendProviderEventWithPlacement(I[[Ljava/lang/Object;)V

    return-void
.end method

.method private setCustomParams()V
    .registers 4

    .line 287
    :try_start_0
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getMediationSegment()Ljava/lang/String;

    move-result-object v0

    .line 288
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 289
    iget-object v1, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-virtual {v1, v0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->setMediationSegment(Ljava/lang/String;)V

    .line 292
    :cond_13
    invoke-static {}, Lcom/ironsource/mediationsdk/config/ConfigFile;->getConfigFile()Lcom/ironsource/mediationsdk/config/ConfigFile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/config/ConfigFile;->getPluginType()Ljava/lang/String;

    move-result-object v0

    .line 293
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_48

    .line 294
    iget-object v1, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-static {}, Lcom/ironsource/mediationsdk/config/ConfigFile;->getConfigFile()Lcom/ironsource/mediationsdk/config/ConfigFile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/config/ConfigFile;->getPluginFrameworkVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/ironsource/mediationsdk/AbstractAdapter;->setPluginData(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2e} :catch_2f

    goto :goto_48

    :catch_2f
    move-exception v0

    .line 298
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCustomParams() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->logInternal(Ljava/lang/String;)V

    :cond_48
    :goto_48
    return-void
.end method

.method private setState(Lcom/ironsource/mediationsdk/LWSProgRvSmash$SMASH_STATE;)V
    .registers 4

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "current state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->mState:Lcom/ironsource/mediationsdk/LWSProgRvSmash$SMASH_STATE;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", new state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->logInternal(Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 279
    :try_start_21
    iput-object p1, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->mState:Lcom/ironsource/mediationsdk/LWSProgRvSmash$SMASH_STATE;

    .line 280
    monitor-exit v0

    return-void

    :catchall_25
    move-exception p1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_21 .. :try_end_27} :catchall_25

    throw p1
.end method

.method private shouldAddAuctionParams(I)Z
    .registers 3

    const/16 v0, 0x3e9

    if-eq p1, v0, :cond_27

    const/16 v0, 0x3ea

    if-eq p1, v0, :cond_27

    const/16 v0, 0x4b0

    if-eq p1, v0, :cond_27

    const/16 v0, 0x3ed

    if-eq p1, v0, :cond_27

    const/16 v0, 0x4b3

    if-eq p1, v0, :cond_27

    const/16 v0, 0x4b1

    if-eq p1, v0, :cond_27

    const/16 v0, 0x4b2

    if-eq p1, v0, :cond_27

    const/16 v0, 0x3ee

    if-eq p1, v0, :cond_27

    const/16 v0, 0x3f2

    if-ne p1, v0, :cond_25

    goto :goto_27

    :cond_25
    const/4 p1, 0x0

    goto :goto_28

    :cond_27
    :goto_27
    const/4 p1, 0x1

    :goto_28
    return p1
.end method

.method private startLoadTimer()V
    .registers 5

    .line 541
    iget-object v0, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/ironsource/mediationsdk/LWSProgRvSmash$1;

    invoke-direct {v1, p0}, Lcom/ironsource/mediationsdk/LWSProgRvSmash$1;-><init>(Lcom/ironsource/mediationsdk/LWSProgRvSmash;)V

    iget v2, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->mLoadTimeoutSecs:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method private stopLoadTimer()V
    .registers 2

    .line 527
    iget-object v0, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_7

    .line 528
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_7
    return-void
.end method


# virtual methods
.method public getAuctionId()Ljava/lang/String;
    .registers 2

    .line 577
    iget-object v0, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->mAuctionId:Ljava/lang/String;

    return-object v0
.end method

.method public getBiddingData()Ljava/util/Map;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 143
    :try_start_1
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->isBidder()Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->mAdUnitSettings:Lorg/json/JSONObject;

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getRewardedVideoBiddingData(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_f} :catch_10

    :cond_f
    return-object v0

    :catch_10
    move-exception v1

    .line 145
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBiddingData exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->logInternalError(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    const v2, 0x13da4

    const/4 v3, 0x2

    .line 147
    new-array v4, v3, [[Ljava/lang/Object;

    new-array v5, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "errorCode"

    aput-object v7, v5, v6

    const/16 v7, 0x1389

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v5, v8

    aput-object v5, v4, v6

    new-array v3, v3, [Ljava/lang/Object;

    const-string v5, "reason"

    aput-object v5, v3, v6

    invoke-virtual {v1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v8

    aput-object v3, v4, v8

    invoke-virtual {p0, v2, v4}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->sendProviderEvent(I[[Ljava/lang/Object;)V

    return-object v0
.end method

.method public getLoadWhileShowSupportState()Lcom/ironsource/mediationsdk/LoadWhileShowSupportState;
    .registers 2

    .line 191
    iget-object v0, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getLoadWhileShowSupportState()Lcom/ironsource/mediationsdk/LoadWhileShowSupportState;

    move-result-object v0

    return-object v0
.end method

.method public getProgrammaticValue()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method public isLoaded()Z
    .registers 3

    .line 136
    iget-object v0, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->mState:Lcom/ironsource/mediationsdk/LWSProgRvSmash$SMASH_STATE;

    sget-object v1, Lcom/ironsource/mediationsdk/LWSProgRvSmash$SMASH_STATE;->LOADED:Lcom/ironsource/mediationsdk/LWSProgRvSmash$SMASH_STATE;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isLoadingInProgress()Z
    .registers 3

    .line 130
    iget-object v0, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->mState:Lcom/ironsource/mediationsdk/LWSProgRvSmash$SMASH_STATE;

    sget-object v1, Lcom/ironsource/mediationsdk/LWSProgRvSmash$SMASH_STATE;->INIT_IN_PROGRESS:Lcom/ironsource/mediationsdk/LWSProgRvSmash$SMASH_STATE;

    if-eq v0, v1, :cond_f

    iget-object v0, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->mState:Lcom/ironsource/mediationsdk/LWSProgRvSmash$SMASH_STATE;

    sget-object v1, Lcom/ironsource/mediationsdk/LWSProgRvSmash$SMASH_STATE;->LOAD_IN_PROGRESS:Lcom/ironsource/mediationsdk/LWSProgRvSmash$SMASH_STATE;

    if-ne v0, v1, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public isReadyToShow()Z
    .registers 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 176
    :try_start_2
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->isBidder()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 177
    iget-object v2, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->mState:Lcom/ironsource/mediationsdk/LWSProgRvSmash$SMASH_STATE;

    sget-object v3, Lcom/ironsource/mediationsdk/LWSProgRvSmash$SMASH_STATE;->LOADED:Lcom/ironsource/mediationsdk/LWSProgRvSmash$SMASH_STATE;

    if-ne v2, v3, :cond_15

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->isRewardedVideoAvailable()Z

    move-result v2

    if-eqz v2, :cond_15

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    return v0

    .line 179
    :cond_17
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->isRewardedVideoAvailable()Z

    move-result v0
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_1b} :catch_1c

    return v0

    :catch_1c
    move-exception v2

    .line 182
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isReadyToShow exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->logInternalError(Ljava/lang/String;)V

    .line 183
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    const v3, 0x13da4

    const/4 v4, 0x2

    .line 184
    new-array v5, v4, [[Ljava/lang/Object;

    new-array v6, v4, [Ljava/lang/Object;

    const-string v7, "errorCode"

    aput-object v7, v6, v1

    const/16 v7, 0x138a

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v0

    aput-object v6, v5, v1

    new-array v4, v4, [Ljava/lang/Object;

    const-string v6, "reason"

    aput-object v6, v4, v1

    invoke-virtual {v2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v0

    aput-object v4, v5, v0

    invoke-virtual {p0, v3, v5}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->sendProviderEvent(I[[Ljava/lang/Object;)V

    return v1
.end method

.method public isRewardedVideoAvailable()Z
    .registers 3

    .line 171
    iget-object v0, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->mAdUnitSettings:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->isRewardedVideoAvailable(Lorg/json/JSONObject;)Z

    move-result v0

    return v0
.end method

.method public loadVideo(Ljava/lang/String;)V
    .registers 9

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadVideo() auctionId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->mAuctionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->mState:Lcom/ironsource/mediationsdk/LWSProgRvSmash$SMASH_STATE;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->logInternal(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 197
    invoke-virtual {p0, v0}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->setIsLoadCandidate(Z)V

    .line 201
    iget-object v1, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 202
    :try_start_27
    iget-object v2, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->mState:Lcom/ironsource/mediationsdk/LWSProgRvSmash$SMASH_STATE;

    .line 203
    iget-object v3, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->mState:Lcom/ironsource/mediationsdk/LWSProgRvSmash$SMASH_STATE;

    sget-object v4, Lcom/ironsource/mediationsdk/LWSProgRvSmash$SMASH_STATE;->LOAD_IN_PROGRESS:Lcom/ironsource/mediationsdk/LWSProgRvSmash$SMASH_STATE;

    if-eq v3, v4, :cond_3a

    iget-object v3, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->mState:Lcom/ironsource/mediationsdk/LWSProgRvSmash$SMASH_STATE;

    sget-object v4, Lcom/ironsource/mediationsdk/LWSProgRvSmash$SMASH_STATE;->SHOW_IN_PROGRESS:Lcom/ironsource/mediationsdk/LWSProgRvSmash$SMASH_STATE;

    if-eq v3, v4, :cond_3a

    .line 204
    sget-object v3, Lcom/ironsource/mediationsdk/LWSProgRvSmash$SMASH_STATE;->LOAD_IN_PROGRESS:Lcom/ironsource/mediationsdk/LWSProgRvSmash$SMASH_STATE;

    invoke-direct {p0, v3}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->setState(Lcom/ironsource/mediationsdk/LWSProgRvSmash$SMASH_STATE;)V

    .line 206
    :cond_3a
    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_27 .. :try_end_3b} :catchall_fc

    .line 209
    sget-object v1, Lcom/ironsource/mediationsdk/LWSProgRvSmash$SMASH_STATE;->LOAD_IN_PROGRESS:Lcom/ironsource/mediationsdk/LWSProgRvSmash$SMASH_STATE;

    const v3, 0x13da4

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-ne v2, v1, :cond_66

    .line 210
    new-array p1, v5, [[Ljava/lang/Object;

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "errorCode"

    aput-object v2, v1, v0

    const/16 v2, 0x138b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    aput-object v1, p1, v0

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "reason"

    aput-object v2, v1, v0

    const-string v0, "load during load"

    aput-object v0, v1, v4

    aput-object v1, p1, v4

    invoke-virtual {p0, v3, p1}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->sendProviderEvent(I[[Ljava/lang/Object;)V

    return-void

    .line 215
    :cond_66
    sget-object v1, Lcom/ironsource/mediationsdk/LWSProgRvSmash$SMASH_STATE;->SHOW_IN_PROGRESS:Lcom/ironsource/mediationsdk/LWSProgRvSmash$SMASH_STATE;

    if-ne v2, v1, :cond_8c

    .line 216
    new-array p1, v5, [[Ljava/lang/Object;

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "errorCode"

    aput-object v2, v1, v0

    const/16 v2, 0x138c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    aput-object v1, p1, v0

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "reason"

    aput-object v2, v1, v0

    const-string v0, "load during show"

    aput-object v0, v1, v4

    aput-object v1, p1, v4

    invoke-virtual {p0, v3, p1}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->sendProviderEvent(I[[Ljava/lang/Object;)V

    return-void

    .line 220
    :cond_8c
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->startLoadTimer()V

    .line 221
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->mLoadStartTime:J

    const/16 v1, 0x3e9

    .line 222
    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->sendProviderEvent(I)V

    .line 225
    :try_start_9f
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->isBidder()Z

    move-result v1

    if-eqz v1, :cond_ad

    .line 226
    iget-object v1, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->mAdUnitSettings:Lorg/json/JSONObject;

    invoke-virtual {v1, v2, p0, p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->loadRewardedVideoForBidding(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;Ljava/lang/String;)V

    return-void

    .line 231
    :cond_ad
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->setCustomParams()V

    .line 232
    iget-object p1, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->mAppKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->mUserId:Ljava/lang/String;

    iget-object v6, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->mAdUnitSettings:Lorg/json/JSONObject;

    invoke-virtual {p1, v1, v2, v6, p0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->initRewardedVideo(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;)V
    :try_end_bb
    .catch Ljava/lang/Throwable; {:try_start_9f .. :try_end_bb} :catch_bc

    goto :goto_fb

    :catch_bc
    move-exception p1

    .line 236
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadVideo exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->logInternalError(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 238
    new-array v1, v5, [[Ljava/lang/Object;

    new-array v2, v5, [Ljava/lang/Object;

    const-string v6, "errorCode"

    aput-object v6, v2, v0

    const/16 v6, 0x138d

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v4

    aput-object v2, v1, v0

    new-array v2, v5, [Ljava/lang/Object;

    const-string v5, "reason"

    aput-object v5, v2, v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v4

    aput-object v2, v1, v4

    invoke-virtual {p0, v3, v1}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->sendProviderEvent(I[[Ljava/lang/Object;)V

    :goto_fb
    return-void

    :catchall_fc
    move-exception p1

    .line 206
    :try_start_fd
    monitor-exit v1
    :try_end_fe
    .catchall {:try_start_fd .. :try_end_fe} :catchall_fc

    throw p1
.end method

.method public onRewardedVideoAdClicked()V
    .registers 3

    const-string v0, "onRewardedVideoAdClicked"

    .line 511
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->logAdapterCallback(Ljava/lang/String;)V

    .line 512
    iget-object v0, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->mListener:Lcom/ironsource/mediationsdk/LWSRvManagerListener;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->mPlacement:Lcom/ironsource/mediationsdk/model/Placement;

    invoke-interface {v0, p0, v1}, Lcom/ironsource/mediationsdk/LWSRvManagerListener;->onRewardedVideoAdClicked(Lcom/ironsource/mediationsdk/LWSProgRvSmash;Lcom/ironsource/mediationsdk/model/Placement;)V

    const/16 v0, 0x3ee

    .line 513
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->sendProviderEventWithPlacement(I)V

    return-void
.end method

.method public onRewardedVideoAdClosed()V
    .registers 9

    const-string v0, "onRewardedVideoAdClosed"

    .line 433
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->logAdapterCallback(Ljava/lang/String;)V

    .line 435
    iget-object v0, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 436
    :try_start_8
    iget-object v1, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->mState:Lcom/ironsource/mediationsdk/LWSProgRvSmash$SMASH_STATE;

    sget-object v2, Lcom/ironsource/mediationsdk/LWSProgRvSmash$SMASH_STATE;->SHOW_IN_PROGRESS:Lcom/ironsource/mediationsdk/LWSProgRvSmash$SMASH_STATE;

    if-eq v1, v2, :cond_4d

    const/16 v1, 0x4b3

    .line 437
    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->sendProviderEventWithPlacement(I)V

    const v1, 0x13da4

    const/4 v2, 0x2

    .line 438
    new-array v3, v2, [[Ljava/lang/Object;

    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "errorCode"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/16 v5, 0x1391

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v4, v7

    aput-object v4, v3, v6

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "reason"

    aput-object v4, v2, v6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "adClosed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->mState:Lcom/ironsource/mediationsdk/LWSProgRvSmash$SMASH_STATE;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v7

    aput-object v2, v3, v7

    invoke-virtual {p0, v1, v3}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->sendProviderEvent(I[[Ljava/lang/Object;)V

    .line 439
    monitor-exit v0

    return-void

    .line 441
    :cond_4d
    sget-object v1, Lcom/ironsource/mediationsdk/LWSProgRvSmash$SMASH_STATE;->ENDED:Lcom/ironsource/mediationsdk/LWSProgRvSmash$SMASH_STATE;

    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->setState(Lcom/ironsource/mediationsdk/LWSProgRvSmash$SMASH_STATE;)V

    .line 442
    monitor-exit v0
    :try_end_53
    .catchall {:try_start_8 .. :try_end_53} :catchall_64

    .line 444
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->mClosedTime:J

    .line 445
    iget-object v0, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->mListener:Lcom/ironsource/mediationsdk/LWSRvManagerListener;

    invoke-interface {v0, p0}, Lcom/ironsource/mediationsdk/LWSRvManagerListener;->onRewardedVideoAdClosed(Lcom/ironsource/mediationsdk/LWSProgRvSmash;)V

    return-void

    :catchall_64
    move-exception v1

    .line 442
    :try_start_65
    monitor-exit v0
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_64

    throw v1
.end method

.method public onRewardedVideoAdEnded()V
    .registers 2

    const-string v0, "onRewardedVideoAdEnded"

    .line 452
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->logAdapterCallback(Ljava/lang/String;)V

    .line 453
    iget-object v0, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->mListener:Lcom/ironsource/mediationsdk/LWSRvManagerListener;

    invoke-interface {v0, p0}, Lcom/ironsource/mediationsdk/LWSRvManagerListener;->onRewardedVideoAdEnded(Lcom/ironsource/mediationsdk/LWSProgRvSmash;)V

    const/16 v0, 0x4b5

    .line 454
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->sendProviderEventWithPlacement(I)V

    return-void
.end method

.method public onRewardedVideoAdOpened()V
    .registers 2

    const-string v0, "onRewardedVideoAdOpened"

    .line 407
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->logAdapterCallback(Ljava/lang/String;)V

    .line 408
    iget-object v0, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->mListener:Lcom/ironsource/mediationsdk/LWSRvManagerListener;

    invoke-interface {v0, p0}, Lcom/ironsource/mediationsdk/LWSRvManagerListener;->onRewardedVideoAdOpened(Lcom/ironsource/mediationsdk/LWSProgRvSmash;)V

    const/16 v0, 0x3ed

    .line 409
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->sendProviderEventWithPlacement(I)V

    return-void
.end method

.method public onRewardedVideoAdRewarded()V
    .registers 9

    const-string v0, "onRewardedVideoAdRewarded"

    .line 462
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->logAdapterCallback(Ljava/lang/String;)V

    .line 463
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 464
    iget-object v2, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->mListener:Lcom/ironsource/mediationsdk/LWSRvManagerListener;

    iget-object v3, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->mPlacement:Lcom/ironsource/mediationsdk/model/Placement;

    invoke-interface {v2, p0, v3}, Lcom/ironsource/mediationsdk/LWSRvManagerListener;->onRewardedVideoAdRewarded(Lcom/ironsource/mediationsdk/LWSProgRvSmash;Lcom/ironsource/mediationsdk/model/Placement;)V

    .line 465
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->getProviderEventData()Ljava/util/Map;

    move-result-object v2

    .line 467
    iget-object v3, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->mPlacement:Lcom/ironsource/mediationsdk/model/Placement;

    if-eqz v3, :cond_40

    .line 468
    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/Placement;->getPlacementName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "placement"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    iget-object v3, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->mPlacement:Lcom/ironsource/mediationsdk/model/Placement;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/Placement;->getRewardName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "rewardName"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    iget-object v3, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->mPlacement:Lcom/ironsource/mediationsdk/model/Placement;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/Placement;->getRewardAmount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "rewardAmount"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    :cond_40
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/IronSourceObject;->getDynamicUserId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5b

    .line 474
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/IronSourceObject;->getDynamicUserId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "dynamicUserId"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    :cond_5b
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/IronSourceObject;->getRvServerParams()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_a2

    .line 478
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/IronSourceObject;->getRvServerParams()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_75
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 479
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "custom_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/IronSourceObject;->getRvServerParams()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_75

    .line 483
    :cond_a2
    iget-object v3, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->mAuctionId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b1

    .line 484
    iget-object v3, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->mAuctionId:Ljava/lang/String;

    const-string v4, "auctionId"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b1
    const/16 v3, 0x3f2

    .line 487
    invoke-direct {p0, v3}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->shouldAddAuctionParams(I)Z

    move-result v4

    if-eqz v4, :cond_c4

    .line 488
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v4

    iget v5, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->mAuctionTrial:I

    iget-object v6, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->mAuctionFailReason:Ljava/lang/String;

    invoke-virtual {v4, v2, v5, v6}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->setEventAuctionParams(Ljava/util/Map;ILjava/lang/String;)V

    .line 491
    :cond_c4
    iget v4, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->mSessionDepth:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "sessionDepth"

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    new-instance v4, Lcom/ironsource/eventsmodule/EventData;

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-direct {v4, v3, v5}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 495
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/ironsource/eventsmodule/EventData;->getTimeStamp()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->mAppKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 496
    invoke-static {v2}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getTransId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "transId"

    .line 497
    invoke-virtual {v4, v3, v2}, Lcom/ironsource/eventsmodule/EventData;->addToAdditionalData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 498
    iget-wide v2, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->mClosedTime:J

    const-wide/16 v5, 0x0

    cmp-long v7, v2, v5

    if-eqz v7, :cond_12d

    sub-long/2addr v0, v2

    .line 500
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRewardedVideoAdRewarded timeAfterClosed="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->logInternal(Ljava/lang/String;)V

    .line 501
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "duration"

    invoke-virtual {v4, v1, v0}, Lcom/ironsource/eventsmodule/EventData;->addToAdditionalData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 504
    :cond_12d
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    return-void
.end method

.method public onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .registers 9

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRewardedVideoAdShowFailed error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->logAdapterCallback(Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 355
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

    new-array v2, v0, [Ljava/lang/Object;

    const-string v4, "reason"

    aput-object v4, v2, v3

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v5

    aput-object v2, v1, v5

    const/16 v2, 0x4b2

    invoke-virtual {p0, v2, v1}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->sendProviderEventWithPlacement(I[[Ljava/lang/Object;)V

    .line 357
    iget-object v1, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 358
    :try_start_45
    iget-object v2, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->mState:Lcom/ironsource/mediationsdk/LWSProgRvSmash$SMASH_STATE;

    sget-object v4, Lcom/ironsource/mediationsdk/LWSProgRvSmash$SMASH_STATE;->SHOW_IN_PROGRESS:Lcom/ironsource/mediationsdk/LWSProgRvSmash$SMASH_STATE;

    if-eq v2, v4, :cond_82

    const p1, 0x13da4

    .line 359
    new-array v2, v0, [[Ljava/lang/Object;

    new-array v4, v0, [Ljava/lang/Object;

    const-string v6, "errorCode"

    aput-object v6, v4, v3

    const/16 v6, 0x138e

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    aput-object v4, v2, v3

    new-array v0, v0, [Ljava/lang/Object;

    const-string v4, "reason"

    aput-object v4, v0, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showFailed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->mState:Lcom/ironsource/mediationsdk/LWSProgRvSmash$SMASH_STATE;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v5

    aput-object v0, v2, v5

    invoke-virtual {p0, p1, v2}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->sendProviderEvent(I[[Ljava/lang/Object;)V

    .line 360
    monitor-exit v1

    return-void

    .line 362
    :cond_82
    sget-object v0, Lcom/ironsource/mediationsdk/LWSProgRvSmash$SMASH_STATE;->ENDED:Lcom/ironsource/mediationsdk/LWSProgRvSmash$SMASH_STATE;

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->setState(Lcom/ironsource/mediationsdk/LWSProgRvSmash$SMASH_STATE;)V

    .line 363
    monitor-exit v1
    :try_end_88
    .catchall {:try_start_45 .. :try_end_88} :catchall_8e

    .line 365
    iget-object v0, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->mListener:Lcom/ironsource/mediationsdk/LWSRvManagerListener;

    invoke-interface {v0, p1, p0}, Lcom/ironsource/mediationsdk/LWSRvManagerListener;->onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/LWSProgRvSmash;)V

    return-void

    :catchall_8e
    move-exception p1

    .line 363
    :try_start_8f
    monitor-exit v1
    :try_end_90
    .catchall {:try_start_8f .. :try_end_90} :catchall_8e

    throw p1
.end method

.method public onRewardedVideoAdStarted()V
    .registers 2

    const-string v0, "onRewardedVideoAdStarted"

    .line 416
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->logAdapterCallback(Ljava/lang/String;)V

    .line 417
    iget-object v0, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->mListener:Lcom/ironsource/mediationsdk/LWSRvManagerListener;

    invoke-interface {v0, p0}, Lcom/ironsource/mediationsdk/LWSRvManagerListener;->onRewardedVideoAdStarted(Lcom/ironsource/mediationsdk/LWSProgRvSmash;)V

    const/16 v0, 0x4b4

    .line 418
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->sendProviderEventWithPlacement(I)V

    return-void
.end method

.method public onRewardedVideoAdVisible()V
    .registers 2

    const-string v0, "onRewardedVideoAdVisible"

    .line 425
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->logAdapterCallback(Ljava/lang/String;)V

    const/16 v0, 0x4b6

    .line 426
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->sendProviderEventWithPlacement(I)V

    return-void
.end method

.method public onRewardedVideoAvailabilityChanged(Z)V
    .registers 9

    .line 307
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->stopLoadTimer()V

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRewardedVideoAvailabilityChanged available="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->mState:Lcom/ironsource/mediationsdk/LWSProgRvSmash$SMASH_STATE;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/LWSProgRvSmash$SMASH_STATE;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->logAdapterCallback(Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 312
    :try_start_28
    iget-object v1, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->mState:Lcom/ironsource/mediationsdk/LWSProgRvSmash$SMASH_STATE;

    sget-object v2, Lcom/ironsource/mediationsdk/LWSProgRvSmash$SMASH_STATE;->LOAD_IN_PROGRESS:Lcom/ironsource/mediationsdk/LWSProgRvSmash$SMASH_STATE;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_3c

    if-eqz p1, :cond_35

    .line 313
    sget-object v1, Lcom/ironsource/mediationsdk/LWSProgRvSmash$SMASH_STATE;->LOADED:Lcom/ironsource/mediationsdk/LWSProgRvSmash$SMASH_STATE;

    goto :goto_37

    :cond_35
    sget-object v1, Lcom/ironsource/mediationsdk/LWSProgRvSmash$SMASH_STATE;->NOT_LOADED:Lcom/ironsource/mediationsdk/LWSProgRvSmash$SMASH_STATE;

    :goto_37
    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->setState(Lcom/ironsource/mediationsdk/LWSProgRvSmash$SMASH_STATE;)V

    const/4 v1, 0x0

    goto :goto_3d

    :cond_3c
    const/4 v1, 0x1

    .line 317
    :goto_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_28 .. :try_end_3e} :catchall_c2

    const/4 v0, 0x2

    if-eqz v1, :cond_96

    if-eqz p1, :cond_5b

    const/16 p1, 0x4b7

    .line 324
    new-array v1, v3, [[Ljava/lang/Object;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "ext1"

    aput-object v2, v0, v4

    iget-object v2, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->mState:Lcom/ironsource/mediationsdk/LWSProgRvSmash$SMASH_STATE;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/LWSProgRvSmash$SMASH_STATE;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    aput-object v0, v1, v4

    invoke-virtual {p0, p1, v1}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->sendProviderEvent(I[[Ljava/lang/Object;)V

    goto :goto_95

    :cond_5b
    const/16 p1, 0x4b8

    const/4 v1, 0x3

    .line 326
    new-array v1, v1, [[Ljava/lang/Object;

    new-array v2, v0, [Ljava/lang/Object;

    const-string v5, "errorCode"

    aput-object v5, v2, v4

    const/16 v5, 0x40a

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    aput-object v2, v1, v4

    new-array v2, v0, [Ljava/lang/Object;

    const-string v5, "duration"

    aput-object v5, v2, v4

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->getElapsedTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v3

    aput-object v2, v1, v3

    new-array v2, v0, [Ljava/lang/Object;

    const-string v5, "ext1"

    aput-object v5, v2, v4

    iget-object v4, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->mState:Lcom/ironsource/mediationsdk/LWSProgRvSmash$SMASH_STATE;

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/LWSProgRvSmash$SMASH_STATE;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    aput-object v2, v1, v0

    invoke-virtual {p0, p1, v1}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->sendProviderEvent(I[[Ljava/lang/Object;)V

    :goto_95
    return-void

    :cond_96
    if-eqz p1, :cond_9b

    const/16 v1, 0x3ea

    goto :goto_9d

    :cond_9b
    const/16 v1, 0x4b0

    .line 331
    :goto_9d
    new-array v2, v3, [[Ljava/lang/Object;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v5, "duration"

    aput-object v5, v0, v4

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->getElapsedTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v0, v3

    aput-object v0, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->sendProviderEvent(I[[Ljava/lang/Object;)V

    if-eqz p1, :cond_bc

    .line 334
    iget-object p1, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->mListener:Lcom/ironsource/mediationsdk/LWSRvManagerListener;

    invoke-interface {p1, p0}, Lcom/ironsource/mediationsdk/LWSRvManagerListener;->onLoadSuccess(Lcom/ironsource/mediationsdk/LWSProgRvSmash;)V

    goto :goto_c1

    .line 336
    :cond_bc
    iget-object p1, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->mListener:Lcom/ironsource/mediationsdk/LWSRvManagerListener;

    invoke-interface {p1, p0}, Lcom/ironsource/mediationsdk/LWSRvManagerListener;->onLoadError(Lcom/ironsource/mediationsdk/LWSProgRvSmash;)V

    :goto_c1
    return-void

    :catchall_c2
    move-exception p1

    .line 317
    :try_start_c3
    monitor-exit v0
    :try_end_c4
    .catchall {:try_start_c3 .. :try_end_c4} :catchall_c2

    throw p1
.end method

.method public onRewardedVideoInitFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .registers 10

    .line 387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRewardedVideoInitFailed error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->logAdapterCallback(Ljava/lang/String;)V

    .line 388
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->stopLoadTimer()V

    const/4 v0, 0x2

    .line 390
    new-array v1, v0, [[Ljava/lang/Object;

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "errorCode"

    aput-object v4, v2, v3

    const/16 v4, 0x409

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v2, v5

    aput-object v2, v1, v3

    new-array v2, v0, [Ljava/lang/Object;

    const-string v4, "duration"

    aput-object v4, v2, v3

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->getElapsedTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v5

    aput-object v2, v1, v5

    const/16 v2, 0x4b0

    invoke-virtual {p0, v2, v1}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->sendProviderEvent(I[[Ljava/lang/Object;)V

    const/4 v1, 0x3

    .line 391
    new-array v1, v1, [[Ljava/lang/Object;

    new-array v2, v0, [Ljava/lang/Object;

    const-string v4, "errorCode"

    aput-object v4, v2, v3

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v5

    aput-object v2, v1, v3

    new-array v2, v0, [Ljava/lang/Object;

    const-string v4, "reason"

    aput-object v4, v2, v3

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v5

    aput-object v2, v1, v5

    new-array p1, v0, [Ljava/lang/Object;

    const-string v2, "duration"

    aput-object v2, p1, v3

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->getElapsedTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, p1, v5

    aput-object p1, v1, v0

    const/16 p1, 0x4bc

    invoke-virtual {p0, p1, v1}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->sendProviderEvent(I[[Ljava/lang/Object;)V

    .line 393
    iget-object p1, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->mStateLock:Ljava/lang/Object;

    monitor-enter p1

    .line 394
    :try_start_84
    iget-object v1, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->mState:Lcom/ironsource/mediationsdk/LWSProgRvSmash$SMASH_STATE;

    sget-object v2, Lcom/ironsource/mediationsdk/LWSProgRvSmash$SMASH_STATE;->INIT_IN_PROGRESS:Lcom/ironsource/mediationsdk/LWSProgRvSmash$SMASH_STATE;

    if-eq v1, v2, :cond_c1

    const v1, 0x13da4

    .line 395
    new-array v2, v0, [[Ljava/lang/Object;

    new-array v4, v0, [Ljava/lang/Object;

    const-string v6, "errorCode"

    aput-object v6, v4, v3

    const/16 v6, 0x1390

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    aput-object v4, v2, v3

    new-array v0, v0, [Ljava/lang/Object;

    const-string v4, "reason"

    aput-object v4, v0, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initFailed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->mState:Lcom/ironsource/mediationsdk/LWSProgRvSmash$SMASH_STATE;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v5

    aput-object v0, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->sendProviderEvent(I[[Ljava/lang/Object;)V

    .line 396
    monitor-exit p1

    return-void

    .line 398
    :cond_c1
    sget-object v0, Lcom/ironsource/mediationsdk/LWSProgRvSmash$SMASH_STATE;->NO_INIT:Lcom/ironsource/mediationsdk/LWSProgRvSmash$SMASH_STATE;

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->setState(Lcom/ironsource/mediationsdk/LWSProgRvSmash$SMASH_STATE;)V

    .line 399
    monitor-exit p1
    :try_end_c7
    .catchall {:try_start_84 .. :try_end_c7} :catchall_cd

    .line 400
    iget-object p1, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->mListener:Lcom/ironsource/mediationsdk/LWSRvManagerListener;

    invoke-interface {p1, p0}, Lcom/ironsource/mediationsdk/LWSRvManagerListener;->onLoadError(Lcom/ironsource/mediationsdk/LWSProgRvSmash;)V

    return-void

    :catchall_cd
    move-exception v0

    .line 399
    :try_start_ce
    monitor-exit p1
    :try_end_cf
    .catchall {:try_start_ce .. :try_end_cf} :catchall_cd

    throw v0
.end method

.method public onRewardedVideoInitSuccess()V
    .registers 9

    const-string v0, "onRewardedVideoInitSuccess"

    .line 372
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->logAdapterCallback(Ljava/lang/String;)V

    .line 374
    iget-object v0, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 375
    :try_start_8
    iget-object v1, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->mState:Lcom/ironsource/mediationsdk/LWSProgRvSmash$SMASH_STATE;

    sget-object v2, Lcom/ironsource/mediationsdk/LWSProgRvSmash$SMASH_STATE;->INIT_IN_PROGRESS:Lcom/ironsource/mediationsdk/LWSProgRvSmash$SMASH_STATE;

    if-eq v1, v2, :cond_48

    const v1, 0x13da4

    const/4 v2, 0x2

    .line 376
    new-array v3, v2, [[Ljava/lang/Object;

    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "errorCode"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/16 v5, 0x138f

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v4, v7

    aput-object v4, v3, v6

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "reason"

    aput-object v4, v2, v6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initSuccess: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->mState:Lcom/ironsource/mediationsdk/LWSProgRvSmash$SMASH_STATE;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v7

    aput-object v2, v3, v7

    invoke-virtual {p0, v1, v3}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->sendProviderEvent(I[[Ljava/lang/Object;)V

    .line 377
    monitor-exit v0

    return-void

    .line 379
    :cond_48
    sget-object v1, Lcom/ironsource/mediationsdk/LWSProgRvSmash$SMASH_STATE;->NOT_LOADED:Lcom/ironsource/mediationsdk/LWSProgRvSmash$SMASH_STATE;

    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->setState(Lcom/ironsource/mediationsdk/LWSProgRvSmash$SMASH_STATE;)V

    .line 380
    monitor-exit v0

    return-void

    :catchall_4f
    move-exception v1

    monitor-exit v0
    :try_end_51
    .catchall {:try_start_8 .. :try_end_51} :catchall_4f

    throw v1
.end method

.method public onRewardedVideoLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .registers 8

    const/4 v0, 0x3

    .line 347
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

    move-result-object p1

    aput-object p1, v2, v5

    aput-object v2, v0, v5

    new-array p1, v1, [Ljava/lang/Object;

    const-string v2, "duration"

    aput-object v2, p1, v3

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->getElapsedTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, p1, v5

    aput-object p1, v0, v1

    const/16 p1, 0x4bc

    invoke-virtual {p0, p1, v0}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->sendProviderEvent(I[[Ljava/lang/Object;)V

    return-void
.end method

.method public onRewardedVideoLoadSuccess()V
    .registers 1

    return-void
.end method

.method public reportShowChance(Z)V
    .registers 7

    const/4 v0, 0x1

    .line 245
    new-array v1, v0, [[Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "status"

    aput-object v4, v2, v3

    if-eqz p1, :cond_10

    const-string p1, "true"

    goto :goto_12

    :cond_10
    const-string p1, "false"

    :goto_12
    aput-object p1, v2, v0

    aput-object v2, v1, v3

    const/16 p1, 0x4b9

    invoke-virtual {p0, p1, v1}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->sendProviderEventWithPlacement(I[[Ljava/lang/Object;)V

    return-void
.end method

.method public sendProviderEvent(I[[Ljava/lang/Object;)V
    .registers 4

    const/4 v0, 0x0

    .line 623
    invoke-direct {p0, p1, p2, v0}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->sendProviderEvent(I[[Ljava/lang/Object;Z)V

    return-void
.end method

.method public sendProviderEventWithPlacement(I[[Ljava/lang/Object;)V
    .registers 4

    const/4 v0, 0x1

    .line 610
    invoke-direct {p0, p1, p2, v0}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->sendProviderEvent(I[[Ljava/lang/Object;Z)V

    return-void
.end method

.method public setCappedPerSession()V
    .registers 4

    .line 269
    iget-object v0, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    sget-object v1, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->CAPPED_PER_SESSION:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    const-string v2, "rewardedvideo"

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/mediationsdk/AbstractAdapter;->setMediationState(Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;Ljava/lang/String;)V

    const/16 v0, 0x579

    .line 270
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->sendProviderEvent(I)V

    return-void
.end method

.method public showVideo(Lcom/ironsource/mediationsdk/model/Placement;)V
    .registers 4

    .line 251
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->stopLoadTimer()V

    const-string v0, "showVideo()"

    .line 252
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->logInternal(Ljava/lang/String;)V

    .line 253
    iput-object p1, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->mPlacement:Lcom/ironsource/mediationsdk/model/Placement;

    .line 254
    sget-object p1, Lcom/ironsource/mediationsdk/LWSProgRvSmash$SMASH_STATE;->SHOW_IN_PROGRESS:Lcom/ironsource/mediationsdk/LWSProgRvSmash$SMASH_STATE;

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->setState(Lcom/ironsource/mediationsdk/LWSProgRvSmash$SMASH_STATE;)V

    const/16 p1, 0x4b1

    .line 255
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->sendProviderEventWithPlacement(I)V

    .line 258
    :try_start_14
    iget-object p1, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    iget-object v0, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->mAdUnitSettings:Lorg/json/JSONObject;

    invoke-virtual {p1, v0, p0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->showRewardedVideo(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_1b} :catch_1c

    goto :goto_46

    :catch_1c
    move-exception p1

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showVideo exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->logInternalError(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 262
    new-instance v0, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v1, 0x40e

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :goto_46
    return-void
.end method
