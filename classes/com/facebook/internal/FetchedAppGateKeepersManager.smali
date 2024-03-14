.class public final Lcom/facebook/internal/FetchedAppGateKeepersManager;
.super Ljava/lang/Object;
.source "FetchedAppGateKeepersManager.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/FetchedAppGateKeepersManager$Callback;
    }
.end annotation


# static fields
.field private static final APPLICATION_FIELDS:Ljava/lang/String; = "fields"

.field private static final APPLICATION_GATEKEEPER_CACHE_TIMEOUT:J = 0x36ee80L

.field private static final APPLICATION_GATEKEEPER_EDGE:Ljava/lang/String; = "mobile_sdk_gk"

.field private static final APPLICATION_GATEKEEPER_FIELD:Ljava/lang/String; = "gatekeepers"

.field private static final APPLICATION_GRAPH_DATA:Ljava/lang/String; = "data"

.field private static final APPLICATION_PLATFORM:Ljava/lang/String; = "platform"

.field private static final APPLICATION_SDK_VERSION:Ljava/lang/String; = "sdk_version"

.field private static final APP_GATEKEEPERS_PREFS_KEY_FORMAT:Ljava/lang/String; = "com.facebook.internal.APP_GATEKEEPERS.%s"

.field private static final APP_GATEKEEPERS_PREFS_STORE:Ljava/lang/String; = "com.facebook.internal.preferences.APP_GATEKEEPERS"

.field private static final APP_PLATFORM:Ljava/lang/String; = "android"

.field private static final TAG:Ljava/lang/String; = "com.facebook.internal.FetchedAppGateKeepersManager"

