.class public Lcom/ironsource/eventsmodule/EventData;
.super Ljava/lang/Object;
.source "EventData.java"


# instance fields
.field private mAdditionalData:Lorg/json/JSONObject;

.field private mEventId:I

.field private mTimeStamp:J


# direct methods
.method public constructor <init>(IJLorg/json/JSONObject;)V
    .registers 7

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lcom/ironsource/eventsmodule/EventData;->mEventId:I

    const-wide/16 v0, -0x1

    .line 13
    iput-wide v0, p0, Lcom/ironsource/eventsmodule/EventData;->mTimeStamp:J

    .line 17
    iput p1, p0, Lcom/ironsource/eventsmodule/EventData;->mEventId:I

    .line 18
    iput-wide p2, p0, Lcom/ironsource/eventsmodule/EventData;->mTimeStamp:J

    if-nez p4, :cond_18

    .line 20
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, p0, Lcom/ironsource/eventsmodule/EventData;->mAdditionalData:Lorg/json/JSONObject;

    goto :goto_1a

    .line 22
    :cond_18
    iput-object p4, p0, Lcom/ironsource/eventsmodule/EventData;->mAdditionalData:Lorg/json/JSONObject;

    :goto_1a
    return-void
.end method

.method public constructor <init>(ILorg/json/JSONObject;)V
    .registers 5

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lcom/ironsource/eventsmodule/EventData;->mEventId:I

    const-wide/16 v0, -0x1

    .line 13
    iput-wide v0, p0, Lcom/ironsource/eventsmodule/EventData;->mTimeStamp:J

    .line 26
    iput p1, p0, Lcom/ironsource/eventsmodule/EventData;->mEventId:I

    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ironsource/eventsmodule/EventData;->mTimeStamp:J

    if-nez p2, :cond_1c

    .line 29
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, p0, Lcom/ironsource/eventsmodule/EventData;->mAdditionalData:Lorg/json/JSONObject;

    goto :goto_1e

    .line 31
    :cond_1c
    iput-object p2, p0, Lcom/ironsource/eventsmodule/EventData;->mAdditionalData:Lorg/json/JSONObject;

    :goto_1e
    return-void
.end method


# virtual methods
.method public addToAdditionalData(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/eventsmodule/EventData;->mAdditionalData:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception p1

    .line 58
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_a
    return-void
.end method

.method public getAdditionalData()Ljava/lang/String;
    .registers 2

    .line 43
    iget-object v0, p0, Lcom/ironsource/eventsmodule/EventData;->mAdditionalData:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdditionalDataJSON()Lorg/json/JSONObject;
    .registers 2

    .line 47
    iget-object v0, p0, Lcom/ironsource/eventsmodule/EventData;->mAdditionalData:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getEventId()I
    .registers 2

    .line 35
    iget v0, p0, Lcom/ironsource/eventsmodule/EventData;->mEventId:I

    return v0
.end method

.method public getTimeStamp()J
    .registers 3

    .line 39
    iget-wide v0, p0, Lcom/ironsource/eventsmodule/EventData;->mTimeStamp:J

    return-wide v0
.end method

.method public setEventId(I)V
    .registers 2

    .line 51
    iput p1, p0, Lcom/ironsource/eventsmodule/EventData;->mEventId:I

    return-void
.end method
