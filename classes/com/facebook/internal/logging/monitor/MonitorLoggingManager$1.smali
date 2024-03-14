.class Lcom/facebook/internal/logging/monitor/MonitorLoggingManager$1;
.super Ljava/lang/Object;
.source "MonitorLoggingManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;


# direct methods
.method constructor <init>(Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;)V
    .registers 2

    .line 81
    iput-object p1, p0, Lcom/facebook/internal/logging/monitor/MonitorLoggingManager$1;->this$0:Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;

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

    .line 84
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/facebook/internal/logging/monitor/MonitorLoggingManager$1;->this$0:Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;

    invoke-virtual {v0}, Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;->flushAndWait()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception v0

    .line 85
    invoke-static {v0, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
