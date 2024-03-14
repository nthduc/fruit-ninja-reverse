.class public Lcom/helpshift/util/HSLogger;
.super Ljava/lang/Object;
.source "HSLogger.java"


# static fields
.field public static final LOG_STORE_DB_NAME:Ljava/lang/String; = "__hs_log_store"

.field public static final OLD_ERROR_REPORTING_DATABASE_NAME:Ljava/lang/String; = "__hs__db_error_reports"

.field private static logger:Lcom/helpshift/logger/ILogger;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 62
    invoke-static {p0, p1, v0, v0}, Lcom/helpshift/util/HSLogger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Lcom/helpshift/logger/logmodels/ILogExtrasModel;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    const/4 v0, 0x0

    .line 74
    invoke-static {p0, p1, p2, v0}, Lcom/helpshift/util/HSLogger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Lcom/helpshift/logger/logmodels/ILogExtrasModel;)V

    return-void
.end method

.method public static varargs d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Lcom/helpshift/logger/logmodels/ILogExtrasModel;)V
    .registers 6

    const/4 v0, 0x1

    .line 90
    new-array v0, v0, [Ljava/lang/Throwable;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x2

    invoke-static {p2, p0, p1, v0, p3}, Lcom/helpshift/util/HSLogger;->logMessage(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;[Lcom/helpshift/logger/logmodels/ILogExtrasModel;)V

    return-void
.end method

.method public static varargs d(Ljava/lang/String;Ljava/lang/String;[Lcom/helpshift/logger/logmodels/ILogExtrasModel;)V
    .registers 4

    const/4 v0, 0x0

    .line 86
    invoke-static {p0, p1, v0, p2}, Lcom/helpshift/util/HSLogger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Lcom/helpshift/logger/logmodels/ILogExtrasModel;)V

    return-void
.end method

.method public static deleteAll()V
    .registers 1

    .line 165
    sget-object v0, Lcom/helpshift/util/HSLogger;->logger:Lcom/helpshift/logger/ILogger;

    if-nez v0, :cond_5

    return-void

    .line 169
    :cond_5
    invoke-interface {v0}, Lcom/helpshift/logger/ILogger;->deleteAllCachedLogs()V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    .line 70
    move-object v1, v0

    check-cast v1, [Ljava/lang/Throwable;

    invoke-static {p0, p1, v1, v0}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;[Lcom/helpshift/logger/logmodels/ILogExtrasModel;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    const/4 v0, 0x1

    .line 82
    new-array v0, v0, [Ljava/lang/Throwable;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;[Lcom/helpshift/logger/logmodels/ILogExtrasModel;)V

    return-void
.end method

.method public static varargs e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Lcom/helpshift/logger/logmodels/ILogExtrasModel;)V
    .registers 6

    const/4 v0, 0x1

    .line 98
    new-array v0, v0, [Ljava/lang/Throwable;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/16 p2, 0x8

    invoke-static {p2, p0, p1, v0, p3}, Lcom/helpshift/util/HSLogger;->logMessage(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;[Lcom/helpshift/logger/logmodels/ILogExtrasModel;)V

    return-void
.end method

.method public static varargs e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;[Lcom/helpshift/logger/logmodels/ILogExtrasModel;)V
    .registers 5

    const/16 v0, 0x8

    .line 102
    invoke-static {v0, p0, p1, p2, p3}, Lcom/helpshift/util/HSLogger;->logMessage(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;[Lcom/helpshift/logger/logmodels/ILogExtrasModel;)V

    return-void
.end method

.method public static enableLogging(ZZ)V
    .registers 3

    .line 56
    sget-object v0, Lcom/helpshift/util/HSLogger;->logger:Lcom/helpshift/logger/ILogger;

    if-eqz v0, :cond_7

    .line 57
    invoke-interface {v0, p0, p1}, Lcom/helpshift/logger/ILogger;->enableLogging(ZZ)V

    :cond_7
    return-void
.end method

.method public static varargs f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Lcom/helpshift/logger/logmodels/ILogExtrasModel;)V
    .registers 6

    const/4 v0, 0x1

    .line 106
    new-array v0, v0, [Ljava/lang/Throwable;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/16 p2, 0x10

    invoke-static {p2, p0, p1, v0, p3}, Lcom/helpshift/util/HSLogger;->logMessage(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;[Lcom/helpshift/logger/logmodels/ILogExtrasModel;)V

    return-void
.end method

.method public static varargs f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;[Lcom/helpshift/logger/logmodels/ILogExtrasModel;)V
    .registers 5

    const/16 v0, 0x10

    .line 110
    invoke-static {v0, p0, p1, p2, p3}, Lcom/helpshift/util/HSLogger;->logMessage(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;[Lcom/helpshift/logger/logmodels/ILogExtrasModel;)V

    return-void
.end method

.method public static getAll()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/helpshift/logger/model/LogModel;",
            ">;"
        }
    .end annotation

    .line 154
    sget-object v0, Lcom/helpshift/util/HSLogger;->logger:Lcom/helpshift/logger/ILogger;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 158
    :cond_6
    invoke-interface {v0}, Lcom/helpshift/logger/ILogger;->getAll()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static initialize(Lcom/helpshift/logger/ILogger;II)V
    .registers 3

    .line 35
    sput-object p0, Lcom/helpshift/util/HSLogger;->logger:Lcom/helpshift/logger/ILogger;

    .line 36
    sget-object p0, Lcom/helpshift/util/HSLogger;->logger:Lcom/helpshift/logger/ILogger;

    invoke-interface {p0, p1}, Lcom/helpshift/logger/ILogger;->setConsoleLoggingLevel(I)V

    .line 37
    sget-object p0, Lcom/helpshift/util/HSLogger;->logger:Lcom/helpshift/logger/ILogger;

    invoke-interface {p0, p2}, Lcom/helpshift/logger/ILogger;->setLogCachingLevel(I)V

    return-void
.end method

.method private static varargs logMessage(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;[Lcom/helpshift/logger/logmodels/ILogExtrasModel;)V
    .registers 7

    .line 123
    sget-object v0, Lcom/helpshift/util/HSLogger;->logger:Lcom/helpshift/logger/ILogger;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v1, 0x2

    if-eq p0, v1, :cond_20

    const/4 v1, 0x4

    if-eq p0, v1, :cond_1c

    const/16 v1, 0x8

    if-eq p0, v1, :cond_18

    const/16 v1, 0x10

    if-eq p0, v1, :cond_14

    goto :goto_23

    .line 141
    :cond_14
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/helpshift/logger/ILogger;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;[Lcom/helpshift/logger/logmodels/ILogExtrasModel;)V

    goto :goto_23

    .line 129
    :cond_18
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/helpshift/logger/ILogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;[Lcom/helpshift/logger/logmodels/ILogExtrasModel;)V

    goto :goto_23

    .line 133
    :cond_1c
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/helpshift/logger/ILogger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;[Lcom/helpshift/logger/logmodels/ILogExtrasModel;)V

    goto :goto_23

    .line 137
    :cond_20
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/helpshift/logger/ILogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;[Lcom/helpshift/logger/logmodels/ILogExtrasModel;)V

    :goto_23
    return-void
.end method

.method public static updateTimeStampDelta(F)V
    .registers 6

    .line 46
    sget-object v0, Lcom/helpshift/util/HSLogger;->logger:Lcom/helpshift/logger/ILogger;

    float-to-long v1, p0

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    invoke-interface {v0, v1, v2}, Lcom/helpshift/logger/ILogger;->setTimestampDelta(J)V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 66
    invoke-static {p0, p1, v0, v0}, Lcom/helpshift/util/HSLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Lcom/helpshift/logger/logmodels/ILogExtrasModel;)V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    const/4 v0, 0x0

    .line 78
    invoke-static {p0, p1, p2, v0}, Lcom/helpshift/util/HSLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Lcom/helpshift/logger/logmodels/ILogExtrasModel;)V

    return-void
.end method

.method public static varargs w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Lcom/helpshift/logger/logmodels/ILogExtrasModel;)V
    .registers 6

    const/4 v0, 0x1

    .line 94
    new-array v0, v0, [Ljava/lang/Throwable;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x4

    invoke-static {p2, p0, p1, v0, p3}, Lcom/helpshift/util/HSLogger;->logMessage(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;[Lcom/helpshift/logger/logmodels/ILogExtrasModel;)V

    return-void
.end method
