.class Lcom/facebook/internal/WorkQueue$1;
.super Ljava/lang/Object;
.source "WorkQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/internal/WorkQueue;->execute(Lcom/facebook/internal/WorkQueue$WorkNode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/internal/WorkQueue;

.field final synthetic val$node:Lcom/facebook/internal/WorkQueue$WorkNode;


# direct methods
.method constructor <init>(Lcom/facebook/internal/WorkQueue;Lcom/facebook/internal/WorkQueue$WorkNode;)V
    .registers 3

    .line 123
    iput-object p1, p0, Lcom/facebook/internal/WorkQueue$1;->this$0:Lcom/facebook/internal/WorkQueue;

    iput-object p2, p0, Lcom/facebook/internal/WorkQueue$1;->val$node:Lcom/facebook/internal/WorkQueue$WorkNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 127
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/facebook/internal/WorkQueue$1;->val$node:Lcom/facebook/internal/WorkQueue$WorkNode;

    invoke-virtual {v0}, Lcom/facebook/internal/WorkQueue$WorkNode;->getCallback()Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_18

    .line 129
    :try_start_10
    iget-object v0, p0, Lcom/facebook/internal/WorkQueue$1;->this$0:Lcom/facebook/internal/WorkQueue;

    iget-object v1, p0, Lcom/facebook/internal/WorkQueue$1;->val$node:Lcom/facebook/internal/WorkQueue$WorkNode;

    # invokes: Lcom/facebook/internal/WorkQueue;->finishItemAndStartNew(Lcom/facebook/internal/WorkQueue$WorkNode;)V
    invoke-static {v0, v1}, Lcom/facebook/internal/WorkQueue;->access$000(Lcom/facebook/internal/WorkQueue;Lcom/facebook/internal/WorkQueue$WorkNode;)V

    return-void

    :catchall_18
    move-exception v0

    iget-object v1, p0, Lcom/facebook/internal/WorkQueue$1;->this$0:Lcom/facebook/internal/WorkQueue;

    iget-object v2, p0, Lcom/facebook/internal/WorkQueue$1;->val$node:Lcom/facebook/internal/WorkQueue$WorkNode;

    # invokes: Lcom/facebook/internal/WorkQueue;->finishItemAndStartNew(Lcom/facebook/internal/WorkQueue$WorkNode;)V
    invoke-static {v1, v2}, Lcom/facebook/internal/WorkQueue;->access$000(Lcom/facebook/internal/WorkQueue;Lcom/facebook/internal/WorkQueue$WorkNode;)V

    .line 130
    throw v0
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_21} :catch_21

    :catch_21
    move-exception v0

    .line 131
    invoke-static {v0, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
