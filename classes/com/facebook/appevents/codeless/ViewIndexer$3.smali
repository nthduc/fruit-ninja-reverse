.class Lcom/facebook/appevents/codeless/ViewIndexer$3;
.super Ljava/lang/Object;
.source "ViewIndexer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/codeless/ViewIndexer;->sendToServer(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/appevents/codeless/ViewIndexer;

.field final synthetic val$tree:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/facebook/appevents/codeless/ViewIndexer;Ljava/lang/String;)V
    .registers 3

    .line 192
    iput-object p1, p0, Lcom/facebook/appevents/codeless/ViewIndexer$3;->this$0:Lcom/facebook/appevents/codeless/ViewIndexer;

    iput-object p2, p0, Lcom/facebook/appevents/codeless/ViewIndexer$3;->val$tree:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    const-string v0, "is_app_indexing_enabled"

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    return-void

    .line 195
    :cond_9
    :try_start_9
    iget-object v1, p0, Lcom/facebook/appevents/codeless/ViewIndexer$3;->val$tree:Ljava/lang/String;

    invoke-static {v1}, Lcom/facebook/internal/Utility;->md5hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 196
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v2

    if-eqz v1, :cond_22

    .line 197
    iget-object v3, p0, Lcom/facebook/appevents/codeless/ViewIndexer$3;->this$0:Lcom/facebook/appevents/codeless/ViewIndexer;

    invoke-static {v3}, Lcom/facebook/appevents/codeless/ViewIndexer;->access$500(Lcom/facebook/appevents/codeless/ViewIndexer;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    return-void

    .line 200
    :cond_22
    iget-object v3, p0, Lcom/facebook/appevents/codeless/ViewIndexer$3;->val$tree:Ljava/lang/String;

    .line 202
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "app_indexing"

    .line 201
    invoke-static {v3, v2, v4, v5}, Lcom/facebook/appevents/codeless/ViewIndexer;->buildAppIndexingRequest(Ljava/lang/String;Lcom/facebook/AccessToken;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/GraphRequest;

    move-result-object v2

    if-eqz v2, :cond_91

    .line 204
    invoke-virtual {v2}, Lcom/facebook/GraphRequest;->executeAndWait()Lcom/facebook/GraphResponse;

    move-result-object v2
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_34} :catch_92

    .line 206
    :try_start_34
    invoke-virtual {v2}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_6a

    const-string v2, "true"

    const-string v4, "success"

    .line 208
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 209
    sget-object v2, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    .line 211
    invoke-static {}, Lcom/facebook/appevents/codeless/ViewIndexer;->access$200()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Successfully send UI component tree to server"

    .line 209
    invoke-static {v2, v4, v5}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iget-object v2, p0, Lcom/facebook/appevents/codeless/ViewIndexer$3;->this$0:Lcom/facebook/appevents/codeless/ViewIndexer;

    invoke-static {v2, v1}, Lcom/facebook/appevents/codeless/ViewIndexer;->access$502(Lcom/facebook/appevents/codeless/ViewIndexer;Ljava/lang/String;)Ljava/lang/String;

    .line 216
    :cond_58
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_91

    .line 218
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 219
    invoke-static {v0}, Lcom/facebook/appevents/codeless/CodelessManager;->updateAppIndexing(Ljava/lang/Boolean;)V

    goto :goto_91

    .line 222
    :cond_6a
    invoke-static {}, Lcom/facebook/appevents/codeless/ViewIndexer;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error sending UI component tree to Facebook: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_86
    .catch Lorg/json/JSONException; {:try_start_34 .. :try_end_86} :catch_87
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_86} :catch_92

    goto :goto_91

    :catch_87
    move-exception v0

    .line 225
    :try_start_88
    invoke-static {}, Lcom/facebook/appevents/codeless/ViewIndexer;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error decoding server response."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_91
    .catch Ljava/lang/Throwable; {:try_start_88 .. :try_end_91} :catch_92

    :cond_91
    :goto_91
    return-void

    :catch_92
    move-exception v0

    .line 228
    invoke-static {v0, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
