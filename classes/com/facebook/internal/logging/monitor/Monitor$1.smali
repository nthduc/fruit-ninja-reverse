.class final Lcom/facebook/internal/logging/monitor/Monitor$1;
.super Ljava/lang/Object;
.source "Monitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/internal/logging/monitor/Monitor;->loadSamplingRatesMapAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 79
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

    .line 82
    :cond_7
    :try_start_7
    invoke-static {}, Lcom/facebook/internal/logging/monitor/Monitor;->fetchSamplingRate()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 84
    invoke-static {v0}, Lcom/facebook/internal/logging/monitor/Monitor;->updateSamplingRateMap(Lorg/json/JSONObject;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_10} :catch_11

    :cond_10
    return-void

    :catch_11
    move-exception v0

    .line 86
    invoke-static {v0, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
