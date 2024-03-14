.class abstract Lcom/helpshift/websockets/PeriodicalFrameSender;
.super Ljava/lang/Object;
.source "PeriodicalFrameSender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpshift/websockets/PeriodicalFrameSender$Task;
    }
.end annotation


# instance fields
.field private mGenerator:Lcom/helpshift/websockets/PayloadGenerator;

.field private mInterval:J

.field private mScheduled:Z

.field private mTimer:Ljava/util/Timer;

.field private final mTimerName:Ljava/lang/String;

.field private final mWebSocket:Lcom/helpshift/websockets/WebSocket;


# direct methods
.method public constructor <init>(Lcom/helpshift/websockets/WebSocket;Ljava/lang/String;Lcom/helpshift/websockets/PayloadGenerator;)V
    .registers 4

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/helpshift/websockets/PeriodicalFrameSender;->mWebSocket:Lcom/helpshift/websockets/WebSocket;

    .line 41
    iput-object p2, p0, Lcom/helpshift/websockets/PeriodicalFrameSender;->mTimerName:Ljava/lang/String;

    .line 42
    iput-object p3, p0, Lcom/helpshift/websockets/PeriodicalFrameSender;->mGenerator:Lcom/helpshift/websockets/PayloadGenerator;

    return-void
.end method

