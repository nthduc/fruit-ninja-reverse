.class Lcom/facebook/GraphRequest$4;
.super Ljava/lang/Object;
.source "GraphRequest.java"

# interfaces
.implements Lcom/facebook/GraphRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/GraphRequest;->setCallback(Lcom/facebook/GraphRequest$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/GraphRequest;

.field final synthetic val$callback:Lcom/facebook/GraphRequest$Callback;


# direct methods
.method constructor <init>(Lcom/facebook/GraphRequest;Lcom/facebook/GraphRequest$Callback;)V
    .registers 3

    .line 883
    iput-object p1, p0, Lcom/facebook/GraphRequest$4;->this$0:Lcom/facebook/GraphRequest;

    iput-object p2, p0, Lcom/facebook/GraphRequest$4;->val$callback:Lcom/facebook/GraphRequest$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/GraphResponse;)V
    .registers 10

    .line 886
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    const-string v2, "__debug__"

    .line 888
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_f

    :cond_e
    move-object v0, v1

    :goto_f
    if-eqz v0, :cond_18

    const-string v2, "messages"

    .line 890
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    goto :goto_19

    :cond_18
    move-object v0, v1

    :goto_19
    if-eqz v0, :cond_76

    const/4 v2, 0x0

    .line 892
    :goto_1c
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_76

    .line 893
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_2f

    const-string v4, "message"

    .line 896
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_30

    :cond_2f
    move-object v4, v1

    :goto_30
    if-eqz v3, :cond_39

    const-string v5, "type"

    .line 900
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_3a

    :cond_39
    move-object v5, v1

    :goto_3a
    if-eqz v3, :cond_43

    const-string v6, "link"

    .line 904
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_44

    :cond_43
    move-object v3, v1

    :goto_44
    if-eqz v4, :cond_73

    if-eqz v5, :cond_73

    .line 907
    sget-object v6, Lcom/facebook/LoggingBehavior;->GRAPH_API_DEBUG_INFO:Lcom/facebook/LoggingBehavior;

    const-string v7, "warning"

    .line 908
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_54

    .line 909
    sget-object v6, Lcom/facebook/LoggingBehavior;->GRAPH_API_DEBUG_WARNING:Lcom/facebook/LoggingBehavior;

    .line 911
    :cond_54
    invoke-static {v3}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6e

    .line 912
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " Link: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 914
    :cond_6e
    sget-object v3, Lcom/facebook/GraphRequest;->TAG:Ljava/lang/String;

    invoke-static {v6, v3, v4}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    :cond_73
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 918
    :cond_76
    iget-object v0, p0, Lcom/facebook/GraphRequest$4;->val$callback:Lcom/facebook/GraphRequest$Callback;

    if-eqz v0, :cond_7d

    .line 919
    invoke-interface {v0, p1}, Lcom/facebook/GraphRequest$Callback;->onCompleted(Lcom/facebook/GraphResponse;)V

    :cond_7d
    return-void
.end method
