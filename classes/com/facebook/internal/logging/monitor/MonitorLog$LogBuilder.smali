.class public Lcom/facebook/internal/logging/monitor/MonitorLog$LogBuilder;
.super Ljava/lang/Object;
.source "MonitorLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/logging/monitor/MonitorLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LogBuilder"
.end annotation


# instance fields
.field private logEvent:Lcom/facebook/internal/logging/LogEvent;

.field private timeSpent:I

.field private timeStart:J


# direct methods
.method public constructor <init>(Lcom/facebook/internal/logging/LogEvent;)V
    .registers 4

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/facebook/internal/logging/monitor/MonitorLog$LogBuilder;->logEvent:Lcom/facebook/internal/logging/LogEvent;

    .line 90
    invoke-virtual {p1}, Lcom/facebook/internal/logging/LogEvent;->getLogCategory()Lcom/facebook/internal/logging/LogCategory;

    move-result-object v0

    sget-object v1, Lcom/facebook/internal/logging/LogCategory;->PERFORMANCE:Lcom/facebook/internal/logging/LogCategory;

    if-ne v0, v1, :cond_10

    .line 91
    invoke-virtual {p1}, Lcom/facebook/internal/logging/LogEvent;->upperCaseEventName()Ljava/lang/String;

    :cond_10
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/internal/logging/monitor/MonitorLog$LogBuilder;)Lcom/facebook/internal/logging/LogEvent;
    .registers 1

    .line 83
    iget-object p0, p0, Lcom/facebook/internal/logging/monitor/MonitorLog$LogBuilder;->logEvent:Lcom/facebook/internal/logging/LogEvent;

    return-object p0
.end method

.method static synthetic access$100(Lcom/facebook/internal/logging/monitor/MonitorLog$LogBuilder;)J
    .registers 3

    .line 83
    iget-wide v0, p0, Lcom/facebook/internal/logging/monitor/MonitorLog$LogBuilder;->timeStart:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/facebook/internal/logging/monitor/MonitorLog$LogBuilder;)I
    .registers 1

    .line 83
    iget p0, p0, Lcom/facebook/internal/logging/monitor/MonitorLog$LogBuilder;->timeSpent:I

    return p0
.end method

.method private validateMonitorLog(Lcom/facebook/internal/logging/monitor/MonitorLog;)V
    .registers 7

    .line 113
    iget v0, p0, Lcom/facebook/internal/logging/monitor/MonitorLog$LogBuilder;->timeSpent:I

    if-gez v0, :cond_8

    const/4 v0, -0x1

    .line 114
    # setter for: Lcom/facebook/internal/logging/monitor/MonitorLog;->timeSpent:I
    invoke-static {p1, v0}, Lcom/facebook/internal/logging/monitor/MonitorLog;->access$302(Lcom/facebook/internal/logging/monitor/MonitorLog;I)I

    .line 117
    :cond_8
    iget-wide v0, p0, Lcom/facebook/internal/logging/monitor/MonitorLog$LogBuilder;->timeStart:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_15

    const-wide/16 v0, -0x1

    .line 118
    # setter for: Lcom/facebook/internal/logging/monitor/MonitorLog;->timeStart:J
    invoke-static {p1, v0, v1}, Lcom/facebook/internal/logging/monitor/MonitorLog;->access$402(Lcom/facebook/internal/logging/monitor/MonitorLog;J)J

    .line 123
    :cond_15
    iget-object p1, p0, Lcom/facebook/internal/logging/monitor/MonitorLog$LogBuilder;->logEvent:Lcom/facebook/internal/logging/LogEvent;

    invoke-virtual {p1}, Lcom/facebook/internal/logging/LogEvent;->getLogCategory()Lcom/facebook/internal/logging/LogCategory;

    move-result-object p1

    sget-object v0, Lcom/facebook/internal/logging/LogCategory;->PERFORMANCE:Lcom/facebook/internal/logging/LogCategory;

    if-ne p1, v0, :cond_5e

    .line 124
    # getter for: Lcom/facebook/internal/logging/monitor/MonitorLog;->validPerformanceEventNames:Ljava/util/Set;
    invoke-static {}, Lcom/facebook/internal/logging/monitor/MonitorLog;->access$500()Ljava/util/Set;

    move-result-object p1

    iget-object v0, p0, Lcom/facebook/internal/logging/monitor/MonitorLog$LogBuilder;->logEvent:Lcom/facebook/internal/logging/LogEvent;

    invoke-virtual {v0}, Lcom/facebook/internal/logging/LogEvent;->getEventName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_30

    goto :goto_5e

    .line 125
    :cond_30
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid event name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/facebook/internal/logging/monitor/MonitorLog$LogBuilder;->logEvent:Lcom/facebook/internal/logging/LogEvent;

    .line 127
    invoke-virtual {v1}, Lcom/facebook/internal/logging/LogEvent;->getEventName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nIt should be one of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    # getter for: Lcom/facebook/internal/logging/monitor/MonitorLog;->validPerformanceEventNames:Ljava/util/Set;
    invoke-static {}, Lcom/facebook/internal/logging/monitor/MonitorLog;->access$500()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5e
    :goto_5e
    return-void
.end method


# virtual methods
.method public build()Lcom/facebook/internal/logging/monitor/MonitorLog;
    .registers 2

    .line 106
    new-instance v0, Lcom/facebook/internal/logging/monitor/MonitorLog;

    invoke-direct {v0, p0}, Lcom/facebook/internal/logging/monitor/MonitorLog;-><init>(Lcom/facebook/internal/logging/monitor/MonitorLog$LogBuilder;)V

    .line 107
    invoke-direct {p0, v0}, Lcom/facebook/internal/logging/monitor/MonitorLog$LogBuilder;->validateMonitorLog(Lcom/facebook/internal/logging/monitor/MonitorLog;)V

    return-object v0
.end method

.method public timeSpent(I)Lcom/facebook/internal/logging/monitor/MonitorLog$LogBuilder;
    .registers 2

    .line 101
    iput p1, p0, Lcom/facebook/internal/logging/monitor/MonitorLog$LogBuilder;->timeSpent:I

    return-object p0
.end method

.method public timeStart(J)Lcom/facebook/internal/logging/monitor/MonitorLog$LogBuilder;
    .registers 3

    .line 96
    iput-wide p1, p0, Lcom/facebook/internal/logging/monitor/MonitorLog$LogBuilder;->timeStart:J

    return-object p0
.end method
