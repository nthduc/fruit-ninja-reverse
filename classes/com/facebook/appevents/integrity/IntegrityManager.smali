.class public final Lcom/facebook/appevents/integrity/IntegrityManager;
.super Ljava/lang/Object;
.source "IntegrityManager.java"


# static fields
.field public static final INTEGRITY_TYPE_ADDRESS:Ljava/lang/String; = "address"

.field public static final INTEGRITY_TYPE_HEALTH:Ljava/lang/String; = "health"

.field public static final INTEGRITY_TYPE_NONE:Ljava/lang/String; = "none"

.field private static final RESTRICTIVE_ON_DEVICE_PARAMS_KEY:Ljava/lang/String; = "_onDeviceParams"

.field private static enabled:Z = false

.field private static isSampleEnabled:Z = false


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enable()V
    .registers 3

    const-class v0, Lcom/facebook/appevents/integrity/IntegrityManager;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    const/4 v0, 0x1

    .line 45
    :try_start_a
    sput-boolean v0, Lcom/facebook/appevents/integrity/IntegrityManager;->enabled:Z

    const-string v0, "FBSDKFeatureIntegritySample"

    .line 48
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 47
    invoke-static {v0, v1, v2}, Lcom/facebook/internal/FetchedAppGateKeepersManager;->getGateKeeperForKey(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/facebook/appevents/integrity/IntegrityManager;->isSampleEnabled:Z
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_19} :catch_1a

    return-void

    :catch_1a
    move-exception v0

    .line 49
    const-class v1, Lcom/facebook/appevents/integrity/IntegrityManager;

    invoke-static {v0, v1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method private static getIntegrityPredictionResult(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const-class v0, Lcom/facebook/appevents/integrity/IntegrityManager;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    :cond_a
    const/16 v0, 0x1e

    .line 81
    :try_start_c
    new-array v0, v0, [F

    const/4 v2, 0x0

    .line 82
    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([FF)V

    .line 83
    sget-object v2, Lcom/facebook/appevents/ml/ModelManager$Task;->MTML_INTEGRITY_DETECT:Lcom/facebook/appevents/ml/ModelManager$Task;

    const/4 v3, 0x1

    new-array v4, v3, [[F

    const/4 v5, 0x0

    aput-object v0, v4, v5

    new-array v0, v3, [Ljava/lang/String;

    aput-object p0, v0, v5

    .line 84
    invoke-static {v2, v4, v0}, Lcom/facebook/appevents/ml/ModelManager;->predict(Lcom/facebook/appevents/ml/ModelManager$Task;[[F[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_27

    const-string p0, "none"

    goto :goto_29

    .line 88
    :cond_27
    aget-object p0, p0, v5
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_29} :catch_2a

    :goto_29
    return-object p0

    :catch_2a
    move-exception p0

    const-class v0, Lcom/facebook/appevents/integrity/IntegrityManager;

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method public static processParameters(Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-class v0, Lcom/facebook/appevents/integrity/IntegrityManager;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 52
    :cond_9
    :try_start_9
    sget-boolean v0, Lcom/facebook/appevents/integrity/IntegrityManager;->enabled:Z

    if-eqz v0, :cond_61

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_11} :catch_62

    if-nez v0, :cond_14

    goto :goto_61

    .line 56
    :cond_14
    :try_start_14
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 58
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 59
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_26
    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_52

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 60
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 62
    invoke-static {v2}, Lcom/facebook/appevents/integrity/IntegrityManager;->shouldFilter(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_44

    invoke-static {v3}, Lcom/facebook/appevents/integrity/IntegrityManager;->shouldFilter(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 63
    :cond_44
    invoke-interface {p0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-boolean v4, Lcom/facebook/appevents/integrity/IntegrityManager;->isSampleEnabled:Z

    if-eqz v4, :cond_4c

    goto :goto_4e

    :cond_4c
    const-string v3, ""

    :goto_4e
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_26

    .line 67
    :cond_52
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-eqz v0, :cond_61

    const-string v0, "_onDeviceParams"

    .line 68
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_61} :catch_61
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_61} :catch_62

    :catch_61
    :cond_61
    :goto_61
    return-void

    :catch_62
    move-exception p0

    .line 73
    const-class v0, Lcom/facebook/appevents/integrity/IntegrityManager;

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method private static shouldFilter(Ljava/lang/String;)Z
    .registers 3

    const-class v0, Lcom/facebook/appevents/integrity/IntegrityManager;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    .line 76
    :cond_a
    :try_start_a
    invoke-static {p0}, Lcom/facebook/appevents/integrity/IntegrityManager;->getIntegrityPredictionResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "none"

    .line 77
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_14} :catch_17

    xor-int/lit8 p0, p0, 0x1

    return p0

    :catch_17
    move-exception p0

    const-class v0, Lcom/facebook/appevents/integrity/IntegrityManager;

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v1
.end method
