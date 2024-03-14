.class public final Lcom/facebook/appevents/suggestedevents/SuggestedEventsManager;
.super Ljava/lang/Object;
.source "SuggestedEventsManager.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final ELIGIBLE_EVENTS_KEY:Ljava/lang/String; = "eligible_for_prediction_events"

.field private static final PRODUCTION_EVENTS_KEY:Ljava/lang/String; = "production_events"

.field private static final eligibleEvents:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final enabled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final productionEvents:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 41
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/facebook/appevents/suggestedevents/SuggestedEventsManager;->enabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 42
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/facebook/appevents/suggestedevents/SuggestedEventsManager;->productionEvents:Ljava/util/Set;

    .line 43
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/facebook/appevents/suggestedevents/SuggestedEventsManager;->eligibleEvents:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized enable()V
    .registers 3

    const-class v0, Lcom/facebook/appevents/suggestedevents/SuggestedEventsManager;

    monitor-enter v0

    :try_start_3
    const-class v1, Lcom/facebook/appevents/suggestedevents/SuggestedEventsManager;

    invoke-static {v1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_2a

    if-eqz v1, :cond_d

    monitor-exit v0

    return-void

    .line 48
    :cond_d
    :try_start_d
    sget-object v1, Lcom/facebook/appevents/suggestedevents/SuggestedEventsManager;->enabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_13} :catch_22
    .catchall {:try_start_d .. :try_end_13} :catchall_2a

    if-eqz v1, :cond_17

    .line 49
    monitor-exit v0

    return-void

    .line 51
    :cond_17
    :try_start_17
    sget-object v1, Lcom/facebook/appevents/suggestedevents/SuggestedEventsManager;->enabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 52
    invoke-static {}, Lcom/facebook/appevents/suggestedevents/SuggestedEventsManager;->initialize()V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_20} :catch_22
    .catchall {:try_start_17 .. :try_end_20} :catchall_2a

    .line 53
    monitor-exit v0

    return-void

    :catch_22
    move-exception v1

    :try_start_23
    const-class v2, Lcom/facebook/appevents/suggestedevents/SuggestedEventsManager;

    invoke-static {v1, v2}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_28
    .catchall {:try_start_23 .. :try_end_28} :catchall_2a

    monitor-exit v0

    return-void

    :catchall_2a
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static initialize()V
    .registers 7

    const-string v0, "eligible_for_prediction_events"

    const-string v1, "production_events"

    const-class v2, Lcom/facebook/appevents/suggestedevents/SuggestedEventsManager;

    invoke-static {v2}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    return-void

    .line 58
    :cond_d
    :try_start_d
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/facebook/internal/FetchedAppSettingsManager;->queryAppSettings(Ljava/lang/String;Z)Lcom/facebook/internal/FetchedAppSettings;

    move-result-object v2

    if-nez v2, :cond_19

    return-void

    .line 62
    :cond_19
    invoke-virtual {v2}, Lcom/facebook/internal/FetchedAppSettings;->getSuggestedEventsSetting()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_20

    return-void

    .line 66
    :cond_20
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 68
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    .line 69
    :goto_30
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_42

    .line 70
    sget-object v5, Lcom/facebook/appevents/suggestedevents/SuggestedEventsManager;->productionEvents:Ljava/util/Set;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    .line 73
    :cond_42
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 74
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 75
    :goto_4c
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v3, v1, :cond_5e

    .line 76
    sget-object v1, Lcom/facebook/appevents/suggestedevents/SuggestedEventsManager;->eligibleEvents:Ljava/util/Set;

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_4c

    .line 79
    :cond_5e
    sget-object v0, Lcom/facebook/appevents/suggestedevents/SuggestedEventsManager;->productionEvents:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6e

    sget-object v0, Lcom/facebook/appevents/suggestedevents/SuggestedEventsManager;->eligibleEvents:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8a

    .line 80
    :cond_6e
    sget-object v0, Lcom/facebook/appevents/ml/ModelManager$Task;->MTML_APP_EVENT_PREDICTION:Lcom/facebook/appevents/ml/ModelManager$Task;

    invoke-static {v0}, Lcom/facebook/appevents/ml/ModelManager;->getRuleFile(Lcom/facebook/appevents/ml/ModelManager$Task;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_77

    return-void

    .line 84
    :cond_77
    invoke-static {v0}, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->initialize(Ljava/io/File;)V

    .line 85
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_8a

    .line 87
    invoke-static {v0}, Lcom/facebook/appevents/suggestedevents/SuggestedEventsManager;->trackActivity(Landroid/app/Activity;)V
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_83} :catch_8a
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_83} :catch_84

    goto :goto_8a

    :catch_84
    move-exception v0

    .line 93
    const-class v1, Lcom/facebook/appevents/suggestedevents/SuggestedEventsManager;

    invoke-static {v0, v1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    :catch_8a
    :cond_8a
    :goto_8a
    return-void
.end method

.method static isEligibleEvents(Ljava/lang/String;)Z
    .registers 3

    const-class v0, Lcom/facebook/appevents/suggestedevents/SuggestedEventsManager;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    .line 118
    :cond_a
    :try_start_a
    sget-object v0, Lcom/facebook/appevents/suggestedevents/SuggestedEventsManager;->eligibleEvents:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_10} :catch_11

    return p0

    :catch_11
    move-exception p0

    const-class v0, Lcom/facebook/appevents/suggestedevents/SuggestedEventsManager;

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v1
.end method

