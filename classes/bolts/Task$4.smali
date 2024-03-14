.class final Lbolts/Task$4;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbolts/Task;->call(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;Lbolts/CancellationToken;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callable:Ljava/util/concurrent/Callable;

.field final synthetic val$ct:Lbolts/CancellationToken;

.field final synthetic val$tcs:Lbolts/TaskCompletionSource;


# direct methods
.method constructor <init>(Lbolts/CancellationToken;Lbolts/TaskCompletionSource;Ljava/util/concurrent/Callable;)V
    .registers 4

    .line 348
    iput-object p1, p0, Lbolts/Task$4;->val$ct:Lbolts/CancellationToken;

    iput-object p2, p0, Lbolts/Task$4;->val$tcs:Lbolts/TaskCompletionSource;

    iput-object p3, p0, Lbolts/Task$4;->val$callable:Ljava/util/concurrent/Callable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 351
    iget-object v0, p0, Lbolts/Task$4;->val$ct:Lbolts/CancellationToken;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lbolts/CancellationToken;->isCancellationRequested()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 352
    iget-object v0, p0, Lbolts/Task$4;->val$tcs:Lbolts/TaskCompletionSource;

    invoke-virtual {v0}, Lbolts/TaskCompletionSource;->setCancelled()V

    return-void

    .line 357
    :cond_10
    :try_start_10
    iget-object v0, p0, Lbolts/Task$4;->val$tcs:Lbolts/TaskCompletionSource;

    iget-object v1, p0, Lbolts/Task$4;->val$callable:Ljava/util/concurrent/Callable;

    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbolts/TaskCompletionSource;->setResult(Ljava/lang/Object;)V
    :try_end_1b
    .catch Ljava/util/concurrent/CancellationException; {:try_start_10 .. :try_end_1b} :catch_23
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1b} :catch_1c

    goto :goto_28

    :catch_1c
    move-exception v0

    .line 361
    iget-object v1, p0, Lbolts/Task$4;->val$tcs:Lbolts/TaskCompletionSource;

    invoke-virtual {v1, v0}, Lbolts/TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    goto :goto_28

    .line 359
    :catch_23
    iget-object v0, p0, Lbolts/Task$4;->val$tcs:Lbolts/TaskCompletionSource;

    invoke-virtual {v0}, Lbolts/TaskCompletionSource;->setCancelled()V

    :goto_28
    return-void
.end method
