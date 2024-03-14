.class public Lcom/ironsource/sdk/Events/ISNEventsTracker;
.super Ljava/lang/Object;
.source "ISNEventsTracker.java"


# static fields
.field private static eventsTrackerInstance:Lcom/ironsource/sdk/Events/ISNEventsTracker;


# instance fields
.field private eventsTracker:Lcom/ironsource/eventsTracker/EventsTracker;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getInstance()Lcom/ironsource/sdk/Events/ISNEventsTracker;
    .registers 1

    .line 21
    sget-object v0, Lcom/ironsource/sdk/Events/ISNEventsTracker;->eventsTrackerInstance:Lcom/ironsource/sdk/Events/ISNEventsTracker;

    if-nez v0, :cond_b

    .line 22
    new-instance v0, Lcom/ironsource/sdk/Events/ISNEventsTracker;

    invoke-direct {v0}, Lcom/ironsource/sdk/Events/ISNEventsTracker;-><init>()V

    sput-object v0, Lcom/ironsource/sdk/Events/ISNEventsTracker;->eventsTrackerInstance:Lcom/ironsource/sdk/Events/ISNEventsTracker;

    .line 25
    :cond_b
    sget-object v0, Lcom/ironsource/sdk/Events/ISNEventsTracker;->eventsTrackerInstance:Lcom/ironsource/sdk/Events/ISNEventsTracker;

    return-object v0
.end method

.method public static init(Lcom/ironsource/eventsTracker/EventsConfiguration;Lcom/ironsource/sdk/Events/ISNEventsBaseData;)V
    .registers 4

    if-eqz p0, :cond_12

    .line 31
    :try_start_2
    invoke-static {}, Lcom/ironsource/sdk/Events/ISNEventsTracker;->getInstance()Lcom/ironsource/sdk/Events/ISNEventsTracker;

    move-result-object v0

    new-instance v1, Lcom/ironsource/eventsTracker/EventsTracker;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/eventsTracker/EventsTracker;-><init>(Lcom/ironsource/eventsTracker/EventsConfiguration;Lcom/ironsource/eventsTracker/IBaseData;)V

    iput-object v1, v0, Lcom/ironsource/sdk/Events/ISNEventsTracker;->eventsTracker:Lcom/ironsource/eventsTracker/EventsTracker;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_d} :catch_e

    goto :goto_12

    :catch_e
    move-exception p0

    .line 34
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_12
    :goto_12
    return-void
.end method

.method public static logEvent(Lcom/ironsource/sdk/Events/SDK5Events$Event;)V
    .registers 2

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0, v0}, Lcom/ironsource/sdk/Events/ISNEventsTracker;->logEvent(Lcom/ironsource/sdk/Events/SDK5Events$Event;Ljava/util/Map;)V

    return-void
.end method

.method public static logEvent(Lcom/ironsource/sdk/Events/SDK5Events$Event;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/sdk/Events/SDK5Events$Event;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 43
    invoke-static {}, Lcom/ironsource/sdk/Events/ISNEventsTracker;->getInstance()Lcom/ironsource/sdk/Events/ISNEventsTracker;

    move-result-object v0

    iget-object v0, v0, Lcom/ironsource/sdk/Events/ISNEventsTracker;->eventsTracker:Lcom/ironsource/eventsTracker/EventsTracker;

    if-nez v0, :cond_10

    const-string p0, "sdk5Events"

    const-string p1, "logEvent failed eventsTracker doesn\'t exist"

    .line 45
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_10
    if-eqz p1, :cond_1d

    .line 50
    iget v1, p0, Lcom/ironsource/sdk/Events/SDK5Events$Event;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "eventid"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    :cond_1d
    iget-object p0, p0, Lcom/ironsource/sdk/Events/SDK5Events$Event;->name:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/ironsource/eventsTracker/EventsTracker;->log(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
