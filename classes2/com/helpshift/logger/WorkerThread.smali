.class Lcom/helpshift/logger/WorkerThread;
.super Ljava/lang/Object;
.source "Logger.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private logMessage:Lcom/helpshift/logger/LogMessage;

.field private logStorage:Lcom/helpshift/logger/database/LogStorage;

.field private simpleDateFormat:Ljava/text/SimpleDateFormat;


# direct methods
.method constructor <init>(Lcom/helpshift/logger/LogMessage;Lcom/helpshift/logger/database/LogStorage;Ljava/text/SimpleDateFormat;)V
    .registers 4

    .line 462
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 463
    iput-object p1, p0, Lcom/helpshift/logger/WorkerThread;->logMessage:Lcom/helpshift/logger/LogMessage;

    .line 464
    iput-object p2, p0, Lcom/helpshift/logger/WorkerThread;->logStorage:Lcom/helpshift/logger/database/LogStorage;

    .line 465
    iput-object p3, p0, Lcom/helpshift/logger/WorkerThread;->simpleDateFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method private convertExtrasToJSON([Lcom/helpshift/logger/logmodels/ILogExtrasModel;)Ljava/lang/String;
    .registers 8

    .line 503
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    if-eqz p1, :cond_3a

    .line 504
    array-length v1, p1

    if-nez v1, :cond_b

    goto :goto_3a

    .line 508
    :cond_b
    array-length v1, p1

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_35

    aget-object v3, p1, v2

    if-nez v3, :cond_14

    goto :goto_32

    .line 515
    :cond_14
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    const/16 v5, 0x14

    if-le v4, v5, :cond_1d

    goto :goto_35

    .line 519
    :cond_1d
    invoke-interface {v3}, Lcom/helpshift/logger/logmodels/ILogExtrasModel;->toJSONObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 521
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x1388

    if-gt v4, v5, :cond_32

    .line 522
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_32
    :goto_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 527
    :cond_35
    :goto_35
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 505
    :cond_3a
    :goto_3a
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public run()V
    .registers 10

    .line 471
    :try_start_0
    iget-object v0, p0, Lcom/helpshift/logger/WorkerThread;->logMessage:Lcom/helpshift/logger/LogMessage;

    if-eqz v0, :cond_62

    .line 474
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/helpshift/logger/WorkerThread;->logMessage:Lcom/helpshift/logger/LogMessage;

    iget-wide v1, v1, Lcom/helpshift/logger/LogMessage;->timeStamp:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 475
    iget-object v1, p0, Lcom/helpshift/logger/WorkerThread;->simpleDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 478
    iget-object v0, p0, Lcom/helpshift/logger/WorkerThread;->logMessage:Lcom/helpshift/logger/LogMessage;

    iget-object v0, v0, Lcom/helpshift/logger/LogMessage;->message:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_36

    iget-object v0, p0, Lcom/helpshift/logger/WorkerThread;->logMessage:Lcom/helpshift/logger/LogMessage;

    iget-object v0, v0, Lcom/helpshift/logger/LogMessage;->message:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1388

    if-le v0, v1, :cond_36

    .line 479
    iget-object v0, p0, Lcom/helpshift/logger/WorkerThread;->logMessage:Lcom/helpshift/logger/LogMessage;

    iget-object v2, p0, Lcom/helpshift/logger/WorkerThread;->logMessage:Lcom/helpshift/logger/LogMessage;

    iget-object v2, v2, Lcom/helpshift/logger/LogMessage;->message:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/helpshift/logger/LogMessage;->message:Ljava/lang/String;

    .line 483
    :cond_36
    new-instance v0, Lcom/helpshift/logger/model/LogModel;

    iget-object v1, p0, Lcom/helpshift/logger/WorkerThread;->logMessage:Lcom/helpshift/logger/LogMessage;

    iget-object v4, v1, Lcom/helpshift/logger/LogMessage;->level:Ljava/lang/String;

    iget-object v1, p0, Lcom/helpshift/logger/WorkerThread;->logMessage:Lcom/helpshift/logger/LogMessage;

    iget-object v5, v1, Lcom/helpshift/logger/LogMessage;->message:Ljava/lang/String;

    iget-object v1, p0, Lcom/helpshift/logger/WorkerThread;->logMessage:Lcom/helpshift/logger/LogMessage;

    iget-object v6, v1, Lcom/helpshift/logger/LogMessage;->stacktrace:Ljava/lang/String;

    iget-object v1, p0, Lcom/helpshift/logger/WorkerThread;->logMessage:Lcom/helpshift/logger/LogMessage;

    iget-object v1, v1, Lcom/helpshift/logger/LogMessage;->extras:[Lcom/helpshift/logger/logmodels/ILogExtrasModel;

    .line 485
    invoke-direct {p0, v1}, Lcom/helpshift/logger/WorkerThread;->convertExtrasToJSON([Lcom/helpshift/logger/logmodels/ILogExtrasModel;)Ljava/lang/String;

    move-result-object v7

    iget-object v1, p0, Lcom/helpshift/logger/WorkerThread;->logMessage:Lcom/helpshift/logger/LogMessage;

    iget-object v8, v1, Lcom/helpshift/logger/LogMessage;->sdkVersion:Ljava/lang/String;

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/helpshift/logger/model/LogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    iget-object v1, p0, Lcom/helpshift/logger/WorkerThread;->logStorage:Lcom/helpshift/logger/database/LogStorage;

    invoke-interface {v1, v0}, Lcom/helpshift/logger/database/LogStorage;->insert(Lcom/helpshift/logger/model/LogModel;)V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_59} :catch_5a

    goto :goto_62

    :catch_5a
    move-exception v0

    const-string v1, "LogWorkerThread"

    const-string v2, "Exception in log messages worker : "

    .line 491
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_62
    :goto_62
    return-void
.end method
