.class final Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4;
.super Ljava/lang/Object;
.source "ActivityLifecycleTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->onActivityResumed(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activityName:Ljava/lang/String;

.field final synthetic val$appContext:Landroid/content/Context;

.field final synthetic val$currentTime:J


# direct methods
.method constructor <init>(JLjava/lang/String;Landroid/content/Context;)V
    .registers 5

    .line 182
    iput-wide p1, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4;->val$currentTime:J

    iput-object p3, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4;->val$activityName:Ljava/lang/String;

    iput-object p4, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4;->val$appContext:Landroid/content/Context;

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

    .line 185
    :cond_7
    :try_start_7
    # getter for: Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->currentSession:Lcom/facebook/appevents/internal/SessionInfo;
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$400()Lcom/facebook/appevents/internal/SessionInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_28

    .line 186
    new-instance v0, Lcom/facebook/appevents/internal/SessionInfo;

    iget-wide v2, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4;->val$currentTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/facebook/appevents/internal/SessionInfo;-><init>(Ljava/lang/Long;Ljava/lang/Long;)V

    # setter for: Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->currentSession:Lcom/facebook/appevents/internal/SessionInfo;
    invoke-static {v0}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$402(Lcom/facebook/appevents/internal/SessionInfo;)Lcom/facebook/appevents/internal/SessionInfo;

    .line 187
    iget-object v0, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4;->val$activityName:Ljava/lang/String;

    # getter for: Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->appId:Ljava/lang/String;
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$500()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4;->val$appContext:Landroid/content/Context;

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/appevents/internal/SessionLogger;->logActivateApp(Ljava/lang/String;Lcom/facebook/appevents/internal/SourceApplicationInfo;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_80

    .line 188
    :cond_28
    # getter for: Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->currentSession:Lcom/facebook/appevents/internal/SessionInfo;
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$400()Lcom/facebook/appevents/internal/SessionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/appevents/internal/SessionInfo;->getSessionLastEventTime()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_80

    .line 189
    iget-wide v2, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4;->val$currentTime:J

    # getter for: Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->currentSession:Lcom/facebook/appevents/internal/SessionInfo;
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$400()Lcom/facebook/appevents/internal/SessionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/appevents/internal/SessionInfo;->getSessionLastEventTime()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 190
    # invokes: Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->getSessionTimeoutInSeconds()I
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$600()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-lez v0, :cond_73

    .line 193
    iget-object v0, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4;->val$activityName:Ljava/lang/String;

    # getter for: Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->currentSession:Lcom/facebook/appevents/internal/SessionInfo;
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$400()Lcom/facebook/appevents/internal/SessionInfo;

    move-result-object v2

    # getter for: Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->appId:Ljava/lang/String;
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$500()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/facebook/appevents/internal/SessionLogger;->logDeactivateApp(Ljava/lang/String;Lcom/facebook/appevents/internal/SessionInfo;Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4;->val$activityName:Ljava/lang/String;

    # getter for: Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->appId:Ljava/lang/String;
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$500()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4;->val$appContext:Landroid/content/Context;

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/appevents/internal/SessionLogger;->logActivateApp(Ljava/lang/String;Lcom/facebook/appevents/internal/SourceApplicationInfo;Ljava/lang/String;Landroid/content/Context;)V

    .line 195
    new-instance v0, Lcom/facebook/appevents/internal/SessionInfo;

    iget-wide v2, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4;->val$currentTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/facebook/appevents/internal/SessionInfo;-><init>(Ljava/lang/Long;Ljava/lang/Long;)V

    # setter for: Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->currentSession:Lcom/facebook/appevents/internal/SessionInfo;
    invoke-static {v0}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$402(Lcom/facebook/appevents/internal/SessionInfo;)Lcom/facebook/appevents/internal/SessionInfo;

    goto :goto_80

    :cond_73
    const-wide/16 v0, 0x3e8

    cmp-long v4, v2, v0

    if-lez v4, :cond_80

    .line 197
    # getter for: Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->currentSession:Lcom/facebook/appevents/internal/SessionInfo;
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$400()Lcom/facebook/appevents/internal/SessionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/appevents/internal/SessionInfo;->incrementInterruptionCount()V

    .line 201
    :cond_80
    :goto_80
    # getter for: Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->currentSession:Lcom/facebook/appevents/internal/SessionInfo;
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$400()Lcom/facebook/appevents/internal/SessionInfo;

    move-result-object v0

    iget-wide v1, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4;->val$currentTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/appevents/internal/SessionInfo;->setSessionLastEventTime(Ljava/lang/Long;)V

    .line 202
    # getter for: Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->currentSession:Lcom/facebook/appevents/internal/SessionInfo;
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$400()Lcom/facebook/appevents/internal/SessionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/appevents/internal/SessionInfo;->writeSessionToDisk()V
    :try_end_94
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_94} :catch_95

    return-void

    :catch_95
    move-exception v0

    .line 203
    invoke-static {v0, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
