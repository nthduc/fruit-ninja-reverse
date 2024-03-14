.class final Lcom/facebook/appevents/AnalyticsUserIDStore$1;
.super Ljava/lang/Object;
.source "AnalyticsUserIDStore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/AnalyticsUserIDStore;->initStore()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 49
    :cond_7
    :try_start_7
    # invokes: Lcom/facebook/appevents/AnalyticsUserIDStore;->initAndWait()V
    invoke-static {}, Lcom/facebook/appevents/AnalyticsUserIDStore;->access$000()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception v0

    .line 50
    invoke-static {v0, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
