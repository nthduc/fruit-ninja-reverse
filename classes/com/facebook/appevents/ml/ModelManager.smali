.class public final Lcom/facebook/appevents/ml/ModelManager;
.super Ljava/lang/Object;
.source "ModelManager.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/appevents/ml/ModelManager$TaskHandler;,
        Lcom/facebook/appevents/ml/ModelManager$Task;
    }
.end annotation


# static fields
.field private static final ASSET_URI_KEY:Ljava/lang/String; = "asset_uri"

.field private static final CACHE_KEY_MODELS:Ljava/lang/String; = "models"

.field private static final CACHE_KEY_REQUEST_TIMESTAMP:Ljava/lang/String; = "model_request_timestamp"

.field private static final MODEL_ASSERT_STORE:Ljava/lang/String; = "com.facebook.internal.MODEL_STORE"

.field private static final MODEL_REQUEST_INTERVAL_MILLISECONDS:Ljava/lang/Integer;

.field private static final MTML_INTEGRITY_DETECT_PREDICTION:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MTML_SUGGESTED_EVENTS_PREDICTION:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MTML_USE_CASE:Ljava/lang/String; = "MTML"

.field private static final RULES_URI_KEY:Ljava/lang/String; = "rules_uri"

.field private static final SDK_MODEL_ASSET:Ljava/lang/String; = "%s/model_asset"

.field private static final THRESHOLD_KEY:Ljava/lang/String; = "thresholds"

.field private static final USE_CASE_KEY:Ljava/lang/String; = "use_case"

.field private static final VERSION_ID_KEY:Ljava/lang/String; = "version_id"

