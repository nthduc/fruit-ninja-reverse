.class final Lbolts/Task$14;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbolts/Task;->completeImmediately(Lbolts/TaskCompletionSource;Lbolts/Continuation;Lbolts/Task;Ljava/util/concurrent/Executor;Lbolts/CancellationToken;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$continuation:Lbolts/Continuation;

.field final synthetic val$ct:Lbolts/CancellationToken;

.field final synthetic val$task:Lbolts/Task;

.field final synthetic val$tcs:Lbolts/TaskCompletionSource;


# direct methods
.method constructor <init>(Lbolts/CancellationToken;Lbolts/TaskCompletionSource;Lbolts/Continuation;Lbolts/Task;)V
    .registers 5

    .line 863
    iput-object p1, p0, Lbolts/Task$14;->val$ct:Lbolts/CancellationToken;

    iput-object p2, p0, Lbolts/Task$14;->val$tcs:Lbolts/TaskCompletionSource;

    iput-object p3, p0, Lbolts/Task$14;->val$continuation:Lbolts/Continuation;

    iput-object p4, p0, Lbolts/Task$14;->val$task:Lbolts/Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 866
    iget-object v0, p0, Lbolts/Task$14;->val$ct:Lbolts/CancellationToken;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lbolts/CancellationToken;->isCancellationRequested()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 867
    iget-object v0, p0, Lbolts/Task$14;->val$tcs:Lbolts/TaskCompletionSource;

    invoke-virtual {v0}, Lbolts/TaskCompletionSource;->setCancelled()V

    return-void

    .line 872
    :cond_10
    :try_start_10
    iget-object v0, p0, Lbolts/Task$14;->val$continuation:Lbolts/Continuation;

    iget-object v1, p0, Lbolts/Task$14;->val$task:Lbolts/Task;

    invoke-interface {v0, v1}, Lbolts/Continuation;->then(Lbolts/Task;)Ljava/lang/Object;

    move-result-object v0

    .line 873
    iget-object v1, p0, Lbolts/Task$14;->val$tcs:Lbolts/TaskCompletionSource;

    invoke-virtual {v1, v0}, Lbolts/TaskCompletionSource;->setResult(Ljava/lang/Object;)V
    :try_end_1d
    .catch Ljava/util/concurrent/CancellationException; {:try_start_10 .. :try_end_1d} :catch_25
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1d} :catch_1e

    goto :goto_2a

    :catch_1e
    move-exception v0

    .line 877
    iget-object v1, p0, Lbolts/Task$14;->val$tcs:Lbolts/TaskCompletionSource;

    invoke-virtual {v1, v0}, Lbolts/TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    goto :goto_2a

    .line 875
    :catch_25
    iget-object v0, p0, Lbolts/Task$14;->val$tcs:Lbolts/TaskCompletionSource;

    invoke-virtual {v0}, Lbolts/TaskCompletionSource;->setCancelled()V

    :goto_2a
    return-void
.end method