.field private static final callbacks:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/facebook/internal/FetchedAppGateKeepersManager$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private static final fetchedAppGateKeepers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private static final isLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static timestamp:Ljava/lang/Long;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 61
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/facebook/internal/FetchedAppGateKeepersManager;->isLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 62
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lcom/facebook/internal/FetchedAppGateKeepersManager;->callbacks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 63
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/facebook/internal/FetchedAppGateKeepersManager;->fetchedAppGateKeepers:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 1

    .line 47
    invoke-static {p0}, Lcom/facebook/internal/FetchedAppGateKeepersManager;->getAppGateKeepersQueryResponse(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 2

    .line 47
    invoke-static {p0, p1}, Lcom/facebook/internal/FetchedAppGateKeepersManager;->parseAppGateKeepersFromJSON(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$202(Ljava/lang/Long;)Ljava/lang/Long;
    .registers 1

    .line 47
    sput-object p0, Lcom/facebook/internal/FetchedAppGateKeepersManager;->timestamp:Ljava/lang/Long;

    return-object p0
.end method

.method static synthetic access$300()V
    .registers 0

    .line 47
    invoke-static {}, Lcom/facebook/internal/FetchedAppGateKeepersManager;->pollCallbacks()V

    return-void
.end method

.method static synthetic access$400()Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .line 47
    sget-object v0, Lcom/facebook/internal/FetchedAppGateKeepersManager;->isLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private static getAppGateKeepersQueryResponse(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 195
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "platform"

    const-string v2, "android"

    .line 196
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    invoke-static {}, Lcom/facebook/FacebookSdk;->getSdkVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sdk_version"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "fields"

    const-string v2, "gatekeepers"

    .line 198
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x2

    .line 200
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    const-string v2, "mobile_sdk_gk"

    aput-object v2, v1, p0

    const-string v2, "%s/%s"

    .line 202
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 201
    invoke-static {v2, v1, v2}, Lcom/facebook/GraphRequest;->newGraphPathRequest(Lcom/facebook/AccessToken;Ljava/lang/String;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;

    move-result-object v1

    .line 203
    invoke-virtual {v1, p0}, Lcom/facebook/GraphRequest;->setSkipClientToken(Z)V

    .line 204
    invoke-virtual {v1, v0}, Lcom/facebook/GraphRequest;->setParameters(Landroid/os/Bundle;)V

    .line 206
    invoke-virtual {v1}, Lcom/facebook/GraphRequest;->executeAndWait()Lcom/facebook/GraphResponse;

    move-result-object p0

    invoke-virtual {p0}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static getGateKeeperForKey(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 4

    .line 184
    invoke-static {}, Lcom/facebook/internal/FetchedAppGateKeepersManager;->loadAppGateKeepersAsync()V

    if-eqz p1, :cond_1b

    .line 185
    sget-object v0, Lcom/facebook/internal/FetchedAppGateKeepersManager;->fetchedAppGateKeepers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_1b

    .line 188
    :cond_e
    sget-object v0, Lcom/facebook/internal/FetchedAppGateKeepersManager;->fetchedAppGateKeepers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p1, p0, p2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    :cond_1b
    :goto_1b
    return p2
.end method

.method private static isTimestampValid(Ljava/lang/Long;)Z
    .registers 6
    .param p0    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 243
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x36ee80

    cmp-long p0, v1, v3

    if-gez p0, :cond_15

    const/4 v0, 0x1

    :cond_15
    return v0
.end method

.method static loadAppGateKeepersAsync()V
    .registers 1

    const/4 v0, 0x0

    .line 69
    invoke-static {v0}, Lcom/facebook/internal/FetchedAppGateKeepersManager;->loadAppGateKeepersAsync(Lcom/facebook/internal/FetchedAppGateKeepersManager$Callback;)V

    return-void
.end method

.method static declared-synchronized loadAppGateKeepersAsync(Lcom/facebook/internal/FetchedAppGateKeepersManager$Callback;)V
    .registers 9
    .param p0    # Lcom/facebook/internal/FetchedAppGateKeepersManager$Callback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-class v0, Lcom/facebook/internal/FetchedAppGateKeepersManager;

    monitor-enter v0

    if-eqz p0, :cond_a

    .line 74
    :try_start_5
    sget-object v1, Lcom/facebook/internal/FetchedAppGateKeepersManager;->callbacks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 77
    :cond_a
    sget-object p0, Lcom/facebook/internal/FetchedAppGateKeepersManager;->timestamp:Ljava/lang/Long;

    invoke-static {p0}, Lcom/facebook/internal/FetchedAppGateKeepersManager;->isTimestampValid(Ljava/lang/Long;)Z

    move-result p0

    if-eqz p0, :cond_17

    .line 78
    invoke-static {}, Lcom/facebook/internal/FetchedAppGateKeepersManager;->pollCallbacks()V
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_6e

    .line 79
    monitor-exit v0

    return-void

    .line 82
    :cond_17
    :try_start_17
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 83
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.facebook.internal.APP_GATEKEEPERS.%s"

    const/4 v3, 0x1

    .line 84
    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2
    :try_end_2b
    .catchall {:try_start_17 .. :try_end_2b} :catchall_6e

    if-nez p0, :cond_2f

    .line 87
    monitor-exit v0

    return-void

    :cond_2f
    :try_start_2f
    const-string v4, "com.facebook.internal.preferences.APP_GATEKEEPERS"

    .line 92
    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const/4 v6, 0x0

    .line 93
    invoke-interface {v4, v2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 95
    invoke-static {v4}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v7
    :try_end_3e
    .catchall {:try_start_2f .. :try_end_3e} :catchall_6e

    if-nez v7, :cond_52

    .line 98
    :try_start_40
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_45
    .catch Lorg/json/JSONException; {:try_start_40 .. :try_end_45} :catch_47
    .catchall {:try_start_40 .. :try_end_45} :catchall_6e

    move-object v6, v7

    goto :goto_4d

    :catch_47
    move-exception v4

    :try_start_48
    const-string v7, "FacebookSDK"

    .line 100
    invoke-static {v7, v4}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_4d
    if-eqz v6, :cond_52

    .line 103
    invoke-static {v1, v6}, Lcom/facebook/internal/FetchedAppGateKeepersManager;->parseAppGateKeepersFromJSON(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 107
    :cond_52
    invoke-static {}, Lcom/facebook/FacebookSdk;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v4
    :try_end_56
    .catchall {:try_start_48 .. :try_end_56} :catchall_6e

    if-nez v4, :cond_5a

    .line 109
    monitor-exit v0

    return-void

    .line 112
    :cond_5a
    :try_start_5a
    sget-object v6, Lcom/facebook/internal/FetchedAppGateKeepersManager;->isLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6, v5, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v3
    :try_end_60
    .catchall {:try_start_5a .. :try_end_60} :catchall_6e

    if-nez v3, :cond_64

    .line 113
    monitor-exit v0

    return-void

    .line 116
    :cond_64
    :try_start_64
    new-instance v3, Lcom/facebook/internal/FetchedAppGateKeepersManager$1;

    invoke-direct {v3, v1, p0, v2}, Lcom/facebook/internal/FetchedAppGateKeepersManager$1;-><init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v4, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_6c
    .catchall {:try_start_64 .. :try_end_6c} :catchall_6e

    .line 137
    monitor-exit v0

    return-void

    :catchall_6e
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized parseAppGateKeepersFromJSON(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 8

    const-class v0, Lcom/facebook/internal/FetchedAppGateKeepersManager;

    monitor-enter v0

    .line 212
    :try_start_3
    sget-object v1, Lcom/facebook/internal/FetchedAppGateKeepersManager;->fetchedAppGateKeepers:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 213
    sget-object v1, Lcom/facebook/internal/FetchedAppGateKeepersManager;->fetchedAppGateKeepers:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    goto :goto_19

    .line 215
    :cond_14
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :goto_19
    const-string v2, "data"

    .line 217
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p1, :cond_27

    .line 220
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    :cond_27
    if-eqz v2, :cond_5a

    const-string p1, "gatekeepers"

    .line 223
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_5a

    const-string p1, "gatekeepers"

    .line 224
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 225
    :goto_37
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_61

    if-ge v3, v2, :cond_5a

    .line 227
    :try_start_3d
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "key"

    .line 228
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "value"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_50
    .catch Lorg/json/JSONException; {:try_start_3d .. :try_end_50} :catch_51
    .catchall {:try_start_3d .. :try_end_50} :catchall_61

    goto :goto_57

    :catch_51
    move-exception v2

    :try_start_52
    const-string v4, "FacebookSDK"

    .line 230
    invoke-static {v4, v2}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_57
    add-int/lit8 v3, v3, 0x1

    goto :goto_37

    .line 235
    :cond_5a
    sget-object p1, Lcom/facebook/internal/FetchedAppGateKeepersManager;->fetchedAppGateKeepers:Ljava/util/Map;

    invoke-interface {p1, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5f
    .catchall {:try_start_52 .. :try_end_5f} :catchall_61

    .line 236
    monitor-exit v0

    return-object v1

    :catchall_61
    move-exception p0

    monitor-exit v0

    throw p0

    return-void
.end method

.method private static pollCallbacks()V
    .registers 3

    .line 140
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 142
    :cond_9
    :goto_9
    sget-object v1, Lcom/facebook/internal/FetchedAppGateKeepersManager;->callbacks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_24

    .line 143
    sget-object v1, Lcom/facebook/internal/FetchedAppGateKeepersManager;->callbacks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/internal/FetchedAppGateKeepersManager$Callback;

    if-eqz v1, :cond_9

    .line 146
    new-instance v2, Lcom/facebook/internal/FetchedAppGateKeepersManager$2;

    invoke-direct {v2, v1}, Lcom/facebook/internal/FetchedAppGateKeepersManager$2;-><init>(Lcom/facebook/internal/FetchedAppGateKeepersManager$Callback;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_9

    :cond_24
    return-void
.end method

.method static queryAppGateKeepers(Ljava/lang/String;Z)Lorg/json/JSONObject;
    .registers 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p1, :cond_13

    .line 163
    sget-object p1, Lcom/facebook/internal/FetchedAppGateKeepersManager;->fetchedAppGateKeepers:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 164
    sget-object p1, Lcom/facebook/internal/FetchedAppGateKeepersManager;->fetchedAppGateKeepers:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/json/JSONObject;

    return-object p0

    .line 167
    :cond_13
    invoke-static {p0}, Lcom/facebook/internal/FetchedAppGateKeepersManager;->getAppGateKeepersQueryResponse(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1b

    const/4 p0, 0x0

    return-object p0

    .line 172
    :cond_1b
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    .line 173
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string v3, "com.facebook.internal.APP_GATEKEEPERS.%s"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.facebook.internal.preferences.APP_GATEKEEPERS"

    .line 176
    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 177
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 179
    invoke-static {p0, p1}, Lcom/facebook/internal/FetchedAppGateKeepersManager;->parseAppGateKeepersFromJSON(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method
