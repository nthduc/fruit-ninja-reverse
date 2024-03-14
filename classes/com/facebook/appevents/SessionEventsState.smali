.class Lcom/facebook/appevents/SessionEventsState;
.super Ljava/lang/Object;
.source "SessionEventsState.java"


# instance fields
.field private final MAX_ACCUMULATED_LOG_EVENTS:I

.field private accumulatedEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/appevents/AppEvent;",
            ">;"
        }
    .end annotation
.end field

.field private anonymousAppDeviceGUID:Ljava/lang/String;

.field private attributionIdentifiers:Lcom/facebook/internal/AttributionIdentifiers;

.field private inFlightEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/appevents/AppEvent;",
            ">;"
        }
    .end annotation
.end field

.field private numSkippedEventsDueToFullBuffer:I


# direct methods
.method public constructor <init>(Lcom/facebook/internal/AttributionIdentifiers;Ljava/lang/String;)V
    .registers 4

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/appevents/SessionEventsState;->accumulatedEvents:Ljava/util/List;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/appevents/SessionEventsState;->inFlightEvents:Ljava/util/List;

    const/16 v0, 0x3e8

    .line 43
    iput v0, p0, Lcom/facebook/appevents/SessionEventsState;->MAX_ACCUMULATED_LOG_EVENTS:I

    .line 46
    iput-object p1, p0, Lcom/facebook/appevents/SessionEventsState;->attributionIdentifiers:Lcom/facebook/internal/AttributionIdentifiers;

    .line 47
    iput-object p2, p0, Lcom/facebook/appevents/SessionEventsState;->anonymousAppDeviceGUID:Ljava/lang/String;

    return-void
.end method