.method private createFrame()Lcom/helpshift/websockets/WebSocketFrame;
    .registers 2

    .line 154
    invoke-direct {p0}, Lcom/helpshift/websockets/PeriodicalFrameSender;->generatePayload()[B

    move-result-object v0

    .line 157
    invoke-virtual {p0, v0}, Lcom/helpshift/websockets/PeriodicalFrameSender;->createFrame([B)Lcom/helpshift/websockets/WebSocketFrame;

    move-result-object v0

    return-object v0
.end method

.method private generatePayload()[B
    .registers 3

    .line 162
    iget-object v0, p0, Lcom/helpshift/websockets/PeriodicalFrameSender;->mGenerator:Lcom/helpshift/websockets/PayloadGenerator;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 168
    :cond_6
    :try_start_6
    invoke-interface {v0}, Lcom/helpshift/websockets/PayloadGenerator;->generate()[B

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_a} :catch_b

    return-object v0

    :catch_b
    return-object v1
.end method

.method private static schedule(Ljava/util/Timer;Lcom/helpshift/websockets/PeriodicalFrameSender$Task;J)Z
    .registers 4

    .line 48
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_5

    const/4 p0, 0x1

    return p0

    :catch_5
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method protected abstract createFrame([B)Lcom/helpshift/websockets/WebSocketFrame;
.end method

.method doTask()V
    .registers 6

    .line 135
    monitor-enter p0

    .line 136
    :try_start_1
    iget-wide v0, p0, Lcom/helpshift/websockets/PeriodicalFrameSender;->mInterval:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2c

    iget-object v0, p0, Lcom/helpshift/websockets/PeriodicalFrameSender;->mWebSocket:Lcom/helpshift/websockets/WebSocket;

    invoke-virtual {v0}, Lcom/helpshift/websockets/WebSocket;->isOpen()Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_2c

    .line 144
    :cond_12
    iget-object v0, p0, Lcom/helpshift/websockets/PeriodicalFrameSender;->mWebSocket:Lcom/helpshift/websockets/WebSocket;

    invoke-direct {p0}, Lcom/helpshift/websockets/PeriodicalFrameSender;->createFrame()Lcom/helpshift/websockets/WebSocketFrame;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/helpshift/websockets/WebSocket;->sendFrame(Lcom/helpshift/websockets/WebSocketFrame;)Lcom/helpshift/websockets/WebSocket;

    .line 147
    iget-object v0, p0, Lcom/helpshift/websockets/PeriodicalFrameSender;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/helpshift/websockets/PeriodicalFrameSender$Task;

    invoke-direct {v1, p0}, Lcom/helpshift/websockets/PeriodicalFrameSender$Task;-><init>(Lcom/helpshift/websockets/PeriodicalFrameSender;)V

    iget-wide v2, p0, Lcom/helpshift/websockets/PeriodicalFrameSender;->mInterval:J

    invoke-static {v0, v1, v2, v3}, Lcom/helpshift/websockets/PeriodicalFrameSender;->schedule(Ljava/util/Timer;Lcom/helpshift/websockets/PeriodicalFrameSender$Task;J)Z

    move-result v0

    iput-boolean v0, p0, Lcom/helpshift/websockets/PeriodicalFrameSender;->mScheduled:Z

    .line 148
    monitor-exit p0

    return-void

    :cond_2c
    :goto_2c
    const/4 v0, 0x0

    .line 137
    iput-boolean v0, p0, Lcom/helpshift/websockets/PeriodicalFrameSender;->mScheduled:Z

    .line 140
    monitor-exit p0

    return-void

    :catchall_31
    move-exception v0

    .line 148
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_31

    throw v0
.end method

.method public getInterval()J
    .registers 3

    .line 89
    monitor-enter p0

    .line 90
    :try_start_1
    iget-wide v0, p0, Lcom/helpshift/websockets/PeriodicalFrameSender;->mInterval:J

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    .line 91
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public getPayloadGenerator()Lcom/helpshift/websockets/PayloadGenerator;
    .registers 2

    .line 123
    monitor-enter p0

    .line 124
    :try_start_1
    iget-object v0, p0, Lcom/helpshift/websockets/PeriodicalFrameSender;->mGenerator:Lcom/helpshift/websockets/PayloadGenerator;

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    .line 125
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public setInterval(J)V
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_7

    move-wide p1, v0

    .line 99
    :cond_7
    monitor-enter p0

    .line 100
    :try_start_8
    iput-wide p1, p0, Lcom/helpshift/websockets/PeriodicalFrameSender;->mInterval:J

    .line 101
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_3d

    cmp-long v2, p1, v0

    if-nez v2, :cond_10

    return-void

    .line 107
    :cond_10
    iget-object v0, p0, Lcom/helpshift/websockets/PeriodicalFrameSender;->mWebSocket:Lcom/helpshift/websockets/WebSocket;

    invoke-virtual {v0}, Lcom/helpshift/websockets/WebSocket;->isOpen()Z

    move-result v0

    if-nez v0, :cond_19

    return-void

    .line 111
    :cond_19
    monitor-enter p0

    .line 112
    :try_start_1a
    iget-object v0, p0, Lcom/helpshift/websockets/PeriodicalFrameSender;->mTimer:Ljava/util/Timer;

    if-nez v0, :cond_27

    .line 113
    new-instance v0, Ljava/util/Timer;

    iget-object v1, p0, Lcom/helpshift/websockets/PeriodicalFrameSender;->mTimerName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/helpshift/websockets/PeriodicalFrameSender;->mTimer:Ljava/util/Timer;

    .line 116
    :cond_27
    iget-boolean v0, p0, Lcom/helpshift/websockets/PeriodicalFrameSender;->mScheduled:Z

    if-nez v0, :cond_38

    .line 117
    iget-object v0, p0, Lcom/helpshift/websockets/PeriodicalFrameSender;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/helpshift/websockets/PeriodicalFrameSender$Task;

    invoke-direct {v1, p0}, Lcom/helpshift/websockets/PeriodicalFrameSender$Task;-><init>(Lcom/helpshift/websockets/PeriodicalFrameSender;)V

    invoke-static {v0, v1, p1, p2}, Lcom/helpshift/websockets/PeriodicalFrameSender;->schedule(Ljava/util/Timer;Lcom/helpshift/websockets/PeriodicalFrameSender$Task;J)Z

    move-result p1

    iput-boolean p1, p0, Lcom/helpshift/websockets/PeriodicalFrameSender;->mScheduled:Z

    .line 119
    :cond_38
    monitor-exit p0

    return-void

    :catchall_3a
    move-exception p1

    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_1a .. :try_end_3c} :catchall_3a

    throw p1

    :catchall_3d
    move-exception p1

    .line 101
    :try_start_3e
    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw p1
.end method

.method public setPayloadGenerator(Lcom/helpshift/websockets/PayloadGenerator;)V
    .registers 2

    .line 129
    monitor-enter p0

    .line 130
    :try_start_1
    iput-object p1, p0, Lcom/helpshift/websockets/PeriodicalFrameSender;->mGenerator:Lcom/helpshift/websockets/PayloadGenerator;

    .line 131
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw p1
.end method

.method public start()V
    .registers 3

    .line 74
    invoke-virtual {p0}, Lcom/helpshift/websockets/PeriodicalFrameSender;->getInterval()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/helpshift/websockets/PeriodicalFrameSender;->setInterval(J)V

    return-void
.end method

.method public stop()V
    .registers 2

    .line 78
    monitor-enter p0

    .line 79
    :try_start_1
    iget-object v0, p0, Lcom/helpshift/websockets/PeriodicalFrameSender;->mTimer:Ljava/util/Timer;

    if-nez v0, :cond_7

    .line 80
    monitor-exit p0

    return-void

    :cond_7
    const/4 v0, 0x0

    .line 83
    iput-boolean v0, p0, Lcom/helpshift/websockets/PeriodicalFrameSender;->mScheduled:Z

    .line 84
    iget-object v0, p0, Lcom/helpshift/websockets/PeriodicalFrameSender;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 85
    monitor-exit p0

    return-void

    :catchall_11
    move-exception v0

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_11

    throw v0
.end method
