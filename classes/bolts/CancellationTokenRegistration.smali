.class public Lbolts/CancellationTokenRegistration;
.super Ljava/lang/Object;
.source "CancellationTokenRegistration.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private action:Ljava/lang/Runnable;

.field private closed:Z

.field private final lock:Ljava/lang/Object;

.field private tokenSource:Lbolts/CancellationTokenSource;


# direct methods
.method constructor <init>(Lbolts/CancellationTokenSource;Ljava/lang/Runnable;)V
    .registers 4

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lbolts/CancellationTokenRegistration;->lock:Ljava/lang/Object;

    .line 27
    iput-object p1, p0, Lbolts/CancellationTokenRegistration;->tokenSource:Lbolts/CancellationTokenSource;

    .line 28
    iput-object p2, p0, Lbolts/CancellationTokenRegistration;->action:Ljava/lang/Runnable;

    return-void
.end method

.method private throwIfClosed()V
    .registers 3

    .line 57
    iget-boolean v0, p0, Lbolts/CancellationTokenRegistration;->closed:Z

    if-nez v0, :cond_5

    return-void

    .line 58
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Object already closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .registers 3

    .line 36
    iget-object v0, p0, Lbolts/CancellationTokenRegistration;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 37
    :try_start_3
    iget-boolean v1, p0, Lbolts/CancellationTokenRegistration;->closed:Z

    if-eqz v1, :cond_9

    .line 38
    monitor-exit v0

    return-void

    :cond_9
    const/4 v1, 0x1

    .line 41
    iput-boolean v1, p0, Lbolts/CancellationTokenRegistration;->closed:Z

    .line 42
    iget-object v1, p0, Lbolts/CancellationTokenRegistration;->tokenSource:Lbolts/CancellationTokenSource;

    invoke-virtual {v1, p0}, Lbolts/CancellationTokenSource;->unregister(Lbolts/CancellationTokenRegistration;)V

    const/4 v1, 0x0

    .line 43
    iput-object v1, p0, Lbolts/CancellationTokenRegistration;->tokenSource:Lbolts/CancellationTokenSource;

    .line 44
    iput-object v1, p0, Lbolts/CancellationTokenRegistration;->action:Ljava/lang/Runnable;

    .line 45
    monitor-exit v0

    return-void

    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method runAction()V
    .registers 3

    .line 49
    iget-object v0, p0, Lbolts/CancellationTokenRegistration;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 50
    :try_start_3
    invoke-direct {p0}, Lbolts/CancellationTokenRegistration;->throwIfClosed()V

    .line 51
    iget-object v1, p0, Lbolts/CancellationTokenRegistration;->action:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 52
    invoke-virtual {p0}, Lbolts/CancellationTokenRegistration;->close()V

    .line 53
    monitor-exit v0

    return-void

    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method
