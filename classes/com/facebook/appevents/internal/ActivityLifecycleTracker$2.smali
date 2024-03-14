.class final Lcom/facebook/appevents/internal/ActivityLifecycleTracker$2;
.super Ljava/lang/Object;
.source "ActivityLifecycleTracker.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->startTracking(Landroid/app/Application;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 5

    .line 96
    sget-object p2, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    # getter for: Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onActivityCreated"

    invoke-static {p2, v0, v1}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-static {}, Lcom/facebook/appevents/internal/AppEventUtility;->assertIsMainThread()V

    .line 98
    invoke-static {p1}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->onActivityCreated(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 5

    .line 135
    sget-object v0, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    # getter for: Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onActivityDestroyed"

    invoke-static {v0, v1, v2}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    # invokes: Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->onActivityDestroyed(Landroid/app/Activity;)V
    invoke-static {p1}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$300(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 5

    .line 116
    sget-object v0, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    # getter for: Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onActivityPaused"

    invoke-static {v0, v1, v2}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-static {}, Lcom/facebook/appevents/internal/AppEventUtility;->assertIsMainThread()V

    .line 118
    # invokes: Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->onActivityPaused(Landroid/app/Activity;)V
    invoke-static {p1}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$200(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 5

    .line 109
    sget-object v0, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    # getter for: Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onActivityResumed"

    invoke-static {v0, v1, v2}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-static {}, Lcom/facebook/appevents/internal/AppEventUtility;->assertIsMainThread()V

    .line 111
    invoke-static {p1}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->onActivityResumed(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 4

    .line 130
    sget-object p1, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    # getter for: Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$000()Ljava/lang/String;

    move-result-object p2

    const-string v0, "onActivitySaveInstanceState"

    invoke-static {p1, p2, v0}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 4

    .line 103
    # operator++ for: Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->activityReferences:I
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$108()I

    .line 104
    sget-object p1, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    # getter for: Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onActivityStarted"

    invoke-static {p1, v0, v1}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 4

    .line 123
    sget-object p1, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    # getter for: Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onActivityStopped"

    invoke-static {p1, v0, v1}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-static {}, Lcom/facebook/appevents/AppEventsLogger;->onContextStop()V

    .line 125
    # operator-- for: Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->activityReferences:I
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$110()I

    return-void
.end method
