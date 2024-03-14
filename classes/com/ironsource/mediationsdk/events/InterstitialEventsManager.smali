.class public Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;
.super Lcom/ironsource/mediationsdk/events/BaseEventsManager;
.source "InterstitialEventsManager.java"


# static fields
.field private static sInstance:Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;


# instance fields
.field private mCurrentISPlacement:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 22
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;-><init>()V

    const-string v0, "ironbeast"

    .line 23
    iput-object v0, p0, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->mFormatterType:Ljava/lang/String;

    const/4 v0, 0x2

    .line 24
    iput v0, p0, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->mAdUnitType:I

    const-string v0, "IS"

    .line 25
    iput-object v0, p0, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->mEventType:Ljava/lang/String;

    const-string v0, ""

    .line 26
    iput-object v0, p0, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->mCurrentISPlacement:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;
    .registers 2

    const-class v0, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    monitor-enter v0

    .line 30
    :try_start_3
    sget-object v1, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->sInstance:Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    if-nez v1, :cond_13

    .line 31
    new-instance v1, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    invoke-direct {v1}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;-><init>()V

    sput-object v1, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->sInstance:Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    .line 32
    sget-object v1, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->sInstance:Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->initState()V

    .line 35
    :cond_13
    sget-object v1, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->sInstance:Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;
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
    .registers 2

    .line 74
    iget-object p1, p0, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->mCurrentISPlacement:Ljava/lang/String;

    return-object p1
.end method

.method protected getSessionDepth(Lcom/ironsource/eventsmodule/EventData;)I
    .registers 4

    .line 63
    invoke-virtual {p1}, Lcom/ironsource/eventsmodule/EventData;->getEventId()I

    move-result v0

    const/16 v1, 0xbb8

    if-lt v0, v1, :cond_12

    invoke-virtual {p1}, Lcom/ironsource/eventsmodule/EventData;->getEventId()I

    move-result p1

    const/16 v0, 0xfa0

    if-ge p1, v0, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    .line 64
    :goto_13
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->getInstance()Lcom/ironsource/mediationsdk/utils/SessionDepthManager;

    move-result-object v0

    if-eqz p1, :cond_1b

    const/4 p1, 0x3

    goto :goto_1c

    :cond_1b
    const/4 p1, 0x2

    :goto_1c
    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->getSessionDepth(I)I

    move-result p1

    return p1
.end method

.method protected initConnectivitySensitiveEventsSet()V
    .registers 3

    .line 80
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->mConnectivitySensitiveEventsSet:Ljava/util/Set;

    const/16 v1, 0x7d1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->mConnectivitySensitiveEventsSet:Ljava/util/Set;

    const/16 v1, 0x7d2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->mConnectivitySensitiveEventsSet:Ljava/util/Set;

    const/16 v1, 0x7d4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 83
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->mConnectivitySensitiveEventsSet:Ljava/util/Set;

    const/16 v1, 0x8a3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->mConnectivitySensitiveEventsSet:Ljava/util/Set;

    const/16 v1, 0x8a4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected isTriggerEvent(Lcom/ironsource/eventsmodule/EventData;)Z
    .registers 3

    .line 51
    invoke-virtual {p1}, Lcom/ironsource/eventsmodule/EventData;->getEventId()I

    move-result p1

    const/16 v0, 0x89c

    if-eq p1, v0, :cond_23

    const/16 v0, 0x7d4

    if-eq p1, v0, :cond_23

    const/16 v0, 0x7d5

    if-eq p1, v0, :cond_23

    const/16 v0, 0x8fd

    if-eq p1, v0, :cond_23

    const/16 v0, 0x8fc

    if-eq p1, v0, :cond_23

    const/16 v0, 0xbbd

    if-eq p1, v0, :cond_23

    const/16 v0, 0xbc7

    if-ne p1, v0, :cond_21

    goto :goto_23

    :cond_21
    const/4 p1, 0x0

    goto :goto_24

    :cond_23
    :goto_23
    const/4 p1, 0x1

    :goto_24
    return p1
.end method

.method protected setCurrentPlacement(Lcom/ironsource/eventsmodule/EventData;)V
    .registers 3

    .line 69
    invoke-virtual {p1}, Lcom/ironsource/eventsmodule/EventData;->getAdditionalDataJSON()Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "placement"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->mCurrentISPlacement:Ljava/lang/String;

    return-void
.end method

.method protected shouldExtractCurrentPlacement(Lcom/ironsource/eventsmodule/EventData;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method protected shouldIncludeCurrentPlacement(Lcom/ironsource/eventsmodule/EventData;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method
