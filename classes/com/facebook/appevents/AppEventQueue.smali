.class Lcom/facebook/appevents/AppEventQueue;
.super Ljava/lang/Object;
.source "AppEventQueue.java"


# static fields
.field private static final FLUSH_PERIOD_IN_SECONDS:I = 0xf

.field private static final NUM_LOG_EVENTS_TO_TRY_TO_FLUSH_AFTER:I = 0x64

.field private static final TAG:Ljava/lang/String; = "com.facebook.appevents.AppEventQueue"

.field private static volatile appEventCollection:Lcom/facebook/appevents/AppEventCollection;

.field private static final flushRunnable:Ljava/lang/Runnable;

.field private static scheduledFuture:Ljava/util/concurrent/ScheduledFuture;

.field private static final singleThreadExecutor:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 54
    new-instance v0, Lcom/facebook/appevents/AppEventCollection;

    invoke-direct {v0}, Lcom/facebook/appevents/AppEventCollection;-><init>()V

    sput-object v0, Lcom/facebook/appevents/AppEventQueue;->appEventCollection:Lcom/facebook/appevents/AppEventCollection;

    .line 56
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/AppEventQueue;->singleThreadExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 60
    new-instance v0, Lcom/facebook/appevents/AppEventQueue$1;

    invoke-direct {v0}, Lcom/facebook/appevents/AppEventQueue$1;-><init>()V

    sput-object v0, Lcom/facebook/appevents/AppEventQueue;->flushRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/ScheduledFuture;
    .registers 3

    const-class v0, Lcom/facebook/appevents/AppEventQueue;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    .line 48
    :cond_a
    :try_start_a
    sget-object v0, Lcom/facebook/appevents/AppEventQueue;->scheduledFuture:Ljava/util/concurrent/ScheduledFuture;
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_c} :catch_d

    return-object v0

    :catch_d
    move-exception v0

    const-class v2, Lcom/facebook/appevents/AppEventQueue;

    invoke-static {v0, v2}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method static synthetic access$002(Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;
    .registers 3

    const-class v0, Lcom/facebook/appevents/AppEventQueue;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    .line 48
    :cond_a
    :try_start_a
    sput-object p0, Lcom/facebook/appevents/AppEventQueue;->scheduledFuture:Ljava/util/concurrent/ScheduledFuture;
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_c} :catch_d

    return-object p0

    :catch_d
    move-exception p0

    const-class v0, Lcom/facebook/appevents/AppEventQueue;

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method static synthetic access$100()Lcom/facebook/appevents/AppEventCollection;
    .registers 3

    const-class v0, Lcom/facebook/appevents/AppEventQueue;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    .line 48
    :cond_a
    :try_start_a
    sget-object v0, Lcom/facebook/appevents/AppEventQueue;->appEventCollection:Lcom/facebook/appevents/AppEventCollection;
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_c} :catch_d

    return-object v0

    :catch_d
    move-exception v0

    const-class v2, Lcom/facebook/appevents/AppEventQueue;

    invoke-static {v0, v2}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method static synthetic access$102(Lcom/facebook/appevents/AppEventCollection;)Lcom/facebook/appevents/AppEventCollection;
    .registers 3

    const-class v0, Lcom/facebook/appevents/AppEventQueue;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    .line 48
    :cond_a
    :try_start_a
    sput-object p0, Lcom/facebook/appevents/AppEventQueue;->appEventCollection:Lcom/facebook/appevents/AppEventCollection;
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_c} :catch_d

    return-object p0

    :catch_d
    move-exception p0

    const-class v0, Lcom/facebook/appevents/AppEventQueue;

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method static synthetic access$200()Ljava/lang/Runnable;
    .registers 3

    const-class v0, Lcom/facebook/appevents/AppEventQueue;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    .line 48
    :cond_a
    :try_start_a
    sget-object v0, Lcom/facebook/appevents/AppEventQueue;->flushRunnable:Ljava/lang/Runnable;
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_c} :catch_d

    return-object v0

    :catch_d
    move-exception v0

    const-class v2, Lcom/facebook/appevents/AppEventQueue;

    invoke-static {v0, v2}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method static synthetic access$300()Ljava/util/concurrent/ScheduledExecutorService;
    .registers 3

    const-class v0, Lcom/facebook/appevents/AppEventQueue;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    .line 48
    :cond_a
    :try_start_a
    sget-object v0, Lcom/facebook/appevents/AppEventQueue;->singleThreadExecutor:Ljava/util/concurrent/ScheduledExecutorService;
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_c} :catch_d

    return-object v0

    :catch_d
    move-exception v0

    const-class v2, Lcom/facebook/appevents/AppEventQueue;

    invoke-static {v0, v2}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method static synthetic access$400(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/GraphRequest;Lcom/facebook/GraphResponse;Lcom/facebook/appevents/SessionEventsState;Lcom/facebook/appevents/FlushStatistics;)V
    .registers 6

    const-class v0, Lcom/facebook/appevents/AppEventQueue;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 48
    :cond_9
    :try_start_9
    invoke-static {p0, p1, p2, p3, p4}, Lcom/facebook/appevents/AppEventQueue;->handleResponse(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/GraphRequest;Lcom/facebook/GraphResponse;Lcom/facebook/appevents/SessionEventsState;Lcom/facebook/appevents/FlushStatistics;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception p0

    const-class p1, Lcom/facebook/appevents/AppEventQueue;

    invoke-static {p0, p1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public static add(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/appevents/AppEvent;)V
    .registers 4

    const-class v0, Lcom/facebook/appevents/AppEventQueue;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 94
    :cond_9
    :try_start_9
    sget-object v0, Lcom/facebook/appevents/AppEventQueue;->singleThreadExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/facebook/appevents/AppEventQueue$4;

    invoke-direct {v1, p0, p1}, Lcom/facebook/appevents/AppEventQueue$4;-><init>(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/appevents/AppEvent;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception p0

    .line 110
    const-class p1, Lcom/facebook/appevents/AppEventQueue;

    invoke-static {p0, p1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method private static buildRequestForSession(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/appevents/SessionEventsState;ZLcom/facebook/appevents/FlushStatistics;)Lcom/facebook/GraphRequest;
    .registers 11

    const-class v0, Lcom/facebook/appevents/AppEventQueue;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    .line 187
    :cond_a
    :try_start_a
    invoke-virtual {p0}, Lcom/facebook/appevents/AccessTokenAppIdPair;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    .line 190
    invoke-static {v0, v2}, Lcom/facebook/internal/FetchedAppSettingsManager;->queryAppSettings(Ljava/lang/String;Z)Lcom/facebook/internal/FetchedAppSettings;

    move-result-object v3

    const-string v4, "%s/activities"

    const/4 v5, 0x1

    .line 192
    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v2

    .line 194
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 193
    invoke-static {v1, v0, v1, v1}, Lcom/facebook/GraphRequest;->newPostRequest(Lcom/facebook/AccessToken;Ljava/lang/String;Lorg/json/JSONObject;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;

    move-result-object v0

    .line 196
    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->getParameters()Landroid/os/Bundle;

    move-result-object v4

    if-nez v4, :cond_2d

    .line 198
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    :cond_2d
    const-string v5, "access_token"

    .line 200
    invoke-virtual {p0}, Lcom/facebook/appevents/AccessTokenAppIdPair;->getAccessTokenString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-static {}, Lcom/facebook/appevents/InternalAppEventsLogger;->getPushNotificationsRegistrationId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_41

    const-string v6, "device_token"

    .line 204
    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    :cond_41
    invoke-static {}, Lcom/facebook/appevents/AppEventsLoggerImpl;->getInstallReferrer()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4c

    const-string v6, "install_referrer"

    .line 209
    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    :cond_4c
    invoke-virtual {v0, v4}, Lcom/facebook/GraphRequest;->setParameters(Landroid/os/Bundle;)V

    if-eqz v3, :cond_55

    .line 217
    invoke-virtual {v3}, Lcom/facebook/internal/FetchedAppSettings;->supportsImplicitLogging()Z

    move-result v2

    .line 223
    :cond_55
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 221
    invoke-virtual {p1, v0, v3, v2, p2}, Lcom/facebook/appevents/SessionEventsState;->populateRequest(Lcom/facebook/GraphRequest;Landroid/content/Context;ZZ)I

    move-result p2

    if-nez p2, :cond_60

    return-object v1

    .line 231
    :cond_60
    iget v2, p3, Lcom/facebook/appevents/FlushStatistics;->numEvents:I

    add-int/2addr v2, p2

    iput v2, p3, Lcom/facebook/appevents/FlushStatistics;->numEvents:I

    .line 233
    new-instance p2, Lcom/facebook/appevents/AppEventQueue$5;

    invoke-direct {p2, p0, v0, p1, p3}, Lcom/facebook/appevents/AppEventQueue$5;-><init>(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/GraphRequest;Lcom/facebook/appevents/SessionEventsState;Lcom/facebook/appevents/FlushStatistics;)V

    invoke-virtual {v0, p2}, Lcom/facebook/GraphRequest;->setCallback(Lcom/facebook/GraphRequest$Callback;)V
    :try_end_6d
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_6d} :catch_6e

    return-object v0

    :catch_6e
    move-exception p0

    .line 241
    const-class p1, Lcom/facebook/appevents/AppEventQueue;

    invoke-static {p0, p1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method public static flush(Lcom/facebook/appevents/FlushReason;)V
    .registers 3

    const-class v0, Lcom/facebook/appevents/AppEventQueue;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 84
    :cond_9
    :try_start_9
    sget-object v0, Lcom/facebook/appevents/AppEventQueue;->singleThreadExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/facebook/appevents/AppEventQueue$3;

    invoke-direct {v1, p0}, Lcom/facebook/appevents/AppEventQueue$3;-><init>(Lcom/facebook/appevents/FlushReason;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception p0

    .line 91
    const-class v0, Lcom/facebook/appevents/AppEventQueue;

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method static flushAndWait(Lcom/facebook/appevents/FlushReason;)V
    .registers 4

    const-class v0, Lcom/facebook/appevents/AppEventQueue;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 121
    :cond_9
    :try_start_9
    invoke-static {}, Lcom/facebook/appevents/AppEventStore;->readAndClearStore()Lcom/facebook/appevents/PersistedEvents;

    move-result-object v0

    .line 123
    sget-object v1, Lcom/facebook/appevents/AppEventQueue;->appEventCollection:Lcom/facebook/appevents/AppEventCollection;

    invoke-virtual {v1, v0}, Lcom/facebook/appevents/AppEventCollection;->addPersistedEvents(Lcom/facebook/appevents/PersistedEvents;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_12} :catch_44

    .line 128
    :try_start_12
    sget-object v0, Lcom/facebook/appevents/AppEventQueue;->appEventCollection:Lcom/facebook/appevents/AppEventCollection;

    invoke-static {p0, v0}, Lcom/facebook/appevents/AppEventQueue;->sendEventsToServer(Lcom/facebook/appevents/FlushReason;Lcom/facebook/appevents/AppEventCollection;)Lcom/facebook/appevents/FlushStatistics;

    move-result-object p0
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_18} :catch_3b
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_18} :catch_44

    if-eqz p0, :cond_3a

    .line 135
    :try_start_1a
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.facebook.sdk.APP_EVENTS_FLUSHED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.facebook.sdk.APP_EVENTS_NUM_EVENTS_FLUSHED"

    .line 136
    iget v2, p0, Lcom/facebook/appevents/FlushStatistics;->numEvents:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "com.facebook.sdk.APP_EVENTS_FLUSH_RESULT"

    .line 137
    iget-object p0, p0, Lcom/facebook/appevents/FlushStatistics;->result:Lcom/facebook/appevents/FlushResult;

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 138
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 139
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    :cond_3a
    return-void

    :catch_3b
    move-exception p0

    .line 130
    sget-object v0, Lcom/facebook/appevents/AppEventQueue;->TAG:Ljava/lang/String;

    const-string v1, "Caught unexpected exception while flushing app events: "

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_43} :catch_44

    return-void

    :catch_44
    move-exception p0

    .line 141
    const-class v0, Lcom/facebook/appevents/AppEventQueue;

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public static getKeySet()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/facebook/appevents/AccessTokenAppIdPair;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/facebook/appevents/AppEventQueue;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    .line 116
    :cond_a
    :try_start_a
    sget-object v0, Lcom/facebook/appevents/AppEventQueue;->appEventCollection:Lcom/facebook/appevents/AppEventCollection;

    invoke-virtual {v0}, Lcom/facebook/appevents/AppEventCollection;->keySet()Ljava/util/Set;

    move-result-object v0
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_10} :catch_11

    return-object v0

    :catch_11
    move-exception v0

    const-class v2, Lcom/facebook/appevents/AppEventQueue;

    invoke-static {v0, v2}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method private static handleResponse(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/GraphRequest;Lcom/facebook/GraphResponse;Lcom/facebook/appevents/SessionEventsState;Lcom/facebook/appevents/FlushStatistics;)V
    .registers 15

    const-class v0, Lcom/facebook/appevents/AppEventQueue;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 250
    :cond_9
    :try_start_9
    invoke-virtual {p2}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    const-string v1, "Success"

    .line 253
    sget-object v2, Lcom/facebook/appevents/FlushResult;->SUCCESS:Lcom/facebook/appevents/FlushResult;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eqz v0, :cond_38

    .line 257
    invoke-virtual {v0}, Lcom/facebook/FacebookRequestError;->getErrorCode()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_22

    const-string v1, "Failed: No Connectivity"

    .line 259
    sget-object v2, Lcom/facebook/appevents/FlushResult;->NO_CONNECTIVITY:Lcom/facebook/appevents/FlushResult;

    goto :goto_38

    :cond_22
    const-string v1, "Failed:\n  Response: %s\n  Error %s"

    .line 261
    new-array v2, v5, [Ljava/lang/Object;

    .line 263
    invoke-virtual {p2}, Lcom/facebook/GraphResponse;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, v4

    invoke-virtual {v0}, Lcom/facebook/FacebookRequestError;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, v3

    .line 262
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 264
    sget-object v2, Lcom/facebook/appevents/FlushResult;->SERVER_ERROR:Lcom/facebook/appevents/FlushResult;

    .line 268
    :cond_38
    :goto_38
    sget-object p2, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    invoke-static {p2}, Lcom/facebook/FacebookSdk;->isLoggingBehaviorEnabled(Lcom/facebook/LoggingBehavior;)Z

    move-result p2

    if-eqz p2, :cond_6c

    .line 269
    invoke-virtual {p1}, Lcom/facebook/GraphRequest;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_46} :catch_90

    .line 273
    :try_start_46
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 274
    invoke-virtual {v6, v5}, Lorg/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object p2
    :try_end_4f
    .catch Lorg/json/JSONException; {:try_start_46 .. :try_end_4f} :catch_50
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_4f} :catch_90

    goto :goto_52

    :catch_50
    :try_start_50
    const-string p2, "<Can\'t encode events for debug logging>"

    .line 279
    :goto_52
    sget-object v6, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    sget-object v7, Lcom/facebook/appevents/AppEventQueue;->TAG:Ljava/lang/String;

    const-string v8, "Flush completed\nParams: %s\n  Result: %s\n  Events JSON: %s"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    .line 283
    invoke-virtual {p1}, Lcom/facebook/GraphRequest;->getGraphObject()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v9, v4

    aput-object v1, v9, v3

    aput-object p2, v9, v5

    .line 279
    invoke-static {v6, v7, v8, v9}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6c
    if-eqz v0, :cond_6f

    goto :goto_70

    :cond_6f
    const/4 v3, 0x0

    .line 288
    :goto_70
    invoke-virtual {p3, v3}, Lcom/facebook/appevents/SessionEventsState;->clearInFlightAndStats(Z)V

    .line 290
    sget-object p1, Lcom/facebook/appevents/FlushResult;->NO_CONNECTIVITY:Lcom/facebook/appevents/FlushResult;

    if-ne v2, p1, :cond_83

    .line 296
    invoke-static {}, Lcom/facebook/FacebookSdk;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance p2, Lcom/facebook/appevents/AppEventQueue$6;

    invoke-direct {p2, p0, p3}, Lcom/facebook/appevents/AppEventQueue$6;-><init>(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/appevents/SessionEventsState;)V

    .line 297
    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 306
    :cond_83
    sget-object p0, Lcom/facebook/appevents/FlushResult;->SUCCESS:Lcom/facebook/appevents/FlushResult;

    if-eq v2, p0, :cond_8f

    .line 308
    iget-object p0, p4, Lcom/facebook/appevents/FlushStatistics;->result:Lcom/facebook/appevents/FlushResult;

    sget-object p1, Lcom/facebook/appevents/FlushResult;->NO_CONNECTIVITY:Lcom/facebook/appevents/FlushResult;

    if-eq p0, p1, :cond_8f

    .line 309
    iput-object v2, p4, Lcom/facebook/appevents/FlushStatistics;->result:Lcom/facebook/appevents/FlushResult;
    :try_end_8f
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_8f} :catch_90

    :cond_8f
    return-void

    :catch_90
    move-exception p0

    .line 312
    const-class p1, Lcom/facebook/appevents/AppEventQueue;

    invoke-static {p0, p1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public static persistToDisk()V
    .registers 2

    const-class v0, Lcom/facebook/appevents/AppEventQueue;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 73
    :cond_9
    :try_start_9
    sget-object v0, Lcom/facebook/appevents/AppEventQueue;->singleThreadExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/facebook/appevents/AppEventQueue$2;

    invoke-direct {v1}, Lcom/facebook/appevents/AppEventQueue$2;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception v0

    .line 81
    const-class v1, Lcom/facebook/appevents/AppEventQueue;

    invoke-static {v0, v1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method private static sendEventsToServer(Lcom/facebook/appevents/FlushReason;Lcom/facebook/appevents/AppEventCollection;)Lcom/facebook/appevents/FlushStatistics;
    .registers 10

    const-class v0, Lcom/facebook/appevents/AppEventQueue;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    .line 145
    :cond_a
    :try_start_a
    new-instance v0, Lcom/facebook/appevents/FlushStatistics;

    invoke-direct {v0}, Lcom/facebook/appevents/FlushStatistics;-><init>()V

    .line 147
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 148
    invoke-static {v2}, Lcom/facebook/FacebookSdk;->getLimitEventAndDataUsage(Landroid/content/Context;)Z

    move-result v2

    .line 150
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 151
    invoke-virtual {p1}, Lcom/facebook/appevents/AppEventCollection;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_24
    :goto_24
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/appevents/AccessTokenAppIdPair;

    .line 155
    invoke-virtual {p1, v5}, Lcom/facebook/appevents/AppEventCollection;->get(Lcom/facebook/appevents/AccessTokenAppIdPair;)Lcom/facebook/appevents/SessionEventsState;

    move-result-object v6

    .line 153
    invoke-static {v5, v6, v2, v0}, Lcom/facebook/appevents/AppEventQueue;->buildRequestForSession(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/appevents/SessionEventsState;ZLcom/facebook/appevents/FlushStatistics;)Lcom/facebook/GraphRequest;

    move-result-object v5

    if-eqz v5, :cond_24

    .line 159
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 163
    :cond_3e
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_75

    .line 164
    sget-object p1, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    sget-object v2, Lcom/facebook/appevents/AppEventQueue;->TAG:Ljava/lang/String;

    const-string v4, "Flushing %d events due to %s."

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, v0, Lcom/facebook/appevents/FlushStatistics;->numEvents:I

    .line 168
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 169
    invoke-virtual {p0}, Lcom/facebook/appevents/FlushReason;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v5, v6

    .line 164
    invoke-static {p1, v2, v4, v5}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_64
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_74

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/GraphRequest;

    .line 174
    invoke-virtual {p1}, Lcom/facebook/GraphRequest;->executeAndWait()Lcom/facebook/GraphResponse;
    :try_end_73
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_73} :catch_76

    goto :goto_64

    :cond_74
    return-object v0

    :cond_75
    return-object v1

    :catch_76
    move-exception p0

    .line 179
    const-class p1, Lcom/facebook/appevents/AppEventQueue;

    invoke-static {p0, p1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method
