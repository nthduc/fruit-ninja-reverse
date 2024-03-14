.class public final Lcom/chartboost/sdk/Networking/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(I)Ljava/util/concurrent/ExecutorService;
    .registers 9

    .line 10
    new-instance v6, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    .line 11
    new-instance v7, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0xa

    move-object v0, v7

    move v1, p0

    move v2, p0

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 16
    invoke-virtual {v7}, Ljava/util/concurrent/ThreadPoolExecutor;->prestartAllCoreThreads()I

    return-object v7
.end method

.method public static a()Ljava/util/concurrent/ScheduledExecutorService;
    .registers 3

    .line 1
    new-instance v0, Lcom/chartboost/sdk/Networking/b$a;

    invoke-direct {v0}, Lcom/chartboost/sdk/Networking/b$a;-><init>()V

    .line 8
    new-instance v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v2, 0x2

    invoke-direct {v1, v2, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    .line 9
    invoke-virtual {v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->prestartAllCoreThreads()I

    return-object v1
.end method
