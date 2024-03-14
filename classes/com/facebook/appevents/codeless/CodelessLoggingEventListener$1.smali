.class final Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$1;
.super Ljava/lang/Object;
.source "CodelessLoggingEventListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/codeless/CodelessLoggingEventListener;->logEvent(Lcom/facebook/appevents/codeless/internal/EventBinding;Landroid/view/View;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$eventName:Ljava/lang/String;

.field final synthetic val$parameters:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3

    .line 69
    iput-object p1, p0, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$1;->val$eventName:Ljava/lang/String;

    iput-object p2, p0, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$1;->val$parameters:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 72
    :cond_7
    :try_start_7
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 73
    invoke-static {v0}, Lcom/facebook/appevents/AppEventsLogger;->newLogger(Landroid/content/Context;)Lcom/facebook/appevents/AppEventsLogger;

    move-result-object v0

    .line 74
    iget-object v1, p0, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$1;->val$eventName:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$1;->val$parameters:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_16} :catch_17

    return-void

    :catch_17
    move-exception v0

    .line 75
    invoke-static {v0, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
