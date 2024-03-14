.class final Lcom/facebook/appevents/codeless/CodelessManager$2;
.super Ljava/lang/Object;
.source "CodelessManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/codeless/CodelessManager;->checkCodelessSession(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$applicationId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 143
    iput-object p1, p0, Lcom/facebook/appevents/codeless/CodelessManager$2;->val$applicationId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    const-string v0, "0"

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    return-void

    .line 146
    :cond_9
    :try_start_9
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%s/app_indexing_session"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/facebook/appevents/codeless/CodelessManager$2;->val$applicationId:Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 149
    invoke-static {v1, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 147
    invoke-static {v2, v1, v2, v2}, Lcom/facebook/GraphRequest;->newPostRequest(Lcom/facebook/AccessToken;Ljava/lang/String;Lorg/json/JSONObject;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;

    move-result-object v1

    .line 153
    invoke-virtual {v1}, Lcom/facebook/GraphRequest;->getParameters()Landroid/os/Bundle;

    move-result-object v4

    if-nez v4, :cond_29

    .line 155
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 158
    :cond_29
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 160
    invoke-static {v5}, Lcom/facebook/internal/AttributionIdentifiers;->getAttributionIdentifiers(Landroid/content/Context;)Lcom/facebook/internal/AttributionIdentifiers;

    move-result-object v5

    .line 162
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 163
    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_38} :catch_da

    const-string v9, ""

    if-eqz v8, :cond_3f

    :try_start_3c
    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    goto :goto_40

    :cond_3f
    move-object v8, v9

    :goto_40
    invoke-virtual {v7, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    if-eqz v5, :cond_53

    .line 164
    invoke-virtual {v5}, Lcom/facebook/internal/AttributionIdentifiers;->getAndroidAdvertiserId()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_53

    .line 165
    invoke-virtual {v5}, Lcom/facebook/internal/AttributionIdentifiers;->getAndroidAdvertiserId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_56

    .line 167
    :cond_53
    invoke-virtual {v7, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 169
    :goto_56
    invoke-virtual {v7, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 170
    invoke-static {}, Lcom/facebook/appevents/internal/AppEventUtility;->isEmulator()Z

    move-result v5

    if-eqz v5, :cond_61

    const-string v0, "1"

    :cond_61
    invoke-virtual {v7, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 172
    invoke-static {}, Lcom/facebook/internal/Utility;->getCurrentLocale()Ljava/util/Locale;

    move-result-object v0

    .line 173
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "_"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 174
    invoke-virtual {v7}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "device_session_id"

    .line 177
    invoke-static {}, Lcom/facebook/appevents/codeless/CodelessManager;->getCurrentDeviceSessionID()Ljava/lang/String;

    move-result-object v7

    .line 175
    invoke-virtual {v4, v5, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "extinfo"

    .line 178
    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-virtual {v1, v4}, Lcom/facebook/GraphRequest;->setParameters(Landroid/os/Bundle;)V

    .line 182
    invoke-virtual {v1}, Lcom/facebook/GraphRequest;->executeAndWait()Lcom/facebook/GraphResponse;

    move-result-object v0

    .line 183
    invoke-virtual {v0}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_af

    const-string v1, "is_app_indexing_enabled"

    .line 186
    invoke-virtual {v0, v1, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_af

    goto :goto_b0

    :cond_af
    const/4 v3, 0x0

    .line 185
    :goto_b0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 184
    invoke-static {v0}, Lcom/facebook/appevents/codeless/CodelessManager;->access$102(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 189
    invoke-static {}, Lcom/facebook/appevents/codeless/CodelessManager;->access$100()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_c5

    .line 190
    invoke-static {v2}, Lcom/facebook/appevents/codeless/CodelessManager;->access$202(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_d2

    .line 192
    :cond_c5
    invoke-static {}, Lcom/facebook/appevents/codeless/CodelessManager;->access$300()Lcom/facebook/appevents/codeless/ViewIndexer;

    move-result-object v0

    if-eqz v0, :cond_d2

    .line 193
    invoke-static {}, Lcom/facebook/appevents/codeless/CodelessManager;->access$300()Lcom/facebook/appevents/codeless/ViewIndexer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/appevents/codeless/ViewIndexer;->schedule()V

    .line 197
    :cond_d2
    :goto_d2
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/appevents/codeless/CodelessManager;->access$402(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    :try_end_d9
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_d9} :catch_da

    return-void

    :catch_da
    move-exception v0

    .line 198
    invoke-static {v0, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
