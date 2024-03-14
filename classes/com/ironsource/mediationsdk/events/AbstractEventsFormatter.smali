.class abstract Lcom/ironsource/mediationsdk/events/AbstractEventsFormatter;
.super Ljava/lang/Object;
.source "AbstractEventsFormatter.java"


# instance fields
.field private final EVENTS_KEY_DEFAULT:Ljava/lang/String;

.field private final EVENTS_KEY_IS:Ljava/lang/String;

.field private final EVENTS_KEY_RV:Ljava/lang/String;

.field private final KEY_AD_UNIT:Ljava/lang/String;

.field private final KEY_EVENT_ID:Ljava/lang/String;

.field private final KEY_TIMESTAMP:Ljava/lang/String;

.field mAdUnit:I

.field mGeneralProperties:Lorg/json/JSONObject;

.field private mServerUrl:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "eventId"

    .line 18
    iput-object v0, p0, Lcom/ironsource/mediationsdk/events/AbstractEventsFormatter;->KEY_EVENT_ID:Ljava/lang/String;

    const-string v0, "timestamp"

    .line 19
    iput-object v0, p0, Lcom/ironsource/mediationsdk/events/AbstractEventsFormatter;->KEY_TIMESTAMP:Ljava/lang/String;

    const-string v0, "adUnit"

    .line 20
    iput-object v0, p0, Lcom/ironsource/mediationsdk/events/AbstractEventsFormatter;->KEY_AD_UNIT:Ljava/lang/String;

    const-string v0, "InterstitialEvents"

    .line 22
    iput-object v0, p0, Lcom/ironsource/mediationsdk/events/AbstractEventsFormatter;->EVENTS_KEY_IS:Ljava/lang/String;

    const-string v0, "events"

    .line 23
    iput-object v0, p0, Lcom/ironsource/mediationsdk/events/AbstractEventsFormatter;->EVENTS_KEY_RV:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/ironsource/mediationsdk/events/AbstractEventsFormatter;->EVENTS_KEY_DEFAULT:Ljava/lang/String;

    return-void
.end method

.method private getEventsKey(I)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_9

    const/4 v0, 0x3

    const-string v1, "events"

    if-eq p1, v0, :cond_8

    :cond_8
    return-object v1

    :cond_9
    const-string p1, "InterstitialEvents"

    return-object p1
.end method


# virtual methods
.method createDataToSend(Lorg/json/JSONArray;)Ljava/lang/String;
    .registers 7

    const-string v0, ""

    .line 68
    :try_start_2
    iget-object v1, p0, Lcom/ironsource/mediationsdk/events/AbstractEventsFormatter;->mGeneralProperties:Lorg/json/JSONObject;

    if-eqz v1, :cond_2f

    .line 69
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/events/AbstractEventsFormatter;->mGeneralProperties:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 71
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getTimeStamp()J

    move-result-wide v2

    const-string v4, "timestamp"

    .line 73
    invoke-virtual {v1, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "adUnit"

    .line 74
    iget v3, p0, Lcom/ironsource/mediationsdk/events/AbstractEventsFormatter;->mAdUnit:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 75
    iget v2, p0, Lcom/ironsource/mediationsdk/events/AbstractEventsFormatter;->mAdUnit:I

    invoke-direct {p0, v2}, Lcom/ironsource/mediationsdk/events/AbstractEventsFormatter;->getEventsKey(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 77
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2e} :catch_2f

    move-object v0, p1

    :catch_2f
    :cond_2f
    return-object v0
.end method

.method createJSONForEvent(Lcom/ironsource/eventsmodule/EventData;)Lorg/json/JSONObject;
    .registers 6

    .line 46
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/ironsource/eventsmodule/EventData;->getAdditionalData()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "eventId"

    .line 47
    invoke-virtual {p1}, Lcom/ironsource/eventsmodule/EventData;->getEventId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "timestamp"

    .line 48
    invoke-virtual {p1}, Lcom/ironsource/eventsmodule/EventData;->getTimeStamp()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_1b
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_1b} :catch_1c

    goto :goto_21

    :catch_1c
    move-exception p1

    .line 50
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_21
    return-object v0
.end method

.method public abstract format(Ljava/util/ArrayList;Lorg/json/JSONObject;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/ironsource/eventsmodule/EventData;",
            ">;",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method protected abstract getDefaultEventsUrl()Ljava/lang/String;
.end method

.method getEventsServerUrl()Ljava/lang/String;
    .registers 2

    .line 86
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/AbstractEventsFormatter;->mServerUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/events/AbstractEventsFormatter;->getDefaultEventsUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    :cond_d
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/AbstractEventsFormatter;->mServerUrl:Ljava/lang/String;

    :goto_f
    return-object v0
.end method

.method public abstract getFormatterType()Ljava/lang/String;
.end method

.method setEventsServerUrl(Ljava/lang/String;)V
    .registers 2

    .line 90
    iput-object p1, p0, Lcom/ironsource/mediationsdk/events/AbstractEventsFormatter;->mServerUrl:Ljava/lang/String;

    return-void
.end method
