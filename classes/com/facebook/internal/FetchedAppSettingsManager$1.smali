.class final Lcom/facebook/internal/FetchedAppSettingsManager$1;
.super Ljava/lang/Object;
.source "FetchedAppSettingsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/internal/FetchedAppSettingsManager;->loadAppSettingsAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$applicationId:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$settingsKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 157
    iput-object p1, p0, Lcom/facebook/internal/FetchedAppSettingsManager$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/internal/FetchedAppSettingsManager$1;->val$settingsKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/internal/FetchedAppSettingsManager$1;->val$applicationId:Ljava/lang/String;

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

    .line 161
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/facebook/internal/FetchedAppSettingsManager$1;->val$context:Landroid/content/Context;

    const-string v1, "com.facebook.internal.preferences.APP_SETTINGS"

    const/4 v2, 0x0

    .line 162
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 163
    iget-object v1, p0, Lcom/facebook/internal/FetchedAppSettingsManager$1;->val$settingsKey:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 165
    invoke-static {v1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_1b} :catch_96

    if-nez v3, :cond_32

    .line 168
    :try_start_1d
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_22
    .catch Lorg/json/JSONException; {:try_start_1d .. :try_end_22} :catch_23
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_22} :catch_96

    goto :goto_2a

    :catch_23
    move-exception v1

    :try_start_24
    const-string v3, "FacebookSDK"

    .line 170
    invoke-static {v3, v1}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V

    move-object v3, v2

    :goto_2a
    if-eqz v3, :cond_32

    .line 173
    iget-object v1, p0, Lcom/facebook/internal/FetchedAppSettingsManager$1;->val$applicationId:Ljava/lang/String;

    # invokes: Lcom/facebook/internal/FetchedAppSettingsManager;->parseAppSettingsFromJSON(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/facebook/internal/FetchedAppSettings;
    invoke-static {v1, v3}, Lcom/facebook/internal/FetchedAppSettingsManager;->access$000(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/facebook/internal/FetchedAppSettings;

    move-result-object v2

    .line 177
    :cond_32
    iget-object v1, p0, Lcom/facebook/internal/FetchedAppSettingsManager$1;->val$applicationId:Ljava/lang/String;

    # invokes: Lcom/facebook/internal/FetchedAppSettingsManager;->getAppSettingsQueryResponse(Ljava/lang/String;)Lorg/json/JSONObject;
    invoke-static {v1}, Lcom/facebook/internal/FetchedAppSettingsManager;->access$100(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_50

    .line 179
    iget-object v3, p0, Lcom/facebook/internal/FetchedAppSettingsManager$1;->val$applicationId:Ljava/lang/String;

    # invokes: Lcom/facebook/internal/FetchedAppSettingsManager;->parseAppSettingsFromJSON(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/facebook/internal/FetchedAppSettings;
    invoke-static {v3, v1}, Lcom/facebook/internal/FetchedAppSettingsManager;->access$000(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/facebook/internal/FetchedAppSettings;

    .line 181
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v3, p0, Lcom/facebook/internal/FetchedAppSettingsManager$1;->val$settingsKey:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_50
    const/4 v0, 0x1

    if-eqz v2, :cond_6f

    .line 186
    invoke-virtual {v2}, Lcom/facebook/internal/FetchedAppSettings;->getSdkUpdateMessage()Ljava/lang/String;

    move-result-object v1

    .line 187
    # getter for: Lcom/facebook/internal/FetchedAppSettingsManager;->printedSDKUpdatedMessage:Z
    invoke-static {}, Lcom/facebook/internal/FetchedAppSettingsManager;->access$200()Z

    move-result v2

    if-nez v2, :cond_6f

    if-eqz v1, :cond_6f

    .line 189
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_6f

    .line 190
    # setter for: Lcom/facebook/internal/FetchedAppSettingsManager;->printedSDKUpdatedMessage:Z
    invoke-static {v0}, Lcom/facebook/internal/FetchedAppSettingsManager;->access$202(Z)Z

    .line 191
    # getter for: Lcom/facebook/internal/FetchedAppSettingsManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/facebook/internal/FetchedAppSettingsManager;->access$300()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_6f
    iget-object v1, p0, Lcom/facebook/internal/FetchedAppSettingsManager$1;->val$applicationId:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/facebook/internal/FetchedAppGateKeepersManager;->queryAppGateKeepers(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 199
    invoke-static {}, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;->logActivateAppEvent()V

    .line 202
    invoke-static {}, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->update()V

    .line 204
    # getter for: Lcom/facebook/internal/FetchedAppSettingsManager;->loadingState:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {}, Lcom/facebook/internal/FetchedAppSettingsManager;->access$500()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    # getter for: Lcom/facebook/internal/FetchedAppSettingsManager;->fetchedAppSettings:Ljava/util/Map;
    invoke-static {}, Lcom/facebook/internal/FetchedAppSettingsManager;->access$400()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/internal/FetchedAppSettingsManager$1;->val$applicationId:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8d

    sget-object v1, Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;->SUCCESS:Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;

    goto :goto_8f

    :cond_8d
    sget-object v1, Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;->ERROR:Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;

    :goto_8f
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 205
    # invokes: Lcom/facebook/internal/FetchedAppSettingsManager;->pollCallbacks()V
    invoke-static {}, Lcom/facebook/internal/FetchedAppSettingsManager;->access$600()V
    :try_end_95
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_95} :catch_96

    return-void

    :catch_96
    move-exception v0

    .line 206
    invoke-static {v0, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
