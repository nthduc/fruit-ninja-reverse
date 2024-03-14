.class public Lcom/applovin/impl/sdk/utils/p;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/applovin/impl/sdk/j;

.field private b:Ljava/util/Timer;

.field private c:J

.field private d:J

.field private final e:Ljava/lang/Runnable;

.field private f:J

.field private final g:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Lcom/applovin/impl/sdk/j;Ljava/lang/Runnable;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/utils/p;->g:Ljava/lang/Object;

    iput-object p1, p0, Lcom/applovin/impl/sdk/utils/p;->a:Lcom/applovin/impl/sdk/j;

    iput-object p2, p0, Lcom/applovin/impl/sdk/utils/p;->e:Ljava/lang/Runnable;

    return-void
.end method

.method public static a(JLcom/applovin/impl/sdk/j;Ljava/lang/Runnable;)Lcom/applovin/impl/sdk/utils/p;
    .registers 7

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-ltz v2, :cond_3b

    if-eqz p3, :cond_33

    new-instance v0, Lcom/applovin/impl/sdk/utils/p;

    invoke-direct {v0, p2, p3}, Lcom/applovin/impl/sdk/utils/p;-><init>(Lcom/applovin/impl/sdk/j;Ljava/lang/Runnable;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/applovin/impl/sdk/utils/p;->c:J

    iput-wide p0, v0, Lcom/applovin/impl/sdk/utils/p;->d:J

    :try_start_15
    new-instance p3, Ljava/util/Timer;

    invoke-direct {p3}, Ljava/util/Timer;-><init>()V

    iput-object p3, v0, Lcom/applovin/impl/sdk/utils/p;->b:Ljava/util/Timer;

    iget-object p3, v0, Lcom/applovin/impl/sdk/utils/p;->b:Ljava/util/Timer;

    invoke-direct {v0}, Lcom/applovin/impl/sdk/utils/p;->e()Ljava/util/TimerTask;

    move-result-object v1

    invoke-virtual {p3, v1, p0, p1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_25
    .catch Ljava/lang/OutOfMemoryError; {:try_start_15 .. :try_end_25} :catch_26

    goto :goto_32

    :catch_26
    move-exception p0

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/j;->v()Lcom/applovin/impl/sdk/q;

    move-result-object p1

    const-string p2, "Timer"

    const-string p3, "Failed to create timer due to OOM error"

    invoke-virtual {p1, p2, p3, p0}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_32
    return-object v0

    :cond_33
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot create a scheduled timer. Runnable is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3b
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot create a scheduled timer. Invalid fire time passed in: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/utils/p;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/sdk/utils/p;->e:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/utils/p;Ljava/util/Timer;)Ljava/util/Timer;
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/sdk/utils/p;->b:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic b(Lcom/applovin/impl/sdk/utils/p;)Lcom/applovin/impl/sdk/j;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/sdk/utils/p;->a:Lcom/applovin/impl/sdk/j;

    return-object p0
.end method

.method static synthetic c(Lcom/applovin/impl/sdk/utils/p;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/sdk/utils/p;->g:Ljava/lang/Object;

    return-object p0
.end method

.method private e()Ljava/util/TimerTask;
    .registers 2

    new-instance v0, Lcom/applovin/impl/sdk/utils/p$1;

    invoke-direct {v0, p0}, Lcom/applovin/impl/sdk/utils/p$1;-><init>(Lcom/applovin/impl/sdk/utils/p;)V

    return-object v0
.end method


# virtual methods
.method public a()J
    .registers 5

    iget-object v0, p0, Lcom/applovin/impl/sdk/utils/p;->b:Ljava/util/Timer;

    if-eqz v0, :cond_f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/applovin/impl/sdk/utils/p;->c:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/applovin/impl/sdk/utils/p;->d:J

    sub-long/2addr v2, v0

    return-wide v2

    :cond_f
    iget-wide v0, p0, Lcom/applovin/impl/sdk/utils/p;->d:J

    iget-wide v2, p0, Lcom/applovin/impl/sdk/utils/p;->f:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public b()V
    .registers 7

    iget-object v0, p0, Lcom/applovin/impl/sdk/utils/p;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/applovin/impl/sdk/utils/p;->b:Ljava/util/Timer;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_33

    if-eqz v1, :cond_31

    const/4 v1, 0x0

    :try_start_8
    iget-object v2, p0, Lcom/applovin/impl/sdk/utils/p;->b:Ljava/util/Timer;

    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/applovin/impl/sdk/utils/p;->c:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/applovin/impl/sdk/utils/p;->f:J
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_16} :catch_1b
    .catchall {:try_start_8 .. :try_end_16} :catchall_19

    :cond_16
    :goto_16
    :try_start_16
    iput-object v1, p0, Lcom/applovin/impl/sdk/utils/p;->b:Ljava/util/Timer;
    :try_end_18
    .catchall {:try_start_16 .. :try_end_18} :catchall_33

    goto :goto_31

    :catchall_19
    move-exception v2

    goto :goto_2e

    :catch_1b
    move-exception v2

    :try_start_1c
    iget-object v3, p0, Lcom/applovin/impl/sdk/utils/p;->a:Lcom/applovin/impl/sdk/j;

    if-eqz v3, :cond_16

    iget-object v3, p0, Lcom/applovin/impl/sdk/utils/p;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/j;->v()Lcom/applovin/impl/sdk/q;

    move-result-object v3

    const-string v4, "Timer"

    const-string v5, "Encountered error while pausing timer"

    invoke-virtual {v3, v4, v5, v2}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2d
    .catchall {:try_start_1c .. :try_end_2d} :catchall_19

    goto :goto_16

    :goto_2e
    :try_start_2e
    iput-object v1, p0, Lcom/applovin/impl/sdk/utils/p;->b:Ljava/util/Timer;

    throw v2

    :cond_31
    :goto_31
    monitor-exit v0

    return-void

    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_2e .. :try_end_35} :catchall_33

    throw v1

    return-void
