.class public Lcom/helpshift/common/domain/PollFunction;
.super Lcom/helpshift/common/domain/F;
.source "PollFunction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpshift/common/domain/PollFunction$PollFunctionListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Helpshift_PollFunc"


# instance fields
.field private backoff:Lcom/helpshift/common/poller/HttpBackoff;

.field private final domain:Lcom/helpshift/common/domain/Domain;

.field private final listener:Lcom/helpshift/common/domain/PollFunction$PollFunctionListener;

.field private final poll:Lcom/helpshift/common/domain/F;

.field private final pollingInterval:Lcom/helpshift/common/domain/PollingInterval;

.field private shouldPoll:Z


# direct methods
.method public constructor <init>(Lcom/helpshift/common/domain/Domain;Lcom/helpshift/common/poller/HttpBackoff;Lcom/helpshift/common/domain/F;Lcom/helpshift/common/domain/PollingInterval;Lcom/helpshift/common/domain/PollFunction$PollFunctionListener;)V
    .registers 6

    .line 36
    invoke-direct {p0}, Lcom/helpshift/common/domain/F;-><init>()V

    .line 37
    iput-object p2, p0, Lcom/helpshift/common/domain/PollFunction;->backoff:Lcom/helpshift/common/poller/HttpBackoff;

    .line 38
    iput-object p3, p0, Lcom/helpshift/common/domain/PollFunction;->poll:Lcom/helpshift/common/domain/F;

    .line 39
    iput-object p1, p0, Lcom/helpshift/common/domain/PollFunction;->domain:Lcom/helpshift/common/domain/Domain;

    .line 40
    iput-object p4, p0, Lcom/helpshift/common/domain/PollFunction;->pollingInterval:Lcom/helpshift/common/domain/PollingInterval;

    .line 41
    iput-object p5, p0, Lcom/helpshift/common/domain/PollFunction;->listener:Lcom/helpshift/common/domain/PollFunction$PollFunctionListener;

    return-void
.end method


# virtual methods
.method public f()V
    .registers 6

    .line 46
    iget-boolean v0, p0, Lcom/helpshift/common/domain/PollFunction;->shouldPoll:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    :try_start_5
    const-string v0, "Helpshift_PollFunc"

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Running:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/helpshift/common/domain/PollFunction;->pollingInterval:Lcom/helpshift/common/domain/PollingInterval;

    invoke-virtual {v2}, Lcom/helpshift/common/domain/PollingInterval;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/helpshift/util/HSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/helpshift/common/domain/PollFunction;->poll:Lcom/helpshift/common/domain/F;

    invoke-virtual {v0}, Lcom/helpshift/common/domain/F;->f()V

    .line 59
    sget-object v0, Lcom/helpshift/common/domain/network/NetworkErrorCodes;->OK:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_2c
    .catch Lcom/helpshift/common/exception/RootAPIException; {:try_start_5 .. :try_end_2c} :catch_2d

    goto :goto_38

    :catch_2d
    move-exception v0

    .line 62
    iget-object v1, v0, Lcom/helpshift/common/exception/RootAPIException;->exceptionType:Lcom/helpshift/common/exception/ExceptionType;

    instance-of v1, v1, Lcom/helpshift/common/exception/NetworkException;

    if-eqz v1, :cond_50

    .line 63
    invoke-virtual {v0}, Lcom/helpshift/common/exception/RootAPIException;->getServerStatusCode()I

    move-result v0

    .line 69
    :goto_38
    iget-object v1, p0, Lcom/helpshift/common/domain/PollFunction;->backoff:Lcom/helpshift/common/poller/HttpBackoff;

    invoke-virtual {v1, v0}, Lcom/helpshift/common/poller/HttpBackoff;->nextIntervalMillis(I)J

    move-result-wide v0

    const-wide/16 v2, -0x64

    cmp-long v4, v0, v2

    if-nez v4, :cond_4c

    .line 72
    iget-object v0, p0, Lcom/helpshift/common/domain/PollFunction;->listener:Lcom/helpshift/common/domain/PollFunction$PollFunctionListener;

    if-eqz v0, :cond_4f

    .line 73
    invoke-interface {v0}, Lcom/helpshift/common/domain/PollFunction$PollFunctionListener;->onPollingStoppedViaBackoffStrategy()V

    goto :goto_4f

    .line 77
    :cond_4c
    invoke-virtual {p0, v0, v1}, Lcom/helpshift/common/domain/PollFunction;->schedulePoll(J)V

    :cond_4f
    :goto_4f
    return-void

    .line 66
    :cond_50
    throw v0
.end method

.method schedulePoll(J)V
    .registers 4

    .line 82
    iget-object v0, p0, Lcom/helpshift/common/domain/PollFunction;->domain:Lcom/helpshift/common/domain/Domain;

    invoke-virtual {v0, p0, p1, p2}, Lcom/helpshift/common/domain/Domain;->runDelayedInParallel(Lcom/helpshift/common/domain/F;J)V

    return-void
.end method

.method public start(J)V
    .registers 5

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Start: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpshift/common/domain/PollFunction;->pollingInterval:Lcom/helpshift/common/domain/PollingInterval;

    invoke-virtual {v1}, Lcom/helpshift/common/domain/PollingInterval;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Helpshift_PollFunc"

    invoke-static {v1, v0}, Lcom/helpshift/util/HSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-boolean v0, p0, Lcom/helpshift/common/domain/PollFunction;->shouldPoll:Z

    if-nez v0, :cond_26

    const/4 v0, 0x1

    .line 91
    iput-boolean v0, p0, Lcom/helpshift/common/domain/PollFunction;->shouldPoll:Z

    .line 92
    invoke-virtual {p0, p1, p2}, Lcom/helpshift/common/domain/PollFunction;->schedulePoll(J)V

    :cond_26
    return-void
.end method

.method public stop()V
    .registers 3

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stop: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpshift/common/domain/PollFunction;->pollingInterval:Lcom/helpshift/common/domain/PollingInterval;

    invoke-virtual {v1}, Lcom/helpshift/common/domain/PollingInterval;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Helpshift_PollFunc"

    invoke-static {v1, v0}, Lcom/helpshift/util/HSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 98
    iput-boolean v0, p0, Lcom/helpshift/common/domain/PollFunction;->shouldPoll:Z

    .line 99
    iget-object v0, p0, Lcom/helpshift/common/domain/PollFunction;->backoff:Lcom/helpshift/common/poller/HttpBackoff;

    invoke-virtual {v0}, Lcom/helpshift/common/poller/HttpBackoff;->reset()V

    return-void
.end method
