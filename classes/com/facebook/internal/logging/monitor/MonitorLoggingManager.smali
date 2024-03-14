.class public Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;
.super Ljava/lang/Object;
.source "MonitorLoggingManager.java"

# interfaces
.implements Lcom/facebook/internal/logging/LoggingManager;


# static fields
.field private static final ENTRIES_KEY:Ljava/lang/String; = "entries"

.field private static final FLUSH_PERIOD:I = 0x3c

.field private static final MAX_LOG_NUMBER_PER_REQUEST:Ljava/lang/Integer;

.field private static final MONITORING_ENDPOINT:Ljava/lang/String; = "monitorings"

.field private static deviceModel:Ljava/lang/String;

.field private static deviceOSVersion:Ljava/lang/String;

.field private static monitorLoggingManager:Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;


# instance fields
.field private final flushRunnable:Ljava/lang/Runnable;

.field private flushTimer:Ljava/util/concurrent/ScheduledFuture;

.field private logQueue:Lcom/facebook/internal/logging/LoggingCache;

.field private logStore:Lcom/facebook/internal/logging/LoggingStore;

.field private final singleThreadExecutor:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x64

    .line 60
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;->MAX_LOG_NUMBER_PER_REQUEST:Ljava/lang/Integer;

    .line 75
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sput-object v0, Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;->deviceOSVersion:Ljava/lang/String;

    .line 76
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;->deviceModel:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/facebook/internal/logging/LoggingCache;Lcom/facebook/internal/logging/LoggingStore;)V
    .registers 4

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;->singleThreadExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 80
    new-instance v0, Lcom/facebook/internal/logging/monitor/MonitorLoggingManager$1;

    invoke-direct {v0, p0}, Lcom/facebook/internal/logging/monitor/MonitorLoggingManager$1;-><init>(Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;)V

    iput-object v0, p0, Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;->flushRunnable:Ljava/lang/Runnable;

    .line 90
    iget-object v0, p0, Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;->logQueue:Lcom/facebook/internal/logging/LoggingCache;

    if-nez v0, :cond_16

    .line 91
    iput-object p1, p0, Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;->logQueue:Lcom/facebook/internal/logging/LoggingCache;

    .line 93
    :cond_16
    iget-object p1, p0, Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;->logStore:Lcom/facebook/internal/logging/LoggingStore;

    if-nez p1, :cond_1c

    .line 94
    iput-object p2, p0, Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;->logStore:Lcom/facebook/internal/logging/LoggingStore;

    :cond_1c
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;)Lcom/facebook/internal/logging/LoggingCache;
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;->logQueue:Lcom/facebook/internal/logging/LoggingCache;

    return-object p0
.end method

.method static synthetic access$100(Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;)Ljava/util/concurrent/ScheduledFuture;
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;->flushTimer:Ljava/util/concurrent/ScheduledFuture;

    return-object p0
.end method

