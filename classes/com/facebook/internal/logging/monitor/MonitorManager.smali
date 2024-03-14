.class public Lcom/facebook/internal/logging/monitor/MonitorManager;
.super Ljava/lang/Object;
.source "MonitorManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/logging/monitor/MonitorManager$MonitorCreator;
    }
.end annotation


# static fields
.field private static monitorCreator:Lcom/facebook/internal/logging/monitor/MonitorManager$MonitorCreator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 37
    new-instance v0, Lcom/facebook/internal/logging/monitor/MonitorManager$1;

    invoke-direct {v0}, Lcom/facebook/internal/logging/monitor/MonitorManager$1;-><init>()V

    sput-object v0, Lcom/facebook/internal/logging/monitor/MonitorManager;->monitorCreator:Lcom/facebook/internal/logging/monitor/MonitorManager$MonitorCreator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static setMonitorCreator(Lcom/facebook/internal/logging/monitor/MonitorManager$MonitorCreator;)V
    .registers 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 66
    sput-object p0, Lcom/facebook/internal/logging/monitor/MonitorManager;->monitorCreator:Lcom/facebook/internal/logging/monitor/MonitorManager$MonitorCreator;

    return-void
.end method

.method public static start()V
    .registers 1

    .line 53
    invoke-static {}, Lcom/facebook/FacebookSdk;->getMonitorEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 56
    :cond_7
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    .line 57
    invoke-static {v0}, Lcom/facebook/internal/FetchedAppSettingsManager;->getAppSettingsWithoutQuery(Ljava/lang/String;)Lcom/facebook/internal/FetchedAppSettings;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 59
    invoke-virtual {v0}, Lcom/facebook/internal/FetchedAppSettings;->getMonitorViaDialogEnabled()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 60
    sget-object v0, Lcom/facebook/internal/logging/monitor/MonitorManager;->monitorCreator:Lcom/facebook/internal/logging/monitor/MonitorManager$MonitorCreator;

    invoke-interface {v0}, Lcom/facebook/internal/logging/monitor/MonitorManager$MonitorCreator;->enable()V

    :cond_1c
    return-void
.end method
