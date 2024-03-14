.class public Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;
.super Lcom/ironsource/mediationsdk/logger/IronSourceLogger;
.source "IronSourceLoggerManager.java"

# interfaces
.implements Lcom/ironsource/mediationsdk/logger/LogListener;


# static fields
.field private static mInstance:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;


# instance fields
.field private mLoggers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ironsource/mediationsdk/logger/IronSourceLogger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 20
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceLogger;-><init>(Ljava/lang/String;)V

    .line 21
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->mLoggers:Ljava/util/ArrayList;

    .line 22
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->initSubLoggers()V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/ironsource/mediationsdk/logger/IronSourceLogger;-><init>(Ljava/lang/String;I)V

    .line 27
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->mLoggers:Ljava/util/ArrayList;

    .line 28
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->initSubLoggers()V

    return-void
.end method

.method private findLoggerByName(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceLogger;
    .registers 5

    .line 130
    iget-object v0, p0, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->mLoggers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger;

    .line 131
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLogger;->getLoggerName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_1e

    :cond_1d
    const/4 v1, 0x0

    :goto_1e
    return-object v1
.end method

.method public static declared-synchronized getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;
    .registers 3

    const-class v0, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    monitor-enter v0

    .line 46
    :try_start_3
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->mInstance:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    if-nez v1, :cond_14

    .line 47
    new-instance v1, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    const-class v2, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->mInstance:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    .line 50
    :cond_14
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->mInstance:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_18

    monitor-exit v0

    return-object v1

    :catchall_18
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getLogger(I)Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;
    .registers 3

    const-class v0, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    monitor-enter v0

    .line 63
    :try_start_3
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->mInstance:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    if-nez v1, :cond_15

    .line 64
    new-instance p0, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    const-class v1, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;-><init>(Ljava/lang/String;)V

    sput-object p0, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->mInstance:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    goto :goto_19

    .line 66
    :cond_15
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->mInstance:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    iput p0, v1, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->mDebugLevel:I

    .line 69
    :goto_19
    sget-object p0, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->mInstance:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_1d

    monitor-exit v0

    return-object p0

    :catchall_1d
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private initSubLoggers()V
    .registers 4

    .line 34
    iget-object v0, p0, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->mLoggers:Ljava/util/ArrayList;

    new-instance v1, Lcom/ironsource/mediationsdk/logger/ConsoleLogger;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/ironsource/mediationsdk/logger/ConsoleLogger;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public addLogger(Lcom/ironsource/mediationsdk/logger/IronSourceLogger;)V
    .registers 3

    .line 81
    iget-object v0, p0, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->mLoggers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public declared-synchronized log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    .registers 7

    monitor-enter p0

    .line 89
    :try_start_1
    iget v0, p0, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->mDebugLevel:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_25

    if-ge p3, v0, :cond_7

    .line 90
    monitor-exit p0

    return-void

    .line 92
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->mLoggers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger;

    .line 93
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLogger;->getDebugLevel()I

    move-result v2

    if-gt v2, p3, :cond_d

    .line 94
    invoke-virtual {v1, p1, p2, p3}, Lcom/ironsource/mediationsdk/logger/IronSourceLogger;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_22
    .catchall {:try_start_7 .. :try_end_22} :catchall_25

    goto :goto_d

    .line 96
    :cond_23
    monitor-exit p0

    return-void

    :catchall_25
    move-exception p1

    monitor-exit p0

    throw p1

    return-void
.end method

.method public declared-synchronized logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6

    monitor-enter p0

    if-nez p3, :cond_1a

    .line 111
    :try_start_3
    iget-object p3, p0, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->mLoggers:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_9
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger;

    const/4 v1, 0x3

    .line 112
    invoke-virtual {v0, p1, p2, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLogger;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    goto :goto_9

    .line 114
    :cond_1a
    iget-object v0, p0, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->mLoggers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger;

    .line 115
    invoke-virtual {v1, p1, p2, p3}, Lcom/ironsource/mediationsdk/logger/IronSourceLogger;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_32

    goto :goto_20

    .line 118
    :cond_30
    monitor-exit p0

    return-void

    :catchall_32
    move-exception p1

    monitor-exit p0

    throw p1

    return-void
.end method

.method public declared-synchronized onLog(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    .registers 4

    monitor-enter p0

    .line 103
    :try_start_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 104
    monitor-exit p0

    return-void

    :catchall_6
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setLoggerDebugLevel(Ljava/lang/String;I)V
    .registers 10

    if-nez p1, :cond_3

    return-void

    .line 150
    :cond_3
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->findLoggerByName(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceLogger;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, ")"

    const-string v3, " ,debugLevel:"

    if-eqz v0, :cond_3c

    if-ltz p2, :cond_36

    const/4 v4, 0x3

    if-gt p2, v4, :cond_36

    .line 158
    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setLoggerDebugLevel(loggerName:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v4, p1, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 159
    invoke-virtual {v0, p2}, Lcom/ironsource/mediationsdk/logger/IronSourceLogger;->setDebugLevel(I)V

    goto :goto_5b

    .line 163
    :cond_36
    iget-object p1, p0, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->mLoggers:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_5b

    .line 168
    :cond_3c
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to find logger:setLoggerDebugLevel(loggerName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    :goto_5b
    return-void
.end method
