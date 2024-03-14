.class public Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;
.super Lcom/ironsource/mediationsdk/events/BaseEventsManager;
.source "RewardedVideoEventsManager.java"


# static fields
.field private static sInstance:Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;


# instance fields
.field private mCurrentOWPlacement:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 22
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;-><init>()V

    const-string v0, "outcome"

    .line 23
    iput-object v0, p0, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->mFormatterType:Ljava/lang/String;

    const/4 v0, 0x3

    .line 24
    iput v0, p0, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->mAdUnitType:I

    const-string v0, "RV"

    .line 25
    iput-object v0, p0, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->mEventType:Ljava/lang/String;

    const-string v0, ""

    .line 26
    iput-object v0, p0, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->mCurrentOWPlacement:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;
    .registers 2

    const-class v0, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    monitor-enter v0

    .line 30
    :try_start_3
    sget-object v1, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->sInstance:Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    if-nez v1, :cond_13

    .line 31
    new-instance v1, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    invoke-direct {v1}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;-><init>()V

    sput-object v1, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->sInstance:Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    .line 32
    sget-object v1, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->sInstance:Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->initState()V

    .line 34
    :cond_13
    sget-object v1, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->sInstance:Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_17

    monitor-exit v0

    return-object v1

    :catchall_17
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method protected getCurrentPlacement(I)Ljava/lang/String;
    .registers 3

    const/16 v0, 0xf

    if-eq p1, v0, :cond_10

    const/16 v0, 0x12c

    if-lt p1, v0, :cond_d

    const/16 v0, 0x190

    if-ge p1, v0, :cond_d

    goto :goto_10

    :cond_d
    const-string p1, ""

    return-object p1

    .line 81
    :cond_10
    :goto_10
    iget-object p1, p0, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->mCurrentOWPlacement:Ljava/lang/String;

    return-object p1
.end method

.method protected getSessionDepth(Lcom/ironsource/eventsmodule/EventData;)I
    .registers 4

    .line 64
    invoke-virtual {p1}, Lcom/ironsource/eventsmodule/EventData;->getEventId()I

    move-result v0

    const/16 v1, 0xf

    if-eq v0, v1, :cond_23

    invoke-virtual {p1}, Lcom/ironsource/eventsmodule/EventData;->getEventId()I

    move-result v0

    const/16 v1, 0x12c

    if-lt v0, v1, :cond_19

    invoke-virtual {p1}, Lcom/ironsource/eventsmodule/EventData;->getEventId()I

    move-result p1

    const/16 v0, 0x190

    if-ge p1, v0, :cond_19

    goto :goto_23

    .line 67
    :cond_19
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->getInstance()Lcom/ironsource/mediationsdk/utils/SessionDepthManager;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->getSessionDepth(I)I

    move-result p1

    return p1

    .line 65
    :cond_23
    :goto_23
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->getInstance()Lcom/ironsource/mediationsdk/utils/SessionDepthManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->getSessionDepth(I)I

    move-result p1

    return p1
.end method

.method protected initConnectivitySensitiveEventsSet()V
    .registers 3

    .line 90
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->mConnectivitySensitiveEventsSet:Ljava/util/Set;

    const/16 v1, 0x3e9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 91
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->mConnectivitySensitiveEventsSet:Ljava/util/Set;

    const/16 v1, 0x4b9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->mConnectivitySensitiveEventsSet:Ljava/util/Set;

    const/16 v1, 0x4ba

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->mConnectivitySensitiveEventsSet:Ljava/util/Set;

    const/16 v1, 0x4bb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected isTriggerEvent(Lcom/ironsource/eventsmodule/EventData;)Z
    .registers 3

    .line 49
    invoke-virtual {p1}, Lcom/ironsource/eventsmodule/EventData;->getEventId()I

    move-result p1

    const/16 v0, 0xe

    if-eq p1, v0, :cond_2b

    const/16 v0, 0x202

    if-eq p1, v0, :cond_2b

    const/16 v0, 0x131

    if-eq p1, v0, :cond_2b

    const/16 v0, 0x3eb

    if-eq p1, v0, :cond_2b

    const/16 v0, 0x3ed

    if-eq p1, v0, :cond_2b

    const/16 v0, 0x4b3

    if-eq p1, v0, :cond_2b

    const/16 v0, 0x3f2

    if-eq p1, v0, :cond_2b

    const/16 v0, 0x515

    if-eq p1, v0, :cond_2b

    const/16 v0, 0x516

    if-ne p1, v0, :cond_29

    goto :goto_2b

    :cond_29
    const/4 p1, 0x0

    goto :goto_2c

    :cond_2b
    :goto_2b
    const/4 p1, 0x1

    :goto_2c
    return p1
.end method

.method protected setCurrentPlacement(Lcom/ironsource/eventsmodule/EventData;)V
    .registers 4

    .line 73
    invoke-virtual {p1}, Lcom/ironsource/eventsmodule/EventData;->getEventId()I

    move-result v0

    const/16 v1, 0xf

    if-eq v0, v1, :cond_18

    invoke-virtual {p1}, Lcom/ironsource/eventsmodule/EventData;->getEventId()I

    move-result v0

    const/16 v1, 0x12c

    if-lt v0, v1, :cond_24

    invoke-virtual {p1}, Lcom/ironsource/eventsmodule/EventData;->getEventId()I

    move-result v0

    const/16 v1, 0x190

    if-ge v0, v1, :cond_24

    .line 74
    :cond_18
    invoke-virtual {p1}, Lcom/ironsource/eventsmodule/EventData;->getAdditionalDataJSON()Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "placement"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->mCurrentOWPlacement:Ljava/lang/String;

    :cond_24
    return-void
.end method

.method protected shouldExtractCurrentPlacement(Lcom/ironsource/eventsmodule/EventData;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method protected shouldIncludeCurrentPlacement(Lcom/ironsource/eventsmodule/EventData;)Z
    .registers 3

    .line 44
    invoke-virtual {p1}, Lcom/ironsource/eventsmodule/EventData;->getEventId()I

    move-result p1

    const/16 v0, 0x131

    if-ne p1, v0, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method
