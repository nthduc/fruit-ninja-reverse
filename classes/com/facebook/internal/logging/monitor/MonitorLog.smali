.class public Lcom/facebook/internal/logging/monitor/MonitorLog;
.super Ljava/lang/Object;
.source "MonitorLog.java"

# interfaces
.implements Lcom/facebook/internal/logging/ExternalLog;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/logging/monitor/MonitorLog$LogBuilder;
    }
.end annotation


# static fields
.field private static final INVALID_TIME:I = -0x1

.field private static final serialVersionUID:J = 0x1L

.field private static validPerformanceEventNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private hashCode:I

.field private logEvent:Lcom/facebook/internal/logging/LogEvent;

.field private timeSpent:I

.field private timeStart:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 55
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/facebook/internal/logging/monitor/MonitorLog;->validPerformanceEventNames:Ljava/util/Set;

    .line 56
    sget-object v0, Lcom/facebook/internal/logging/monitor/MonitorLog;->validPerformanceEventNames:Ljava/util/Set;

    const-string v1, "FB_CORE_STARTUP"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Lcom/facebook/internal/logging/monitor/MonitorLog$LogBuilder;)V
    .registers 4

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    # getter for: Lcom/facebook/internal/logging/monitor/MonitorLog$LogBuilder;->logEvent:Lcom/facebook/internal/logging/LogEvent;
    invoke-static {p1}, Lcom/facebook/internal/logging/monitor/MonitorLog$LogBuilder;->access$000(Lcom/facebook/internal/logging/monitor/MonitorLog$LogBuilder;)Lcom/facebook/internal/logging/LogEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/internal/logging/monitor/MonitorLog;->logEvent:Lcom/facebook/internal/logging/LogEvent;

    .line 61
    # getter for: Lcom/facebook/internal/logging/monitor/MonitorLog$LogBuilder;->timeStart:J
    invoke-static {p1}, Lcom/facebook/internal/logging/monitor/MonitorLog$LogBuilder;->access$100(Lcom/facebook/internal/logging/monitor/MonitorLog$LogBuilder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/internal/logging/monitor/MonitorLog;->timeStart:J

    .line 62
    # getter for: Lcom/facebook/internal/logging/monitor/MonitorLog$LogBuilder;->timeSpent:I
    invoke-static {p1}, Lcom/facebook/internal/logging/monitor/MonitorLog$LogBuilder;->access$200(Lcom/facebook/internal/logging/monitor/MonitorLog$LogBuilder;)I

    move-result p1

    iput p1, p0, Lcom/facebook/internal/logging/monitor/MonitorLog;->timeSpent:I

    return-void
.end method

.method static synthetic access$302(Lcom/facebook/internal/logging/monitor/MonitorLog;I)I
    .registers 2

    .line 41
    iput p1, p0, Lcom/facebook/internal/logging/monitor/MonitorLog;->timeSpent:I

    return p1
.end method

.method static synthetic access$402(Lcom/facebook/internal/logging/monitor/MonitorLog;J)J
    .registers 3

    .line 41
    iput-wide p1, p0, Lcom/facebook/internal/logging/monitor/MonitorLog;->timeStart:J

    return-wide p1
.end method

.method static synthetic access$500()Ljava/util/Set;
    .registers 1

    .line 41
    sget-object v0, Lcom/facebook/internal/logging/monitor/MonitorLog;->validPerformanceEventNames:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public convertToJSONObject()Lorg/json/JSONObject;
    .registers 7

    .line 187
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v1, "event_name"

    .line 189
    iget-object v2, p0, Lcom/facebook/internal/logging/monitor/MonitorLog;->logEvent:Lcom/facebook/internal/logging/LogEvent;

    invoke-virtual {v2}, Lcom/facebook/internal/logging/LogEvent;->getEventName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "category"

    .line 190
    iget-object v2, p0, Lcom/facebook/internal/logging/monitor/MonitorLog;->logEvent:Lcom/facebook/internal/logging/LogEvent;

    invoke-virtual {v2}, Lcom/facebook/internal/logging/LogEvent;->getLogCategory()Lcom/facebook/internal/logging/LogCategory;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 192
    iget-wide v1, p0, Lcom/facebook/internal/logging/monitor/MonitorLog;->timeStart:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2a

    const-string v1, "time_start"

    .line 193
    iget-wide v2, p0, Lcom/facebook/internal/logging/monitor/MonitorLog;->timeStart:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 195
    :cond_2a
    iget v1, p0, Lcom/facebook/internal/logging/monitor/MonitorLog;->timeSpent:I

    if-eqz v1, :cond_35

    const-string v1, "time_spent"

    .line 196
    iget v2, p0, Lcom/facebook/internal/logging/monitor/MonitorLog;->timeSpent:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_35
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_35} :catch_36

    :cond_35
    return-object v0

    :catch_36
    const/4 v0, 0x0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_49

    .line 174
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_49

    .line 177
    :cond_12
    check-cast p1, Lcom/facebook/internal/logging/monitor/MonitorLog;

    .line 179
    iget-object v2, p0, Lcom/facebook/internal/logging/monitor/MonitorLog;->logEvent:Lcom/facebook/internal/logging/LogEvent;

    invoke-virtual {v2}, Lcom/facebook/internal/logging/LogEvent;->getEventName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/facebook/internal/logging/monitor/MonitorLog;->logEvent:Lcom/facebook/internal/logging/LogEvent;

    invoke-virtual {v3}, Lcom/facebook/internal/logging/LogEvent;->getEventName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_47

    iget-object v2, p0, Lcom/facebook/internal/logging/monitor/MonitorLog;->logEvent:Lcom/facebook/internal/logging/LogEvent;

    .line 180
    invoke-virtual {v2}, Lcom/facebook/internal/logging/LogEvent;->getLogCategory()Lcom/facebook/internal/logging/LogCategory;

    move-result-object v2

    iget-object v3, p1, Lcom/facebook/internal/logging/monitor/MonitorLog;->logEvent:Lcom/facebook/internal/logging/LogEvent;

    invoke-virtual {v3}, Lcom/facebook/internal/logging/LogEvent;->getLogCategory()Lcom/facebook/internal/logging/LogCategory;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/internal/logging/LogCategory;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_47

    iget-wide v2, p0, Lcom/facebook/internal/logging/monitor/MonitorLog;->timeStart:J

    iget-wide v4, p1, Lcom/facebook/internal/logging/monitor/MonitorLog;->timeStart:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_47

    iget v2, p0, Lcom/facebook/internal/logging/monitor/MonitorLog;->timeSpent:I

    iget p1, p1, Lcom/facebook/internal/logging/monitor/MonitorLog;->timeSpent:I

    if-ne v2, p1, :cond_47

    goto :goto_48

    :cond_47
    const/4 v0, 0x0

    :goto_48
    return v0

    :cond_49
    :goto_49
    return v1
