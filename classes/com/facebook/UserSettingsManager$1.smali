.class final Lcom/facebook/UserSettingsManager$1;
.super Ljava/lang/Object;
.source "UserSettingsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/UserSettingsManager;->initializeCodelessSetupEnabledAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$currTime:J


# direct methods
.method constructor <init>(J)V
    .registers 3

    .line 149
    iput-wide p1, p0, Lcom/facebook/UserSettingsManager$1;->val$currTime:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    const-string v0, "auto_event_setup_enabled"

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    return-void

    .line 152
    :cond_9
    :try_start_9
    # getter for: Lcom/facebook/UserSettingsManager;->advertiserIDCollectionEnabled:Lcom/facebook/UserSettingsManager$UserSetting;
    invoke-static {}, Lcom/facebook/UserSettingsManager;->access$000()Lcom/facebook/UserSettingsManager$UserSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/UserSettingsManager$UserSetting;->getValue()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_86

    .line 155
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    .line 154
    invoke-static {v1, v2}, Lcom/facebook/internal/FetchedAppSettingsManager;->queryAppSettings(Ljava/lang/String;Z)Lcom/facebook/internal/FetchedAppSettings;

    move-result-object v1

    if-eqz v1, :cond_86

    .line 156
    invoke-virtual {v1}, Lcom/facebook/internal/FetchedAppSettings;->getCodelessEventsEnabled()Z

    move-result v1

    if-eqz v1, :cond_86

    .line 158
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 160
    invoke-static {v1}, Lcom/facebook/internal/AttributionIdentifiers;->getAttributionIdentifiers(Landroid/content/Context;)Lcom/facebook/internal/AttributionIdentifiers;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_3a

    .line 161
    invoke-virtual {v1}, Lcom/facebook/internal/AttributionIdentifiers;->getAndroidAdvertiserId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3a

    .line 162
    invoke-virtual {v1}, Lcom/facebook/internal/AttributionIdentifiers;->getAndroidAdvertiserId()Ljava/lang/String;

    move-result-object v4

    goto :goto_3b

    :cond_3a
    move-object v4, v3

    :goto_3b
    if-eqz v4, :cond_86

    .line 165
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "advertiser_id"

    .line 167
    invoke-virtual {v1}, Lcom/facebook/internal/AttributionIdentifiers;->getAndroidAdvertiserId()Ljava/lang/String;

    move-result-object v1

    .line 166
    invoke-virtual {v4, v5, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "fields"

    .line 168
    invoke-virtual {v4, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    .line 171
    invoke-static {v3, v1, v3}, Lcom/facebook/GraphRequest;->newGraphPathRequest(Lcom/facebook/AccessToken;Ljava/lang/String;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;

    move-result-object v1

    const/4 v3, 0x1

    .line 173
    invoke-virtual {v1, v3}, Lcom/facebook/GraphRequest;->setSkipClientToken(Z)V

    .line 174
    invoke-virtual {v1, v4}, Lcom/facebook/GraphRequest;->setParameters(Landroid/os/Bundle;)V

    .line 175
    invoke-virtual {v1}, Lcom/facebook/GraphRequest;->executeAndWait()Lcom/facebook/GraphResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_86

    .line 177
    # getter for: Lcom/facebook/UserSettingsManager;->codelessSetupEnabled:Lcom/facebook/UserSettingsManager$UserSetting;
    invoke-static {}, Lcom/facebook/UserSettingsManager;->access$100()Lcom/facebook/UserSettingsManager$UserSetting;

    move-result-object v3

    .line 178
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v3, Lcom/facebook/UserSettingsManager$UserSetting;->value:Ljava/lang/Boolean;

    .line 179
    # getter for: Lcom/facebook/UserSettingsManager;->codelessSetupEnabled:Lcom/facebook/UserSettingsManager$UserSetting;
    invoke-static {}, Lcom/facebook/UserSettingsManager;->access$100()Lcom/facebook/UserSettingsManager$UserSetting;

    move-result-object v0

    iget-wide v3, p0, Lcom/facebook/UserSettingsManager$1;->val$currTime:J

    iput-wide v3, v0, Lcom/facebook/UserSettingsManager$UserSetting;->lastTS:J

    .line 180
    # getter for: Lcom/facebook/UserSettingsManager;->codelessSetupEnabled:Lcom/facebook/UserSettingsManager$UserSetting;
    invoke-static {}, Lcom/facebook/UserSettingsManager;->access$100()Lcom/facebook/UserSettingsManager$UserSetting;

    move-result-object v0

    # invokes: Lcom/facebook/UserSettingsManager;->writeSettingToCache(Lcom/facebook/UserSettingsManager$UserSetting;)V
    invoke-static {v0}, Lcom/facebook/UserSettingsManager;->access$200(Lcom/facebook/UserSettingsManager$UserSetting;)V

    .line 185
    :cond_86
    # getter for: Lcom/facebook/UserSettingsManager;->isFetchingCodelessStatus:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {}, Lcom/facebook/UserSettingsManager;->access$300()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_8d
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_8d} :catch_8e

    return-void

    :catch_8e
    move-exception v0

    .line 186
    invoke-static {v0, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