.end method

.method public c()V
    .registers 8

    iget-object v0, p0, Lcom/applovin/impl/sdk/utils/p;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-wide v1, p0, Lcom/applovin/impl/sdk/utils/p;->f:J
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_4f

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_4d

    :try_start_b
    iget-wide v1, p0, Lcom/applovin/impl/sdk/utils/p;->d:J

    iget-wide v5, p0, Lcom/applovin/impl/sdk/utils/p;->f:J

    sub-long/2addr v1, v5

    iput-wide v1, p0, Lcom/applovin/impl/sdk/utils/p;->d:J

    iget-wide v1, p0, Lcom/applovin/impl/sdk/utils/p;->d:J

    cmp-long v5, v1, v3

    if-gez v5, :cond_1a

    iput-wide v3, p0, Lcom/applovin/impl/sdk/utils/p;->d:J

    :cond_1a
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/applovin/impl/sdk/utils/p;->b:Ljava/util/Timer;

    iget-object v1, p0, Lcom/applovin/impl/sdk/utils/p;->b:Ljava/util/Timer;

    invoke-direct {p0}, Lcom/applovin/impl/sdk/utils/p;->e()Ljava/util/TimerTask;

    move-result-object v2

    iget-wide v5, p0, Lcom/applovin/impl/sdk/utils/p;->d:J

    invoke-virtual {v1, v2, v5, v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/applovin/impl/sdk/utils/p;->c:J
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_32} :catch_37
    .catchall {:try_start_b .. :try_end_32} :catchall_35

    :cond_32
    :goto_32
    :try_start_32
    iput-wide v3, p0, Lcom/applovin/impl/sdk/utils/p;->f:J
    :try_end_34
    .catchall {:try_start_32 .. :try_end_34} :catchall_4f

    goto :goto_4d

    :catchall_35
    move-exception v1

    goto :goto_4a

    :catch_37
    move-exception v1

    :try_start_38
    iget-object v2, p0, Lcom/applovin/impl/sdk/utils/p;->a:Lcom/applovin/impl/sdk/j;

    if-eqz v2, :cond_32

    iget-object v2, p0, Lcom/applovin/impl/sdk/utils/p;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/j;->v()Lcom/applovin/impl/sdk/q;

    move-result-object v2

    const-string v5, "Timer"

    const-string v6, "Encountered error while resuming timer"

    invoke-virtual {v2, v5, v6, v1}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_49
    .catchall {:try_start_38 .. :try_end_49} :catchall_35

    goto :goto_32

    :goto_4a
    :try_start_4a
    iput-wide v3, p0, Lcom/applovin/impl/sdk/utils/p;->f:J

    throw v1

    :cond_4d
    :goto_4d
    monitor-exit v0

    return-void

    :catchall_4f
    move-exception v1

    monitor-exit v0
    :try_end_51
    .catchall {:try_start_4a .. :try_end_51} :catchall_4f

    throw v1

    return-void
.end method

.method public d()V
    .registers 9

    iget-object v0, p0, Lcom/applovin/impl/sdk/utils/p;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/applovin/impl/sdk/utils/p;->b:Ljava/util/Timer;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_32

    if-eqz v1, :cond_30

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :try_start_a
    iget-object v4, p0, Lcom/applovin/impl/sdk/utils/p;->b:Ljava/util/Timer;

    invoke-virtual {v4}, Ljava/util/Timer;->cancel()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_f} :catch_16
    .catchall {:try_start_a .. :try_end_f} :catchall_14

    :try_start_f
    iput-object v3, p0, Lcom/applovin/impl/sdk/utils/p;->b:Ljava/util/Timer;

    :goto_11
    iput-wide v1, p0, Lcom/applovin/impl/sdk/utils/p;->f:J
    :try_end_13
    .catchall {:try_start_f .. :try_end_13} :catchall_32

    goto :goto_30

    :catchall_14
    move-exception v4

    goto :goto_2b

    :catch_16
    move-exception v4

    :try_start_17
    iget-object v5, p0, Lcom/applovin/impl/sdk/utils/p;->a:Lcom/applovin/impl/sdk/j;

    if-eqz v5, :cond_28

    iget-object v5, p0, Lcom/applovin/impl/sdk/utils/p;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v5}, Lcom/applovin/impl/sdk/j;->v()Lcom/applovin/impl/sdk/q;

    move-result-object v5

    const-string v6, "Timer"

    const-string v7, "Encountered error while cancelling timer"

    invoke-virtual {v5, v6, v7, v4}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_28
    .catchall {:try_start_17 .. :try_end_28} :catchall_14

    :cond_28
    :try_start_28
    iput-object v3, p0, Lcom/applovin/impl/sdk/utils/p;->b:Ljava/util/Timer;

    goto :goto_11

    :goto_2b
    iput-object v3, p0, Lcom/applovin/impl/sdk/utils/p;->b:Ljava/util/Timer;

    iput-wide v1, p0, Lcom/applovin/impl/sdk/utils/p;->f:J

    throw v4

    :cond_30
    :goto_30
    monitor-exit v0

    return-void

    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_28 .. :try_end_34} :catchall_32

    throw v1

    return-void
.end method
