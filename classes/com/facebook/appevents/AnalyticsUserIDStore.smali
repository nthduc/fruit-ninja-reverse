.class Lcom/facebook/appevents/AnalyticsUserIDStore;
.super Ljava/lang/Object;
.source "AnalyticsUserIDStore.java"


# static fields
.field private static final ANALYTICS_USER_ID_KEY:Ljava/lang/String; = "com.facebook.appevents.AnalyticsUserIDStore.userID"

.field private static final TAG:Ljava/lang/String; = "AnalyticsUserIDStore"

.field private static volatile initialized:Z

.field private static lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private static userID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 35
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    sput-object v0, Lcom/facebook/appevents/AnalyticsUserIDStore;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    const/4 v0, 0x0

    .line 37
    sput-boolean v0, Lcom/facebook/appevents/AnalyticsUserIDStore;->initialized:Z

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()V
    .registers 0

    .line 30
    invoke-static {}, Lcom/facebook/appevents/AnalyticsUserIDStore;->initAndWait()V

    return-void
.end method

.method static synthetic access$100()Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    .registers 1

    .line 30
    sget-object v0, Lcom/facebook/appevents/AnalyticsUserIDStore;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .registers 1

    .line 30
    sget-object v0, Lcom/facebook/appevents/AnalyticsUserIDStore;->userID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 30
    sput-object p0, Lcom/facebook/appevents/AnalyticsUserIDStore;->userID:Ljava/lang/String;

    return-object p0
.end method

.method public static getUserID()Ljava/lang/String;
    .registers 2

    .line 83
    sget-boolean v0, Lcom/facebook/appevents/AnalyticsUserIDStore;->initialized:Z

    if-nez v0, :cond_e

    .line 84
    sget-object v0, Lcom/facebook/appevents/AnalyticsUserIDStore;->TAG:Ljava/lang/String;

    const-string v1, "initStore should have been called before calling setUserID"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-static {}, Lcom/facebook/appevents/AnalyticsUserIDStore;->initAndWait()V

    .line 88
    :cond_e
    sget-object v0, Lcom/facebook/appevents/AnalyticsUserIDStore;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 90
    :try_start_17
    sget-object v0, Lcom/facebook/appevents/AnalyticsUserIDStore;->userID:Ljava/lang/String;
    :try_end_19
    .catchall {:try_start_17 .. :try_end_19} :catchall_23

    .line 92
    sget-object v1, Lcom/facebook/appevents/AnalyticsUserIDStore;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-object v0

    :catchall_23
    move-exception v0

    sget-object v1, Lcom/facebook/appevents/AnalyticsUserIDStore;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 93
    throw v0
.end method

.method private static initAndWait()V
    .registers 3

    .line 97
    sget-boolean v0, Lcom/facebook/appevents/AnalyticsUserIDStore;->initialized:Z

    if-eqz v0, :cond_5

    return-void

    .line 101
    :cond_5
    sget-object v0, Lcom/facebook/appevents/AnalyticsUserIDStore;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 103
    :try_start_e
    sget-boolean v0, Lcom/facebook/appevents/AnalyticsUserIDStore;->initialized:Z
    :try_end_10
    .catchall {:try_start_e .. :try_end_10} :catchall_3a

    if-eqz v0, :cond_1c

    .line 112
    sget-object v0, Lcom/facebook/appevents/AnalyticsUserIDStore;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    .line 108
    :cond_1c
    :try_start_1c
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "com.facebook.appevents.AnalyticsUserIDStore.userID"

    const/4 v2, 0x0

    .line 109
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/AnalyticsUserIDStore;->userID:Ljava/lang/String;

    const/4 v0, 0x1

    .line 110
    sput-boolean v0, Lcom/facebook/appevents/AnalyticsUserIDStore;->initialized:Z
    :try_end_30
    .catchall {:try_start_1c .. :try_end_30} :catchall_3a

    .line 112
    sget-object v0, Lcom/facebook/appevents/AnalyticsUserIDStore;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    :catchall_3a
    move-exception v0

    sget-object v1, Lcom/facebook/appevents/AnalyticsUserIDStore;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 113
    throw v0
.end method

.method public static initStore()V
    .registers 2

    .line 40
    sget-boolean v0, Lcom/facebook/appevents/AnalyticsUserIDStore;->initialized:Z

    if-eqz v0, :cond_5

    return-void

    .line 44
    :cond_5
    invoke-static {}, Lcom/facebook/appevents/InternalAppEventsLogger;->getAnalyticsExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/facebook/appevents/AnalyticsUserIDStore$1;

    invoke-direct {v1}, Lcom/facebook/appevents/AnalyticsUserIDStore$1;-><init>()V

    .line 45
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static setUserID(Ljava/lang/String;)V
    .registers 3

    .line 55
    invoke-static {}, Lcom/facebook/appevents/internal/AppEventUtility;->assertIsNotMainThread()V

    .line 56
    sget-boolean v0, Lcom/facebook/appevents/AnalyticsUserIDStore;->initialized:Z

    if-nez v0, :cond_11

    .line 57
    sget-object v0, Lcom/facebook/appevents/AnalyticsUserIDStore;->TAG:Ljava/lang/String;

    const-string v1, "initStore should have been called before calling setUserID"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-static {}, Lcom/facebook/appevents/AnalyticsUserIDStore;->initAndWait()V

    .line 61
    :cond_11
    invoke-static {}, Lcom/facebook/appevents/InternalAppEventsLogger;->getAnalyticsExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/facebook/appevents/AnalyticsUserIDStore$2;

    invoke-direct {v1, p0}, Lcom/facebook/appevents/AnalyticsUserIDStore$2;-><init>(Ljava/lang/String;)V

    .line 62
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
