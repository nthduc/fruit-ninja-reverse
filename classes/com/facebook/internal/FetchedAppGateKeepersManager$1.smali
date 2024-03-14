.class final Lcom/facebook/internal/FetchedAppGateKeepersManager$1;
.super Ljava/lang/Object;
.source "FetchedAppGateKeepersManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/internal/FetchedAppGateKeepersManager;->loadAppGateKeepersAsync(Lcom/facebook/internal/FetchedAppGateKeepersManager$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$applicationId:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$gateKeepersKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 117
    iput-object p1, p0, Lcom/facebook/internal/FetchedAppGateKeepersManager$1;->val$applicationId:Ljava/lang/String;

    iput-object p2, p0, Lcom/facebook/internal/FetchedAppGateKeepersManager$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/facebook/internal/FetchedAppGateKeepersManager$1;->val$gateKeepersKey:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 120
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/facebook/internal/FetchedAppGateKeepersManager$1;->val$applicationId:Ljava/lang/String;

    # invokes: Lcom/facebook/internal/FetchedAppGateKeepersManager;->getAppGateKeepersQueryResponse(Ljava/lang/String;)Lorg/json/JSONObject;
    invoke-static {v0}, Lcom/facebook/internal/FetchedAppGateKeepersManager;->access$000(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_39

    .line 122
    iget-object v2, p0, Lcom/facebook/internal/FetchedAppGateKeepersManager$1;->val$applicationId:Ljava/lang/String;

    # invokes: Lcom/facebook/internal/FetchedAppGateKeepersManager;->parseAppGateKeepersFromJSON(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    invoke-static {v2, v0}, Lcom/facebook/internal/FetchedAppGateKeepersManager;->access$100(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 124
    iget-object v2, p0, Lcom/facebook/internal/FetchedAppGateKeepersManager$1;->val$context:Landroid/content/Context;

    const-string v3, "com.facebook.internal.preferences.APP_GATEKEEPERS"

    .line 125
    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 127
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/internal/FetchedAppGateKeepersManager$1;->val$gateKeepersKey:Ljava/lang/String;

    .line 128
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 129
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 131
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    # setter for: Lcom/facebook/internal/FetchedAppGateKeepersManager;->timestamp:Ljava/lang/Long;
    invoke-static {v0}, Lcom/facebook/internal/FetchedAppGateKeepersManager;->access$202(Ljava/lang/Long;)Ljava/lang/Long;

    .line 133
    :cond_39
    # invokes: Lcom/facebook/internal/FetchedAppGateKeepersManager;->pollCallbacks()V
    invoke-static {}, Lcom/facebook/internal/FetchedAppGateKeepersManager;->access$300()V

    .line 134
    # getter for: Lcom/facebook/internal/FetchedAppGateKeepersManager;->isLoading:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {}, Lcom/facebook/internal/FetchedAppGateKeepersManager;->access$400()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_43} :catch_44

    return-void

    :catch_44
    move-exception v0

    .line 135
    invoke-static {v0, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
