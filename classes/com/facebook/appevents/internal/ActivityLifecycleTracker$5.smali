.class final Lcom/facebook/appevents/internal/ActivityLifecycleTracker$5;
.super Ljava/lang/Object;
.source "ActivityLifecycleTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->onActivityPaused(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activityName:Ljava/lang/String;

.field final synthetic val$currentTime:J


# direct methods
.method constructor <init>(JLjava/lang/String;)V
    .registers 4

    .line 225
    iput-wide p1, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$5;->val$currentTime:J

    iput-object p3, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$5;->val$activityName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 228
    :cond_7
    :try_start_7
    # getter for: Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->currentSession:Lcom/facebook/appevents/internal/SessionInfo;
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$400()Lcom/facebook/appevents/internal/SessionInfo;

    move-result-object v0

    if-nez v0, :cond_1c

    .line 231
    new-instance v0, Lcom/facebook/appevents/internal/SessionInfo;

    iget-wide v1, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$5;->val$currentTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/facebook/appevents/internal/SessionInfo;-><init>(Ljava/lang/Long;Ljava/lang/Long;)V

    # setter for: Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->currentSession:Lcom/facebook/appevents/internal/SessionInfo;
    invoke-static {v0}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$402(Lcom/facebook/appevents/internal/SessionInfo;)Lcom/facebook/appevents/internal/SessionInfo;

    .line 234
    :cond_1c
    # getter for: Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->currentSession:Lcom/facebook/appevents/internal/SessionInfo;
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$400()Lcom/facebook/appevents/internal/SessionInfo;

    move-result-object v0

    iget-wide v1, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$5;->val$currentTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/appevents/internal/SessionInfo;->setSessionLastEventTime(Ljava/lang/Long;)V

    .line 235
    # getter for: Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->foregroundActivityCount:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$700()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-gtz v0, :cond_54

    .line 239
    new-instance v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$5$1;

    invoke-direct {v0, p0}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$5$1;-><init>(Lcom/facebook/appevents/internal/ActivityLifecycleTracker$5;)V

    .line 258
    # getter for: Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->currentFutureLock:Ljava/lang/Object;
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$800()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_3d} :catch_71

    .line 260
    :try_start_3d
    # getter for: Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->singleThreadExecutor:Ljava/util/concurrent/ScheduledExecutorService;
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$1000()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    .line 261
    # invokes: Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->getSessionTimeoutInSeconds()I
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$600()I

    move-result v3

    int-to-long v3, v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 260
    invoke-interface {v2, v0, v3, v4, v5}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    .line 259
    # setter for: Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->currentFuture:Ljava/util/concurrent/ScheduledFuture;
    invoke-static {v0}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$902(Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    .line 262
    monitor-exit v1

    goto :goto_54

    :catchall_51
    move-exception v0

    monitor-exit v1
    :try_end_53
    .catchall {:try_start_3d .. :try_end_53} :catchall_51

    :try_start_53
    throw v0

    .line 265
    :cond_54
    :goto_54
    # getter for: Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->currentActivityAppearTime:J
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$1100()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_64

    .line 266
    iget-wide v2, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$5;->val$currentTime:J

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x3e8

    div-long/2addr v2, v0

    .line 268
    :cond_64
    iget-object v0, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$5;->val$activityName:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;->logActivityTimeSpentEvent(Ljava/lang/String;J)V

    .line 271
    # getter for: Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->currentSession:Lcom/facebook/appevents/internal/SessionInfo;
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$400()Lcom/facebook/appevents/internal/SessionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/appevents/internal/SessionInfo;->writeSessionToDisk()V
    :try_end_70
    .catch Ljava/lang/Throwable; {:try_start_53 .. :try_end_70} :catch_71

    return-void

    :catch_71
    move-exception v0

    .line 272
    invoke-static {v0, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
