.class final Lcom/facebook/appevents/suggestedevents/PredictionHistoryManager;
.super Ljava/lang/Object;
.source "PredictionHistoryManager.java"


# static fields
.field private static final CLICKED_PATH_STORE:Ljava/lang/String; = "com.facebook.internal.SUGGESTED_EVENTS_HISTORY"

.field private static final SUGGESTED_EVENTS_HISTORY:Ljava/lang/String; = "SUGGESTED_EVENTS_HISTORY"

.field private static final clickedViewPaths:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static shardPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/facebook/appevents/suggestedevents/PredictionHistoryManager;->clickedViewPaths:Ljava/util/Map;

    .line 47
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/facebook/appevents/suggestedevents/PredictionHistoryManager;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addPrediction(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    const-class v0, Lcom/facebook/appevents/suggestedevents/PredictionHistoryManager;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 62
    :cond_9
    :try_start_9
    sget-object v0, Lcom/facebook/appevents/suggestedevents/PredictionHistoryManager;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_14

    .line 63
    invoke-static {}, Lcom/facebook/appevents/suggestedevents/PredictionHistoryManager;->initAndWait()V

    .line 66
    :cond_14
    sget-object v0, Lcom/facebook/appevents/suggestedevents/PredictionHistoryManager;->clickedViewPaths:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object p0, Lcom/facebook/appevents/suggestedevents/PredictionHistoryManager;->shardPreferences:Landroid/content/SharedPreferences;

    .line 68
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "SUGGESTED_EVENTS_HISTORY"

    sget-object v0, Lcom/facebook/appevents/suggestedevents/PredictionHistoryManager;->clickedViewPaths:Ljava/util/Map;

    .line 69
    invoke-static {v0}, Lcom/facebook/internal/Utility;->mapToJsonStr(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 70
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_2e} :catch_2f

    return-void

    :catch_2f
    move-exception p0

    .line 71
    const-class p1, Lcom/facebook/appevents/suggestedevents/PredictionHistoryManager;

    invoke-static {p0, p1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method static getPathID(Landroid/view/View;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-class v0, Lcom/facebook/appevents/suggestedevents/PredictionHistoryManager;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    .line 75
    :cond_a
    :try_start_a
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_f} :catch_39

    :try_start_f
    const-string v2, "text"

    .line 77
    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 78
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    :goto_19
    if-eqz p0, :cond_2b

    .line 80
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 81
    invoke-static {p0}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->getParentOfView(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object p0

    goto :goto_19

    :cond_2b
    const-string p0, "classname"

    .line 83
    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_30
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_30} :catch_30
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_30} :catch_39

    .line 87
    :catch_30
    :try_start_30
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/facebook/internal/Utility;->sha256hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_38} :catch_39

    return-object p0

    :catch_39
    move-exception p0

    const-class p1, Lcom/facebook/appevents/suggestedevents/PredictionHistoryManager;

    invoke-static {p0, p1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method private static initAndWait()V
    .registers 4

    const-class v0, Lcom/facebook/appevents/suggestedevents/PredictionHistoryManager;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 50
    :cond_9
    :try_start_9
    sget-object v0, Lcom/facebook/appevents/suggestedevents/PredictionHistoryManager;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_12

    return-void

    .line 54
    :cond_12
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.facebook.internal.SUGGESTED_EVENTS_HISTORY"

    const/4 v2, 0x0

    .line 55
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/suggestedevents/PredictionHistoryManager;->shardPreferences:Landroid/content/SharedPreferences;

    .line 56
    sget-object v0, Lcom/facebook/appevents/suggestedevents/PredictionHistoryManager;->clickedViewPaths:Ljava/util/Map;

    sget-object v1, Lcom/facebook/appevents/suggestedevents/PredictionHistoryManager;->shardPreferences:Landroid/content/SharedPreferences;

    const-string v2, "SUGGESTED_EVENTS_HISTORY"

    const-string v3, ""

    .line 57
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/internal/Utility;->JsonStrToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 56
    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 58
    sget-object v0, Lcom/facebook/appevents/suggestedevents/PredictionHistoryManager;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_38} :catch_39

    return-void

    :catch_39
    move-exception v0

    .line 59
    const-class v1, Lcom/facebook/appevents/suggestedevents/PredictionHistoryManager;

    invoke-static {v0, v1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method static queryEvent(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-class v0, Lcom/facebook/appevents/suggestedevents/PredictionHistoryManager;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    .line 92
    :cond_a
    :try_start_a
    sget-object v0, Lcom/facebook/appevents/suggestedevents/PredictionHistoryManager;->clickedViewPaths:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    sget-object v0, Lcom/facebook/appevents/suggestedevents/PredictionHistoryManager;->clickedViewPaths:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_1a} :catch_1d

    goto :goto_1c

    :cond_1b
    move-object p0, v1

    :goto_1c
    return-object p0

    :catch_1d
    move-exception p0

    const-class v0, Lcom/facebook/appevents/suggestedevents/PredictionHistoryManager;

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method