.method static synthetic access$102(Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;
    .registers 2

    .line 58
    iput-object p1, p0, Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;->flushTimer:Ljava/util/concurrent/ScheduledFuture;

    return-object p1
.end method

.method static synthetic access$200(Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;)Ljava/lang/Runnable;
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;->flushRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$300(Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;)Ljava/util/concurrent/ScheduledExecutorService;
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;->singleThreadExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method static buildPostRequestFromLogs(Ljava/util/List;)Lcom/facebook/GraphRequest;
    .registers 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/facebook/internal/logging/ExternalLog;",
            ">;)",
            "Lcom/facebook/GraphRequest;"
        }
    .end annotation

    .line 173
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 174
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 176
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/internal/logging/ExternalLog;

    .line 177
    invoke-interface {v2}, Lcom/facebook/internal/logging/ExternalLog;->convertToJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_11

    .line 180
    :cond_25
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result p0

    const/4 v2, 0x0

    if-nez p0, :cond_2d

    return-object v2

    .line 184
    :cond_2d
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    :try_start_32
    const-string v3, "device_os_version"

    .line 186
    sget-object v4, Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;->deviceOSVersion:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "device_model"

    .line 187
    sget-object v4, Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;->deviceModel:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "unique_application_identifier"

    .line 188
    invoke-virtual {p0, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "entries"

    .line 189
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4a
    .catch Lorg/json/JSONException; {:try_start_32 .. :try_end_4a} :catch_5f

    const/4 v0, 0x1

    .line 194
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 196
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    const-string v1, "%s/monitorings"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 194
    invoke-static {v2, v0, p0, v2}, Lcom/facebook/GraphRequest;->newPostRequest(Lcom/facebook/AccessToken;Ljava/lang/String;Lorg/json/JSONObject;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;

    move-result-object p0

    return-object p0

    :catch_5f
    return-object v2
.end method

.method static buildRequests(Lcom/facebook/internal/logging/LoggingCache;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/internal/logging/LoggingCache;",
            ")",
            "Ljava/util/List<",
            "Lcom/facebook/GraphRequest;",
            ">;"
        }
    .end annotation

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 147
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    .line 150
    invoke-static {v1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    return-object v0

    .line 154
    :cond_10
    :goto_10
    invoke-interface {p0}, Lcom/facebook/internal/logging/LoggingCache;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3e

    .line 155
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 158
    :goto_1c
    sget-object v3, Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;->MAX_LOG_NUMBER_PER_REQUEST:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ge v2, v3, :cond_34

    invoke-interface {p0}, Lcom/facebook/internal/logging/LoggingCache;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_34

    .line 159
    invoke-interface {p0}, Lcom/facebook/internal/logging/LoggingCache;->fetchLog()Lcom/facebook/internal/logging/ExternalLog;

    move-result-object v3

    .line 160
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 163
    :cond_34
    invoke-static {v1}, Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;->buildPostRequestFromLogs(Ljava/util/List;)Lcom/facebook/GraphRequest;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 165
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_3e
    return-object v0
.end method

.method public static declared-synchronized getInstance(Lcom/facebook/internal/logging/LoggingCache;Lcom/facebook/internal/logging/LoggingStore;)Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;
    .registers 4

    const-class v0, Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;

    monitor-enter v0

    .line 100
    :try_start_3
    sget-object v1, Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;->monitorLoggingManager:Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;

    if-nez v1, :cond_e

    .line 101
    new-instance v1, Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;

    invoke-direct {v1, p0, p1}, Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;-><init>(Lcom/facebook/internal/logging/LoggingCache;Lcom/facebook/internal/logging/LoggingStore;)V

    sput-object v1, Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;->monitorLoggingManager:Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;

    .line 103
    :cond_e
    sget-object p0, Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;->monitorLoggingManager:Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public addLog(Lcom/facebook/internal/logging/ExternalLog;)V
    .registers 4

    .line 108
    iget-object v0, p0, Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;->singleThreadExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/facebook/internal/logging/monitor/MonitorLoggingManager$2;

    invoke-direct {v1, p0, p1}, Lcom/facebook/internal/logging/monitor/MonitorLoggingManager$2;-><init>(Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;Lcom/facebook/internal/logging/ExternalLog;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public flushAndWait()V
    .registers 3

    .line 124
    iget-object v0, p0, Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;->flushTimer:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 125
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 129
    :cond_8
    iget-object v0, p0, Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;->logQueue:Lcom/facebook/internal/logging/LoggingCache;

    invoke-static {v0}, Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;->buildRequests(Lcom/facebook/internal/logging/LoggingCache;)Ljava/util/List;

    move-result-object v0

    .line 131
    :try_start_e
    new-instance v1, Lcom/facebook/GraphRequestBatch;

    invoke-direct {v1, v0}, Lcom/facebook/GraphRequestBatch;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Lcom/facebook/GraphRequestBatch;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_16} :catch_16

    :catch_16
    return-void
.end method

.method public flushLoggingStore()V
    .registers 3

    .line 140
    iget-object v0, p0, Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;->logStore:Lcom/facebook/internal/logging/LoggingStore;

    invoke-interface {v0}, Lcom/facebook/internal/logging/LoggingStore;->readAndClearStore()Ljava/util/Collection;

    move-result-object v0

    .line 141
    iget-object v1, p0, Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;->logQueue:Lcom/facebook/internal/logging/LoggingCache;

    invoke-interface {v1, v0}, Lcom/facebook/internal/logging/LoggingCache;->addLogs(Ljava/util/Collection;)Z

    .line 142
    invoke-virtual {p0}, Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;->flushAndWait()V

    return-void
.end method
