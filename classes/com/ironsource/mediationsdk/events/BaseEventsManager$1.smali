.class Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;
.super Ljava/lang/Object;
.source "BaseEventsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/mediationsdk/events/BaseEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

.field final synthetic val$event:Lcom/ironsource/eventsmodule/EventData;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/events/BaseEventsManager;Lcom/ironsource/eventsmodule/EventData;)V
    .registers 3

    .line 154
    iput-object p1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    iput-object p2, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->val$event:Lcom/ironsource/eventsmodule/EventData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    const-string v0, ","

    .line 157
    iget-object v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->val$event:Lcom/ironsource/eventsmodule/EventData;

    if-eqz v1, :cond_1e3

    iget-object v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    # getter for: Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mIsEventsEnabled:Z
    invoke-static {v1}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->access$000(Lcom/ironsource/mediationsdk/events/BaseEventsManager;)Z

    move-result v1

    if-nez v1, :cond_10

    goto/16 :goto_1e3

    .line 161
    :cond_10
    iget-object v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->val$event:Lcom/ironsource/eventsmodule/EventData;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    # getter for: Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mSessionId:Ljava/lang/String;
    invoke-static {v2}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->access$100(Lcom/ironsource/mediationsdk/events/BaseEventsManager;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "eventSessionId"

    invoke-virtual {v1, v3, v2}, Lcom/ironsource/eventsmodule/EventData;->addToAdditionalData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 162
    iget-object v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    # getter for: Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->access$200(Lcom/ironsource/mediationsdk/events/BaseEventsManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getConnectionType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 164
    iget-object v2, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    iget-object v3, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->val$event:Lcom/ironsource/eventsmodule/EventData;

    # invokes: Lcom/ironsource/mediationsdk/events/BaseEventsManager;->shouldAddConnectionType(Lcom/ironsource/eventsmodule/EventData;)Z
    invoke-static {v2, v3}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->access$300(Lcom/ironsource/mediationsdk/events/BaseEventsManager;Lcom/ironsource/eventsmodule/EventData;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 165
    iget-object v2, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->val$event:Lcom/ironsource/eventsmodule/EventData;

    const-string v3, "connectionType"

    invoke-virtual {v2, v3, v1}, Lcom/ironsource/eventsmodule/EventData;->addToAdditionalData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 168
    :cond_38
    iget-object v2, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    iget-object v3, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->val$event:Lcom/ironsource/eventsmodule/EventData;

    # invokes: Lcom/ironsource/mediationsdk/events/BaseEventsManager;->isNoConnectivityEvent(Ljava/lang/String;Lcom/ironsource/eventsmodule/EventData;)Z
    invoke-static {v2, v1, v3}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->access$400(Lcom/ironsource/mediationsdk/events/BaseEventsManager;Ljava/lang/String;Lcom/ironsource/eventsmodule/EventData;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 169
    iget-object v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->val$event:Lcom/ironsource/eventsmodule/EventData;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    # invokes: Lcom/ironsource/mediationsdk/events/BaseEventsManager;->convertEventToNotConnected(Lcom/ironsource/eventsmodule/EventData;)I
    invoke-static {v2, v1}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->access$500(Lcom/ironsource/mediationsdk/events/BaseEventsManager;Lcom/ironsource/eventsmodule/EventData;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ironsource/eventsmodule/EventData;->setEventId(I)V

    .line 172
    :cond_4d
    iget-object v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->val$event:Lcom/ironsource/eventsmodule/EventData;

    const-string v3, "reason"

    # invokes: Lcom/ironsource/mediationsdk/events/BaseEventsManager;->limitEventStringMember(Lcom/ironsource/eventsmodule/EventData;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->access$600(Lcom/ironsource/mediationsdk/events/BaseEventsManager;Lcom/ironsource/eventsmodule/EventData;Ljava/lang/String;)V

    .line 173
    iget-object v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->val$event:Lcom/ironsource/eventsmodule/EventData;

    const-string v3, "ext1"

    # invokes: Lcom/ironsource/mediationsdk/events/BaseEventsManager;->limitEventStringMember(Lcom/ironsource/eventsmodule/EventData;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->access$600(Lcom/ironsource/mediationsdk/events/BaseEventsManager;Lcom/ironsource/eventsmodule/EventData;Ljava/lang/String;)V

    .line 175
    iget-object v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->getGenericEventParams()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b7

    .line 176
    iget-object v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->getGenericEventParams()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_79
    :goto_79
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 177
    iget-object v3, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->val$event:Lcom/ironsource/eventsmodule/EventData;

    invoke-virtual {v3}, Lcom/ironsource/eventsmodule/EventData;->getAdditionalDataJSON()Lorg/json/JSONObject;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_79

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "eventId"

    if-eq v3, v4, :cond_79

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "timestamp"

    if-eq v3, v4, :cond_79

    .line 178
    iget-object v3, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->val$event:Lcom/ironsource/eventsmodule/EventData;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lcom/ironsource/eventsmodule/EventData;->addToAdditionalData(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_79

    .line 184
    :cond_b7
    iget-object v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->val$event:Lcom/ironsource/eventsmodule/EventData;

    # invokes: Lcom/ironsource/mediationsdk/events/BaseEventsManager;->shouldEventBeLogged(Lcom/ironsource/eventsmodule/EventData;)Z
    invoke-static {v1, v2}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->access$700(Lcom/ironsource/mediationsdk/events/BaseEventsManager;Lcom/ironsource/eventsmodule/EventData;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_184

    .line 186
    iget-object v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    iget-object v3, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->val$event:Lcom/ironsource/eventsmodule/EventData;

    # invokes: Lcom/ironsource/mediationsdk/events/BaseEventsManager;->shouldAddSessionDepth(Lcom/ironsource/eventsmodule/EventData;)Z
    invoke-static {v1, v3}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->access$800(Lcom/ironsource/mediationsdk/events/BaseEventsManager;Lcom/ironsource/eventsmodule/EventData;)Z

    move-result v1

    if-eqz v1, :cond_e9

    iget-object v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    iget-object v3, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->val$event:Lcom/ironsource/eventsmodule/EventData;

    # invokes: Lcom/ironsource/mediationsdk/events/BaseEventsManager;->sessionDepthIsSet(Lcom/ironsource/eventsmodule/EventData;)Z
    invoke-static {v1, v3}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->access$900(Lcom/ironsource/mediationsdk/events/BaseEventsManager;Lcom/ironsource/eventsmodule/EventData;)Z

    move-result v1

    if-nez v1, :cond_e9

    .line 187
    iget-object v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    iget-object v3, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->val$event:Lcom/ironsource/eventsmodule/EventData;

    invoke-virtual {v1, v3}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->getSessionDepth(Lcom/ironsource/eventsmodule/EventData;)I

    move-result v1

    .line 188
    iget-object v3, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->val$event:Lcom/ironsource/eventsmodule/EventData;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "sessionDepth"

    invoke-virtual {v3, v4, v1}, Lcom/ironsource/eventsmodule/EventData;->addToAdditionalData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 191
    :cond_e9
    iget-object v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    iget-object v3, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->val$event:Lcom/ironsource/eventsmodule/EventData;

    invoke-virtual {v1, v3}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->shouldExtractCurrentPlacement(Lcom/ironsource/eventsmodule/EventData;)Z

    move-result v1

    if-eqz v1, :cond_fb

    .line 192
    iget-object v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    iget-object v3, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->val$event:Lcom/ironsource/eventsmodule/EventData;

    invoke-virtual {v1, v3}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->setCurrentPlacement(Lcom/ironsource/eventsmodule/EventData;)V

    goto :goto_128

    .line 194
    :cond_fb
    iget-object v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    iget-object v3, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->val$event:Lcom/ironsource/eventsmodule/EventData;

    invoke-virtual {v3}, Lcom/ironsource/eventsmodule/EventData;->getEventId()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->getCurrentPlacement(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_128

    iget-object v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    iget-object v3, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->val$event:Lcom/ironsource/eventsmodule/EventData;

    invoke-virtual {v1, v3}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->shouldIncludeCurrentPlacement(Lcom/ironsource/eventsmodule/EventData;)Z

    move-result v1

    if-eqz v1, :cond_128

    .line 195
    iget-object v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->val$event:Lcom/ironsource/eventsmodule/EventData;

    iget-object v3, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    invoke-virtual {v1}, Lcom/ironsource/eventsmodule/EventData;->getEventId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->getCurrentPlacement(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "placement"

    invoke-virtual {v1, v4, v3}, Lcom/ironsource/eventsmodule/EventData;->addToAdditionalData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 201
    :cond_128
    :goto_128
    :try_start_128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{\"eventId\":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->val$event:Lcom/ironsource/eventsmodule/EventData;

    invoke-virtual {v3}, Lcom/ironsource/eventsmodule/EventData;->getEventId()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",\"timestamp\":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->val$event:Lcom/ironsource/eventsmodule/EventData;

    invoke-virtual {v3}, Lcom/ironsource/eventsmodule/EventData;->getTimeStamp()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->val$event:Lcom/ironsource/eventsmodule/EventData;

    invoke-virtual {v3}, Lcom/ironsource/eventsmodule/EventData;->getAdditionalData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 202
    iget-object v3, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    # getter for: Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;
    invoke-static {v3}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->access$1000(Lcom/ironsource/mediationsdk/events/BaseEventsManager;)Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v3

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->EVENT:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v5, "\n"

    invoke-virtual {v1, v0, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v3, v4, v0, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_16f
    .catch Ljava/lang/Exception; {:try_start_128 .. :try_end_16f} :catch_170

    goto :goto_174

    :catch_170
    move-exception v0

    .line 204
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 207
    :goto_174
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    # getter for: Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mLocalEvents:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->access$1100(Lcom/ironsource/mediationsdk/events/BaseEventsManager;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->val$event:Lcom/ironsource/eventsmodule/EventData;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    # operator++ for: Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mTotalEvents:I
    invoke-static {v0}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->access$1208(Lcom/ironsource/mediationsdk/events/BaseEventsManager;)I

    .line 213
    :cond_184
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    # getter for: Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mTriggerEvents:[I
    invoke-static {v0}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->access$1300(Lcom/ironsource/mediationsdk/events/BaseEventsManager;)[I

    move-result-object v1

    # invokes: Lcom/ironsource/mediationsdk/events/BaseEventsManager;->isEventsArrayNotEmpty([I)Z
    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->access$1400(Lcom/ironsource/mediationsdk/events/BaseEventsManager;[I)Z

    move-result v0

    if-eqz v0, :cond_1a3

    .line 215
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->val$event:Lcom/ironsource/eventsmodule/EventData;

    invoke-virtual {v1}, Lcom/ironsource/eventsmodule/EventData;->getEventId()I

    move-result v1

    iget-object v3, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    # getter for: Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mTriggerEvents:[I
    invoke-static {v3}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->access$1300(Lcom/ironsource/mediationsdk/events/BaseEventsManager;)[I

    move-result-object v3

    # invokes: Lcom/ironsource/mediationsdk/events/BaseEventsManager;->isEventInArray(I[I)Z
    invoke-static {v0, v1, v3}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->access$1500(Lcom/ironsource/mediationsdk/events/BaseEventsManager;I[I)Z

    move-result v0

    goto :goto_1ab

    .line 218
    :cond_1a3
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->val$event:Lcom/ironsource/eventsmodule/EventData;

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->isTriggerEvent(Lcom/ironsource/eventsmodule/EventData;)Z

    move-result v0

    .line 221
    :goto_1ab
    iget-object v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    # getter for: Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mHadTriggerEvent:Z
    invoke-static {v1}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->access$1600(Lcom/ironsource/mediationsdk/events/BaseEventsManager;)Z

    move-result v1

    if-nez v1, :cond_1ba

    if-eqz v0, :cond_1ba

    .line 222
    iget-object v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    # setter for: Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mHadTriggerEvent:Z
    invoke-static {v1, v2}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->access$1602(Lcom/ironsource/mediationsdk/events/BaseEventsManager;Z)Z

    .line 224
    :cond_1ba
    iget-object v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    # getter for: Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mDbStorage:Lcom/ironsource/eventsmodule/DataBaseEventsStorage;
    invoke-static {v1}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->access$1700(Lcom/ironsource/mediationsdk/events/BaseEventsManager;)Lcom/ironsource/eventsmodule/DataBaseEventsStorage;

    move-result-object v1

    if-eqz v1, :cond_1e3

    .line 226
    iget-object v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    # invokes: Lcom/ironsource/mediationsdk/events/BaseEventsManager;->shouldSendEvents()Z
    invoke-static {v1}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->access$1800(Lcom/ironsource/mediationsdk/events/BaseEventsManager;)Z

    move-result v1

    if-eqz v1, :cond_1d0

    .line 227
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    # invokes: Lcom/ironsource/mediationsdk/events/BaseEventsManager;->sendEvents()V
    invoke-static {v0}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->access$1900(Lcom/ironsource/mediationsdk/events/BaseEventsManager;)V

    goto :goto_1e3

    .line 228
    :cond_1d0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    # getter for: Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mLocalEvents:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->access$1100(Lcom/ironsource/mediationsdk/events/BaseEventsManager;)Ljava/util/ArrayList;

    move-result-object v2

    # invokes: Lcom/ironsource/mediationsdk/events/BaseEventsManager;->shouldBackupEventsToDb(Ljava/util/ArrayList;)Z
    invoke-static {v1, v2}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->access$2000(Lcom/ironsource/mediationsdk/events/BaseEventsManager;Ljava/util/ArrayList;)Z

    move-result v1

    if-nez v1, :cond_1de

    if-eqz v0, :cond_1e3

    .line 229
    :cond_1de
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    # invokes: Lcom/ironsource/mediationsdk/events/BaseEventsManager;->backupEventsToDb()V
    invoke-static {v0}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->access$2100(Lcom/ironsource/mediationsdk/events/BaseEventsManager;)V

    :cond_1e3
    :goto_1e3
    return-void
.end method
