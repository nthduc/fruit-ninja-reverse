.class public Lbacktrace/io/backtrace_unity_android_plugin/BacktraceThreadWatcher;
.super Ljava/lang/Object;
.source "BacktraceThreadWatcher.java"


# instance fields
.field private active:Z

.field private counter:I

.field private delay:I

.field private lastTimestamp:J

.field private privateCounter:I

.field private timeout:I


# direct methods
.method constructor <init>(II)V
    .registers 3

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Lbacktrace/io/backtrace_unity_android_plugin/BacktraceThreadWatcher;->timeout:I

    .line 25
    iput p2, p0, Lbacktrace/io/backtrace_unity_android_plugin/BacktraceThreadWatcher;->delay:I

    const/4 p1, 0x1

    .line 26
    invoke-virtual {p0, p1}, Lbacktrace/io/backtrace_unity_android_plugin/BacktraceThreadWatcher;->setActive(Z)V

    return-void
.end method


# virtual methods
.method declared-synchronized getCounter()I
    .registers 2

    monitor-enter p0

    .line 100
    :try_start_1
    iget v0, p0, Lbacktrace/io/backtrace_unity_android_plugin/BacktraceThreadWatcher;->counter:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getDelay()I
    .registers 2

    .line 40
    iget v0, p0, Lbacktrace/io/backtrace_unity_android_plugin/BacktraceThreadWatcher;->delay:I

    return v0
.end method

.method getLastTimestamp()J
    .registers 3

    .line 47
    iget-wide v0, p0, Lbacktrace/io/backtrace_unity_android_plugin/BacktraceThreadWatcher;->lastTimestamp:J

    return-wide v0
.end method

.method getPrivateCounter()I
    .registers 2

    .line 86
    iget v0, p0, Lbacktrace/io/backtrace_unity_android_plugin/BacktraceThreadWatcher;->privateCounter:I

    return v0
.end method

.method getTimeout()I
    .registers 2

    .line 33
    iget v0, p0, Lbacktrace/io/backtrace_unity_android_plugin/BacktraceThreadWatcher;->timeout:I

    return v0
.end method

.method declared-synchronized isActive()Z
    .registers 2

    monitor-enter p0

    .line 63
    :try_start_1
    iget-boolean v0, p0, Lbacktrace/io/backtrace_unity_android_plugin/BacktraceThreadWatcher;->active:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setActive(Z)V
    .registers 2

    monitor-enter p0

    .line 72
    :try_start_1
    iput-boolean p1, p0, Lbacktrace/io/backtrace_unity_android_plugin/BacktraceThreadWatcher;->active:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 73
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method setLastTimestamp(J)V
    .registers 3

    .line 54
    iput-wide p1, p0, Lbacktrace/io/backtrace_unity_android_plugin/BacktraceThreadWatcher;->lastTimestamp:J

    return-void
.end method

.method setPrivateCounter(I)V
    .registers 2

    .line 93
    iput p1, p0, Lbacktrace/io/backtrace_unity_android_plugin/BacktraceThreadWatcher;->privateCounter:I

    return-void
.end method

.method public declared-synchronized tickCounter()V
    .registers 2

    monitor-enter p0

    .line 107
    :try_start_1
    iget v0, p0, Lbacktrace/io/backtrace_unity_android_plugin/BacktraceThreadWatcher;->counter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbacktrace/io/backtrace_unity_android_plugin/BacktraceThreadWatcher;->counter:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 108
    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method tickPrivateCounter()V
    .registers 2

    .line 79
    iget v0, p0, Lbacktrace/io/backtrace_unity_android_plugin/BacktraceThreadWatcher;->privateCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbacktrace/io/backtrace_unity_android_plugin/BacktraceThreadWatcher;->privateCounter:I

    return-void
.end method