.method private populateRequest(Lcom/facebook/GraphRequest;Landroid/content/Context;ILorg/json/JSONArray;Z)V
    .registers 9

    .line 134
    :try_start_0
    sget-object v0, Lcom/facebook/appevents/internal/AppEventsLoggerUtility$GraphAPIActivityType;->CUSTOM_APP_EVENTS:Lcom/facebook/appevents/internal/AppEventsLoggerUtility$GraphAPIActivityType;

    iget-object v1, p0, Lcom/facebook/appevents/SessionEventsState;->attributionIdentifiers:Lcom/facebook/internal/AttributionIdentifiers;

    iget-object v2, p0, Lcom/facebook/appevents/SessionEventsState;->anonymousAppDeviceGUID:Ljava/lang/String;

    .line 135
    invoke-static {v0, v1, v2, p5, p2}, Lcom/facebook/appevents/internal/AppEventsLoggerUtility;->getJSONObjectForGraphAPICall(Lcom/facebook/appevents/internal/AppEventsLoggerUtility$GraphAPIActivityType;Lcom/facebook/internal/AttributionIdentifiers;Ljava/lang/String;ZLandroid/content/Context;)Lorg/json/JSONObject;

    move-result-object p2

    .line 142
    iget p5, p0, Lcom/facebook/appevents/SessionEventsState;->numSkippedEventsDueToFullBuffer:I

    if-lez p5, :cond_19

    const-string p5, "num_skipped_events"

    .line 143
    invoke-virtual {p2, p5, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_13} :catch_14

    goto :goto_19

    .line 147
    :catch_14
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 149
    :cond_19
    :goto_19
    invoke-virtual {p1, p2}, Lcom/facebook/GraphRequest;->setGraphObject(Lorg/json/JSONObject;)V

    .line 151
    invoke-virtual {p1}, Lcom/facebook/GraphRequest;->getParameters()Landroid/os/Bundle;

    move-result-object p2

    if-nez p2, :cond_27

    .line 153
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 156
    :cond_27
    invoke-virtual {p4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_35

    const-string p4, "custom_events"

    .line 158
    invoke-virtual {p2, p4, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-virtual {p1, p3}, Lcom/facebook/GraphRequest;->setTag(Ljava/lang/Object;)V

    .line 161
    :cond_35
    invoke-virtual {p1, p2}, Lcom/facebook/GraphRequest;->setParameters(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized accumulatePersistedEvents(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/appevents/AppEvent;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 123
    :try_start_1
    iget-object v0, p0, Lcom/facebook/appevents/SessionEventsState;->accumulatedEvents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 124
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addEvent(Lcom/facebook/appevents/AppEvent;)V
    .registers 4

    monitor-enter p0

    .line 53
    :try_start_1
    iget-object v0, p0, Lcom/facebook/appevents/SessionEventsState;->accumulatedEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/facebook/appevents/SessionEventsState;->inFlightEvents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_19

    .line 54
    iget p1, p0, Lcom/facebook/appevents/SessionEventsState;->numSkippedEventsDueToFullBuffer:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/facebook/appevents/SessionEventsState;->numSkippedEventsDueToFullBuffer:I

    goto :goto_1e

    .line 56
    :cond_19
    iget-object v0, p0, Lcom/facebook/appevents/SessionEventsState;->accumulatedEvents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    .line 58
    :goto_1e
    monitor-exit p0

    return-void

    :catchall_20
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized clearInFlightAndStats(Z)V
    .registers 3

    monitor-enter p0

    if-eqz p1, :cond_a

    .line 66
    :try_start_3
    iget-object p1, p0, Lcom/facebook/appevents/SessionEventsState;->accumulatedEvents:Ljava/util/List;

    iget-object v0, p0, Lcom/facebook/appevents/SessionEventsState;->inFlightEvents:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 68
    :cond_a
    iget-object p1, p0, Lcom/facebook/appevents/SessionEventsState;->inFlightEvents:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    const/4 p1, 0x0

    .line 69
    iput p1, p0, Lcom/facebook/appevents/SessionEventsState;->numSkippedEventsDueToFullBuffer:I
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_14

    .line 70
    monitor-exit p0

    return-void

    :catchall_14
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getAccumulatedEventCount()I
    .registers 2

    monitor-enter p0

    .line 61
    :try_start_1
    iget-object v0, p0, Lcom/facebook/appevents/SessionEventsState;->accumulatedEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getEventsToPersist()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/appevents/AppEvent;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 114
    :try_start_1
    iget-object v0, p0, Lcom/facebook/appevents/SessionEventsState;->accumulatedEvents:Ljava/util/List;

    .line 115
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/facebook/appevents/SessionEventsState;->accumulatedEvents:Ljava/util/List;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 116
    monitor-exit p0

    return-object v0

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public populateRequest(Lcom/facebook/GraphRequest;Landroid/content/Context;ZZ)I
    .registers 12

    .line 80
    monitor-enter p0

    .line 81
    :try_start_1
    iget v3, p0, Lcom/facebook/appevents/SessionEventsState;->numSkippedEventsDueToFullBuffer:I

    .line 84
    iget-object v0, p0, Lcom/facebook/appevents/SessionEventsState;->accumulatedEvents:Ljava/util/List;

    invoke-static {v0}, Lcom/facebook/appevents/eventdeactivation/EventDeactivationManager;->processEvents(Ljava/util/List;)V

    .line 87
    iget-object v0, p0, Lcom/facebook/appevents/SessionEventsState;->inFlightEvents:Ljava/util/List;

    iget-object v1, p0, Lcom/facebook/appevents/SessionEventsState;->accumulatedEvents:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 88
    iget-object v0, p0, Lcom/facebook/appevents/SessionEventsState;->accumulatedEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 90
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 91
    iget-object v0, p0, Lcom/facebook/appevents/SessionEventsState;->inFlightEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1f
    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/appevents/AppEvent;

    .line 92
    invoke-virtual {v1}, Lcom/facebook/appevents/AppEvent;->isChecksumValid()Z

    move-result v2

    if-eqz v2, :cond_41

    if-nez p3, :cond_39

    .line 93
    invoke-virtual {v1}, Lcom/facebook/appevents/AppEvent;->getIsImplicit()Z

    move-result v2

    if-nez v2, :cond_1f

    .line 94
    :cond_39
    invoke-virtual {v1}, Lcom/facebook/appevents/AppEvent;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1f

    :cond_41
    const-string v2, "Event with invalid checksum: %s"

    .line 97
    invoke-virtual {v1}, Lcom/facebook/appevents/AppEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f

    .line 101
    :cond_4b
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result p3

    if-nez p3, :cond_54

    const/4 p1, 0x0

    .line 102
    monitor-exit p0

    return p1

    .line 104
    :cond_54
    monitor-exit p0
    :try_end_55
    .catchall {:try_start_1 .. :try_end_55} :catchall_62

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v6

    move v5, p4

    .line 106
    invoke-direct/range {v0 .. v5}, Lcom/facebook/appevents/SessionEventsState;->populateRequest(Lcom/facebook/GraphRequest;Landroid/content/Context;ILorg/json/JSONArray;Z)V

    .line 107
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result p1

    return p1

    :catchall_62
    move-exception p1

    .line 104
    :try_start_63
    monitor-exit p0
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_62

    throw p1

    return-void
.end method