.field private static final mTaskHandlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/appevents/ml/ModelManager$TaskHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 82
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/facebook/appevents/ml/ModelManager;->mTaskHandlers:Ljava/util/Map;

    const v0, 0xf731400

    .line 95
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/ml/ModelManager;->MODEL_REQUEST_INTERVAL_MILLISECONDS:Ljava/lang/Integer;

    const-string v0, "other"

    const-string v1, "fb_mobile_complete_registration"

    const-string v2, "fb_mobile_add_to_cart"

    const-string v3, "fb_mobile_purchase"

    const-string v4, "fb_mobile_initiated_checkout"

    .line 99
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    .line 100
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/ml/ModelManager;->MTML_SUGGESTED_EVENTS_PREDICTION:Ljava/util/List;

    const-string v0, "none"

    const-string v1, "address"

    const-string v2, "health"

    .line 107
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 108
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/ml/ModelManager;->MTML_INTEGRITY_DETECT_PREDICTION:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(J)Z
    .registers 4

    const-class v0, Lcom/facebook/appevents/ml/ModelManager;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    .line 54
    :cond_a
    :try_start_a
    invoke-static {p0, p1}, Lcom/facebook/appevents/ml/ModelManager;->isValidTimestamp(J)Z

    move-result p0
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_e} :catch_f

    return p0

    :catch_f
    move-exception p0

    const-class p1, Lcom/facebook/appevents/ml/ModelManager;

    invoke-static {p0, p1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v1
.end method

.method static synthetic access$100()Lorg/json/JSONObject;
    .registers 3

    const-class v0, Lcom/facebook/appevents/ml/ModelManager;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    .line 54
    :cond_a
    :try_start_a
    invoke-static {}, Lcom/facebook/appevents/ml/ModelManager;->fetchModels()Lorg/json/JSONObject;

    move-result-object v0
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_e} :catch_f

    return-object v0

    :catch_f
    move-exception v0

    const-class v2, Lcom/facebook/appevents/ml/ModelManager;

    invoke-static {v0, v2}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method static synthetic access$200(Lorg/json/JSONObject;)V
    .registers 2

    const-class v0, Lcom/facebook/appevents/ml/ModelManager;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 54
    :cond_9
    :try_start_9
    invoke-static {p0}, Lcom/facebook/appevents/ml/ModelManager;->addModels(Lorg/json/JSONObject;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception p0

    const-class v0, Lcom/facebook/appevents/ml/ModelManager;

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$300()V
    .registers 2

    const-class v0, Lcom/facebook/appevents/ml/ModelManager;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 54
    :cond_9
    :try_start_9
    invoke-static {}, Lcom/facebook/appevents/ml/ModelManager;->enableMTML()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception v0

    const-class v1, Lcom/facebook/appevents/ml/ModelManager;

    invoke-static {v0, v1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$400(Lorg/json/JSONArray;)[F
    .registers 3

    const-class v0, Lcom/facebook/appevents/ml/ModelManager;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    .line 54
    :cond_a
    :try_start_a
    invoke-static {p0}, Lcom/facebook/appevents/ml/ModelManager;->parseJsonArray(Lorg/json/JSONArray;)[F

    move-result-object p0
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_e} :catch_f

    return-object p0

    :catch_f
    move-exception p0

    const-class v0, Lcom/facebook/appevents/ml/ModelManager;

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method private static addModels(Lorg/json/JSONObject;)V
    .registers 5

    const-class v0, Lcom/facebook/appevents/ml/ModelManager;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 158
    :cond_9
    :try_start_9
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_d} :catch_2d

    .line 160
    :goto_d
    :try_start_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 161
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 162
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/appevents/ml/ModelManager$TaskHandler;->build(Lorg/json/JSONObject;)Lcom/facebook/appevents/ml/ModelManager$TaskHandler;

    move-result-object v1

    if-nez v1, :cond_24

    goto :goto_d

    .line 166
    :cond_24
    sget-object v2, Lcom/facebook/appevents/ml/ModelManager;->mTaskHandlers:Ljava/util/Map;

    iget-object v3, v1, Lcom/facebook/appevents/ml/ModelManager$TaskHandler;->useCase:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2b
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_2b} :catch_2c
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_2b} :catch_2d

    goto :goto_d

    :catch_2c
    :cond_2c
    return-void

    :catch_2d
    move-exception p0

    .line 171
    const-class v0, Lcom/facebook/appevents/ml/ModelManager;

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public static enable()V
    .registers 2

    const-class v0, Lcom/facebook/appevents/ml/ModelManager;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 114
    :cond_9
    :try_start_9
    new-instance v0, Lcom/facebook/appevents/ml/ModelManager$1;

    invoke-direct {v0}, Lcom/facebook/appevents/ml/ModelManager$1;-><init>()V

    invoke-static {v0}, Lcom/facebook/internal/Utility;->runOnNonUiThread(Ljava/lang/Runnable;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_11} :catch_12

    return-void

    :catch_12
    move-exception v0

    .line 148
    const-class v1, Lcom/facebook/appevents/ml/ModelManager;

    invoke-static {v0, v1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method private static enableMTML()V
    .registers 10

    const-class v0, Lcom/facebook/appevents/ml/ModelManager;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 218
    :cond_9
    :try_start_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 221
    sget-object v3, Lcom/facebook/appevents/ml/ModelManager;->mTaskHandlers:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v6, v1

    const/4 v8, 0x0

    :cond_1c
    :goto_1c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_93

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 222
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 223
    sget-object v4, Lcom/facebook/appevents/ml/ModelManager$Task;->MTML_APP_EVENT_PREDICTION:Lcom/facebook/appevents/ml/ModelManager$Task;

    invoke-virtual {v4}, Lcom/facebook/appevents/ml/ModelManager$Task;->toUseCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_62

    .line 224
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/appevents/ml/ModelManager$TaskHandler;

    .line 225
    iget-object v6, v4, Lcom/facebook/appevents/ml/ModelManager$TaskHandler;->assetUri:Ljava/lang/String;

    .line 226
    iget v5, v4, Lcom/facebook/appevents/ml/ModelManager$TaskHandler;->versionId:I

    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 227
    sget-object v5, Lcom/facebook/internal/FeatureManager$Feature;->SuggestedEvents:Lcom/facebook/internal/FeatureManager$Feature;

    invoke-static {v5}, Lcom/facebook/internal/FeatureManager;->isEnabled(Lcom/facebook/internal/FeatureManager$Feature;)Z

    move-result v5

    if-eqz v5, :cond_62

    invoke-static {}, Lcom/facebook/appevents/ml/ModelManager;->isLocaleEnglish()Z

    move-result v5

    if-eqz v5, :cond_62

    .line 228
    new-instance v5, Lcom/facebook/appevents/ml/ModelManager$2;

    invoke-direct {v5}, Lcom/facebook/appevents/ml/ModelManager$2;-><init>()V

    .line 229
    invoke-virtual {v4, v5}, Lcom/facebook/appevents/ml/ModelManager$TaskHandler;->setOnPostExecute(Ljava/lang/Runnable;)Lcom/facebook/appevents/ml/ModelManager$TaskHandler;

    move-result-object v4

    .line 228
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    :cond_62
    sget-object v4, Lcom/facebook/appevents/ml/ModelManager$Task;->MTML_INTEGRITY_DETECT:Lcom/facebook/appevents/ml/ModelManager$Task;

    invoke-virtual {v4}, Lcom/facebook/appevents/ml/ModelManager$Task;->toUseCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 239
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/appevents/ml/ModelManager$TaskHandler;

    .line 240
    iget-object v2, v1, Lcom/facebook/appevents/ml/ModelManager$TaskHandler;->assetUri:Ljava/lang/String;

    .line 241
    iget v4, v1, Lcom/facebook/appevents/ml/ModelManager$TaskHandler;->versionId:I

    invoke-static {v8, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 242
    sget-object v5, Lcom/facebook/internal/FeatureManager$Feature;->IntelligentIntegrity:Lcom/facebook/internal/FeatureManager$Feature;

    invoke-static {v5}, Lcom/facebook/internal/FeatureManager;->isEnabled(Lcom/facebook/internal/FeatureManager$Feature;)Z

    move-result v5

    if-eqz v5, :cond_90

    .line 243
    new-instance v5, Lcom/facebook/appevents/ml/ModelManager$3;

    invoke-direct {v5}, Lcom/facebook/appevents/ml/ModelManager$3;-><init>()V

    .line 244
    invoke-virtual {v1, v5}, Lcom/facebook/appevents/ml/ModelManager$TaskHandler;->setOnPostExecute(Ljava/lang/Runnable;)Lcom/facebook/appevents/ml/ModelManager$TaskHandler;

    move-result-object v1

    .line 243
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_90
    move-object v6, v2

    move v8, v4

    goto :goto_1c

    :cond_93
    if-eqz v6, :cond_aa

    if-lez v8, :cond_aa

    .line 255
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_aa

    .line 256
    new-instance v1, Lcom/facebook/appevents/ml/ModelManager$TaskHandler;

    const-string v5, "MTML"

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Lcom/facebook/appevents/ml/ModelManager$TaskHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[F)V

    .line 258
    invoke-static {v1, v0}, Lcom/facebook/appevents/ml/ModelManager$TaskHandler;->execute(Lcom/facebook/appevents/ml/ModelManager$TaskHandler;Ljava/util/List;)V
    :try_end_aa
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_aa} :catch_ab

    :cond_aa
    return-void

    :catch_ab
    move-exception v0

    .line 260
    const-class v1, Lcom/facebook/appevents/ml/ModelManager;

    invoke-static {v0, v1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method private static fetchModels()Lorg/json/JSONObject;
    .registers 7
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-class v0, Lcom/facebook/appevents/ml/ModelManager;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    :cond_a
    :try_start_a
    const-string v0, "use_case"

    const-string v2, "version_id"

    const-string v3, "asset_uri"

    const-string v4, "rules_uri"

    const-string v5, "thresholds"

    .line 198
    filled-new-array {v0, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v0

    .line 202
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "fields"

    const-string v4, ","

    .line 204
    invoke-static {v4, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "%s/model_asset"

    const/4 v3, 0x1

    .line 205
    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 207
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 206
    invoke-static {v1, v0, v1}, Lcom/facebook/GraphRequest;->newGraphPathRequest(Lcom/facebook/AccessToken;Ljava/lang/String;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;

    move-result-object v0

    .line 208
    invoke-virtual {v0, v3}, Lcom/facebook/GraphRequest;->setSkipClientToken(Z)V

    .line 209
    invoke-virtual {v0, v2}, Lcom/facebook/GraphRequest;->setParameters(Landroid/os/Bundle;)V

    .line 210
    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->executeAndWait()Lcom/facebook/GraphResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_4d

    return-object v1

    .line 214
    :cond_4d
    invoke-static {v0}, Lcom/facebook/appevents/ml/ModelManager;->parseRawJsonObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_51} :catch_52

    return-object v0

    :catch_52
    move-exception v0

    const-class v2, Lcom/facebook/appevents/ml/ModelManager;

    invoke-static {v0, v2}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method public static getRuleFile(Lcom/facebook/appevents/ml/ModelManager$Task;)Ljava/io/File;
    .registers 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-class v0, Lcom/facebook/appevents/ml/ModelManager;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    .line 285
    :cond_a
    :try_start_a
    sget-object v0, Lcom/facebook/appevents/ml/ModelManager;->mTaskHandlers:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/facebook/appevents/ml/ModelManager$Task;->toUseCase()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/appevents/ml/ModelManager$TaskHandler;

    if-nez p0, :cond_19

    return-object v1

    .line 290
    :cond_19
    iget-object p0, p0, Lcom/facebook/appevents/ml/ModelManager$TaskHandler;->ruleFile:Ljava/io/File;
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_1b} :catch_1c

    return-object p0

    :catch_1c
    move-exception p0

    const-class v0, Lcom/facebook/appevents/ml/ModelManager;

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method private static isLocaleEnglish()Z
    .registers 3

    const-class v0, Lcom/facebook/appevents/ml/ModelManager;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    .line 263
    :cond_a
    :try_start_a
    invoke-static {}, Lcom/facebook/internal/Utility;->getResourceLocale()Ljava/util/Locale;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 264
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "en"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_1a} :catch_1e

    if-eqz v0, :cond_1d

    :cond_1c
    const/4 v1, 0x1

    :cond_1d
    return v1

    :catch_1e
    move-exception v0

    const-class v2, Lcom/facebook/appevents/ml/ModelManager;

    invoke-static {v0, v2}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v1
.end method

.method private static isValidTimestamp(J)Z
    .registers 6

    const-class v0, Lcom/facebook/appevents/ml/ModelManager;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    :cond_a
    const-wide/16 v2, 0x0

    cmp-long v0, p0, v2

    if-nez v0, :cond_11

    return v1

    .line 154
    :cond_11
    :try_start_11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, p0

    sget-object p0, Lcom/facebook/appevents/ml/ModelManager;->MODEL_REQUEST_INTERVAL_MILLISECONDS:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_1c} :catch_23

    int-to-long p0, p0

    cmp-long v0, v2, p0

    if-gez v0, :cond_22

    const/4 v1, 0x1

    :cond_22
    return v1

    :catch_23
    move-exception p0

    const-class p1, Lcom/facebook/appevents/ml/ModelManager;

    invoke-static {p0, p1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v1
.end method

.method private static parseJsonArray(Lorg/json/JSONArray;)[F
    .registers 5
    .param p0    # Lorg/json/JSONArray;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-class v0, Lcom/facebook/appevents/ml/ModelManager;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    :cond_a
    if-nez p0, :cond_d

    return-object v1

    .line 272
    :cond_d
    :try_start_d
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [F

    const/4 v2, 0x0

    .line 273
    :goto_14
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_18} :catch_28

    if-ge v2, v3, :cond_27

    .line 275
    :try_start_1a
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    aput v3, v0, v2
    :try_end_24
    .catch Lorg/json/JSONException; {:try_start_1a .. :try_end_24} :catch_24
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_24} :catch_28

    :catch_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_27
    return-object v0

    :catch_28
    move-exception p0

    .line 280
    const-class v0, Lcom/facebook/appevents/ml/ModelManager;

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method private static parseRawJsonObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 12

    const-string v0, "asset_uri"

    const-string v1, "thresholds"

    const-string v2, "version_id"

    const-string v3, "rules_uri"

    const-string v4, "use_case"

    const-class v5, Lcom/facebook/appevents/ml/ModelManager;

    invoke-static {v5}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_14

    return-object v6

    .line 174
    :cond_14
    :try_start_14
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_19} :catch_69

    :try_start_19
    const-string v7, "data"

    .line 176
    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    const/4 v7, 0x0

    .line 177
    :goto_20
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_62

    .line 178
    invoke-virtual {p0, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 179
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 180
    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v2, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 181
    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v4, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 182
    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    invoke-virtual {v9, v1, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 183
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v0, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 185
    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_58

    .line 186
    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v3, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 188
    :cond_58
    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5f
    .catch Lorg/json/JSONException; {:try_start_19 .. :try_end_5f} :catch_63
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_5f} :catch_69

    add-int/lit8 v7, v7, 0x1

    goto :goto_20

    :cond_62
    return-object v5

    .line 192
    :catch_63
    :try_start_63
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V
    :try_end_68
    .catch Ljava/lang/Throwable; {:try_start_63 .. :try_end_68} :catch_69

    return-object p0

    :catch_69
    move-exception p0

    const-class v0, Lcom/facebook/appevents/ml/ModelManager;

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v6
.end method

.method public static predict(Lcom/facebook/appevents/ml/ModelManager$Task;[[F[Ljava/lang/String;)[Ljava/lang/String;
    .registers 15
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-class v0, Lcom/facebook/appevents/ml/ModelManager;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    .line 295
    :cond_a
    :try_start_a
    sget-object v0, Lcom/facebook/appevents/ml/ModelManager;->mTaskHandlers:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/facebook/appevents/ml/ModelManager$Task;->toUseCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/appevents/ml/ModelManager$TaskHandler;

    if-eqz v0, :cond_72

    .line 296
    iget-object v2, v0, Lcom/facebook/appevents/ml/ModelManager$TaskHandler;->model:Lcom/facebook/appevents/ml/Model;

    if-nez v2, :cond_1d

    goto :goto_72

    .line 300
    :cond_1d
    array-length v2, p2

    const/4 v3, 0x0

    .line 301
    aget-object v4, p1, v3

    array-length v4, v4

    .line 302
    new-instance v5, Lcom/facebook/appevents/ml/MTensor;

    const/4 v6, 0x2

    new-array v7, v6, [I

    aput v2, v7, v3

    const/4 v8, 0x1

    aput v4, v7, v8

    invoke-direct {v5, v7}, Lcom/facebook/appevents/ml/MTensor;-><init>([I)V

    const/4 v7, 0x0

    :goto_30
    if-ge v7, v2, :cond_40

    .line 304
    aget-object v9, p1, v7

    invoke-virtual {v5}, Lcom/facebook/appevents/ml/MTensor;->getData()[F

    move-result-object v10

    mul-int v11, v7, v4

    invoke-static {v9, v3, v10, v11, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_30

    .line 307
    :cond_40
    iget-object p1, v0, Lcom/facebook/appevents/ml/ModelManager$TaskHandler;->model:Lcom/facebook/appevents/ml/Model;

    invoke-virtual {p0}, Lcom/facebook/appevents/ml/ModelManager$Task;->toKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v5, p2, v2}, Lcom/facebook/appevents/ml/Model;->predictOnMTML(Lcom/facebook/appevents/ml/MTensor;[Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/appevents/ml/MTensor;

    move-result-object p1

    .line 308
    iget-object p2, v0, Lcom/facebook/appevents/ml/ModelManager$TaskHandler;->thresholds:[F

    if-eqz p1, :cond_72

    if-eqz p2, :cond_72

    .line 309
    invoke-virtual {p1}, Lcom/facebook/appevents/ml/MTensor;->getData()[F

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_72

    array-length v0, p2

    if-nez v0, :cond_5b

    goto :goto_72

    .line 313
    :cond_5b
    sget-object v0, Lcom/facebook/appevents/ml/ModelManager$4;->$SwitchMap$com$facebook$appevents$ml$ModelManager$Task:[I

    invoke-virtual {p0}, Lcom/facebook/appevents/ml/ModelManager$Task;->ordinal()I

    move-result p0

    aget p0, v0, p0

    if-eq p0, v8, :cond_6d

    if-eq p0, v6, :cond_68

    return-object v1

    .line 315
    :cond_68
    invoke-static {p1, p2}, Lcom/facebook/appevents/ml/ModelManager;->processSuggestedEventResult(Lcom/facebook/appevents/ml/MTensor;[F)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 317
    :cond_6d
    invoke-static {p1, p2}, Lcom/facebook/appevents/ml/ModelManager;->processIntegrityDetectionResult(Lcom/facebook/appevents/ml/MTensor;[F)[Ljava/lang/String;

    move-result-object p0
    :try_end_71
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_71} :catch_73

    return-object p0

    :cond_72
    :goto_72
    return-object v1

    :catch_73
    move-exception p0

    .line 319
    const-class p1, Lcom/facebook/appevents/ml/ModelManager;

    invoke-static {p0, p1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method private static processIntegrityDetectionResult(Lcom/facebook/appevents/ml/MTensor;[F)[Ljava/lang/String;
    .registers 11
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-class v0, Lcom/facebook/appevents/ml/ModelManager;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    :cond_a
    const/4 v0, 0x0

    .line 346
    :try_start_b
    invoke-virtual {p0, v0}, Lcom/facebook/appevents/ml/MTensor;->getShape(I)I

    move-result v2

    const/4 v3, 0x1

    .line 347
    invoke-virtual {p0, v3}, Lcom/facebook/appevents/ml/MTensor;->getShape(I)I

    move-result v3

    .line 348
    invoke-virtual {p0}, Lcom/facebook/appevents/ml/MTensor;->getData()[F

    move-result-object p0

    .line 349
    new-array v4, v2, [Ljava/lang/String;

    .line 351
    array-length v5, p1

    if-eq v3, v5, :cond_1e

    return-object v1

    :cond_1e
    const/4 v5, 0x0

    :goto_1f
    if-ge v5, v2, :cond_44

    const-string v6, "none"

    .line 356
    aput-object v6, v4, v5

    const/4 v6, 0x0

    .line 357
    :goto_26
    array-length v7, p1

    if-ge v6, v7, :cond_41

    mul-int v7, v5, v3

    add-int/2addr v7, v6

    .line 358
    aget v7, p0, v7

    aget v8, p1, v6

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_3e

    .line 359
    sget-object v7, Lcom/facebook/appevents/ml/ModelManager;->MTML_INTEGRITY_DETECT_PREDICTION:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aput-object v7, v4, v5
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_3e} :catch_45

    :cond_3e
    add-int/lit8 v6, v6, 0x1

    goto :goto_26

    :cond_41
    add-int/lit8 v5, v5, 0x1

    goto :goto_1f

    :cond_44
    return-object v4

    :catch_45
    move-exception p0

    .line 363
    const-class p1, Lcom/facebook/appevents/ml/ModelManager;

    invoke-static {p0, p1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method private static processSuggestedEventResult(Lcom/facebook/appevents/ml/MTensor;[F)[Ljava/lang/String;
    .registers 11
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-class v0, Lcom/facebook/appevents/ml/ModelManager;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    :cond_a
    const/4 v0, 0x0

    .line 324
    :try_start_b
    invoke-virtual {p0, v0}, Lcom/facebook/appevents/ml/MTensor;->getShape(I)I

    move-result v2

    const/4 v3, 0x1

    .line 325
    invoke-virtual {p0, v3}, Lcom/facebook/appevents/ml/MTensor;->getShape(I)I

    move-result v3

    .line 326
    invoke-virtual {p0}, Lcom/facebook/appevents/ml/MTensor;->getData()[F

    move-result-object p0

    .line 327
    new-array v4, v2, [Ljava/lang/String;

    .line 329
    array-length v5, p1

    if-eq v3, v5, :cond_1e

    return-object v1

    :cond_1e
    const/4 v5, 0x0

    :goto_1f
    if-ge v5, v2, :cond_44

    const-string v6, "other"

    .line 334
    aput-object v6, v4, v5

    const/4 v6, 0x0

    .line 335
    :goto_26
    array-length v7, p1

    if-ge v6, v7, :cond_41

    mul-int v7, v5, v3

    add-int/2addr v7, v6

    .line 336
    aget v7, p0, v7

    aget v8, p1, v6

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_3e

    .line 337
    sget-object v7, Lcom/facebook/appevents/ml/ModelManager;->MTML_SUGGESTED_EVENTS_PREDICTION:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aput-object v7, v4, v5
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_3e} :catch_45

    :cond_3e
    add-int/lit8 v6, v6, 0x1

    goto :goto_26

    :cond_41
    add-int/lit8 v5, v5, 0x1

    goto :goto_1f

    :cond_44
    return-object v4

    :catch_45
    move-exception p0

    .line 341
    const-class p1, Lcom/facebook/appevents/ml/ModelManager;

    invoke-static {p0, p1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method