.end method

.method public getEventName()Ljava/lang/String;
    .registers 2

    .line 67
    iget-object v0, p0, Lcom/facebook/internal/logging/monitor/MonitorLog;->logEvent:Lcom/facebook/internal/logging/LogEvent;

    invoke-virtual {v0}, Lcom/facebook/internal/logging/LogEvent;->getEventName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLogCategory()Lcom/facebook/internal/logging/LogCategory;
    .registers 2

    .line 72
    iget-object v0, p0, Lcom/facebook/internal/logging/monitor/MonitorLog;->logEvent:Lcom/facebook/internal/logging/LogEvent;

    invoke-virtual {v0}, Lcom/facebook/internal/logging/LogEvent;->getLogCategory()Lcom/facebook/internal/logging/LogCategory;

    move-result-object v0

    return-object v0
.end method

.method public getTimeSpent()I
    .registers 2

    .line 80
    iget v0, p0, Lcom/facebook/internal/logging/monitor/MonitorLog;->timeSpent:I

    return v0
.end method

.method public getTimeStart()J
    .registers 3

    .line 76
    iget-wide v0, p0, Lcom/facebook/internal/logging/monitor/MonitorLog;->timeStart:J

    return-wide v0
.end method

.method public hashCode()I
    .registers 6

    .line 159
    iget v0, p0, Lcom/facebook/internal/logging/monitor/MonitorLog;->hashCode:I

    if-nez v0, :cond_22

    const/16 v0, 0x20f

    .line 161
    iget-object v1, p0, Lcom/facebook/internal/logging/monitor/MonitorLog;->logEvent:Lcom/facebook/internal/logging/LogEvent;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 162
    iget-wide v1, p0, Lcom/facebook/internal/logging/monitor/MonitorLog;->timeStart:J

    const/16 v3, 0x20

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 163
    iget v1, p0, Lcom/facebook/internal/logging/monitor/MonitorLog;->timeSpent:I

    ushr-int/lit8 v2, v1, 0x20

    xor-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 164
    iput v0, p0, Lcom/facebook/internal/logging/monitor/MonitorLog;->hashCode:I

    .line 166
    :cond_22
    iget v0, p0, Lcom/facebook/internal/logging/monitor/MonitorLog;->hashCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "event_name"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": %s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "category"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "time_start"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "time_spent"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/facebook/internal/logging/monitor/MonitorLog;->logEvent:Lcom/facebook/internal/logging/LogEvent;

    .line 151
    invoke-virtual {v2}, Lcom/facebook/internal/logging/LogEvent;->getEventName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/facebook/internal/logging/monitor/MonitorLog;->logEvent:Lcom/facebook/internal/logging/LogEvent;

    .line 152
    invoke-virtual {v2}, Lcom/facebook/internal/logging/LogEvent;->getLogCategory()Lcom/facebook/internal/logging/LogCategory;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-wide v2, p0, Lcom/facebook/internal/logging/monitor/MonitorLog;->timeStart:J

    .line 153
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/facebook/internal/logging/monitor/MonitorLog;->timeSpent:I

    .line 154
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 139
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