.method public static isEnabled()Z
    .registers 3

    const-class v0, Lcom/facebook/appevents/suggestedevents/SuggestedEventsManager;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    .line 110
    :cond_a
    :try_start_a
    sget-object v0, Lcom/facebook/appevents/suggestedevents/SuggestedEventsManager;->enabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_10} :catch_11

    return v0

    :catch_11
    move-exception v0

    const-class v2, Lcom/facebook/appevents/suggestedevents/SuggestedEventsManager;

    invoke-static {v0, v2}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v1
.end method

.method static isProductionEvents(Ljava/lang/String;)Z
    .registers 3

    const-class v0, Lcom/facebook/appevents/suggestedevents/SuggestedEventsManager;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    .line 114
    :cond_a
    :try_start_a
    sget-object v0, Lcom/facebook/appevents/suggestedevents/SuggestedEventsManager;->productionEvents:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_10} :catch_11

    return p0

    :catch_11
    move-exception p0

    const-class v0, Lcom/facebook/appevents/suggestedevents/SuggestedEventsManager;

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v1
.end method

.method public static trackActivity(Landroid/app/Activity;)V
    .registers 2

    const-class v0, Lcom/facebook/appevents/suggestedevents/SuggestedEventsManager;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 97
    :cond_9
    :try_start_9
    sget-object v0, Lcom/facebook/appevents/suggestedevents/SuggestedEventsManager;->enabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 98
    invoke-static {}, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_2b

    sget-object v0, Lcom/facebook/appevents/suggestedevents/SuggestedEventsManager;->productionEvents:Ljava/util/Set;

    .line 99
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_27

    sget-object v0, Lcom/facebook/appevents/suggestedevents/SuggestedEventsManager;->eligibleEvents:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 100
    :cond_27
    invoke-static {p0}, Lcom/facebook/appevents/suggestedevents/ViewObserver;->startTrackingActivity(Landroid/app/Activity;)V

    goto :goto_35

    .line 102
    :cond_2b
    invoke-static {p0}, Lcom/facebook/appevents/suggestedevents/ViewObserver;->stopTrackingActivity(Landroid/app/Activity;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_2e} :catch_35
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_2e} :catch_2f

    goto :goto_35

    :catch_2f
    move-exception p0

    .line 107
    const-class v0, Lcom/facebook/appevents/suggestedevents/SuggestedEventsManager;

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    :catch_35
    :goto_35
    return-void
.end method
