.class Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$1;
.super Ljava/lang/Object;
.source "FailedPurchaseReconciler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;->reconcileFailures()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;


# direct methods
.method constructor <init>(Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;)V
    .registers 2

    .line 223
    iput-object p1, p0, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$1;->this$0:Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 227
    iget-object v0, p0, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$1;->this$0:Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;

    # invokes: Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;->ingestBatchOfInputsSafely()V
    invoke-static {v0}, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;->access$000(Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;)V

    .line 229
    :goto_5
    iget-object v0, p0, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$1;->this$0:Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;

    iget-object v0, v0, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;->failures:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    if-lez v0, :cond_b5

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FailedPurchaseReconciler state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$1;->this$0:Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;

    iget-object v1, v1, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;->state:Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$ReconciliationState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->logDebug(Ljava/lang/String;)V

    .line 234
    sget-object v0, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$4;->$SwitchMap$com$unity$purchasing$googleplay$FailedPurchaseReconciler$ReconciliationState:[I

    iget-object v1, p0, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$1;->this$0:Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;

    iget-object v1, v1, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;->state:Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$ReconciliationState;

    invoke-virtual {v1}, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$ReconciliationState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_70

    const/4 v1, 0x2

    if-eq v0, v1, :cond_51

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3d

    goto :goto_a1

    .line 274
    :cond_3d
    iget-object v0, p0, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$1;->this$0:Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;

    iget-boolean v0, v0, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;->isProcessingDone:Z

    if-eqz v0, :cond_a1

    .line 276
    iget-object v0, p0, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$1;->this$0:Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;

    iget-object v0, v0, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;->failures:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 278
    iget-object v0, p0, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$1;->this$0:Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;

    sget-object v1, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$ReconciliationState;->StateIdle:Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$ReconciliationState;

    iput-object v1, v0, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;->state:Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$ReconciliationState;

    goto :goto_a1

    .line 259
    :cond_51
    iget-object v0, p0, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$1;->this$0:Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;

    iget-boolean v0, v0, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;->isQueryDone:Z

    if-eqz v0, :cond_a1

    .line 260
    iget-object v0, p0, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$1;->this$0:Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;

    iget-boolean v0, v0, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;->isQueryFailed:Z

    if-nez v0, :cond_69

    .line 263
    iget-object v0, p0, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$1;->this$0:Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;

    sget-object v1, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$ReconciliationState;->StateProcessing:Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$ReconciliationState;

    iput-object v1, v0, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;->state:Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$ReconciliationState;

    .line 265
    iget-object v0, p0, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$1;->this$0:Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;

    # invokes: Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;->processFailures()V
    invoke-static {v0}, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;->access$200(Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;)V

    goto :goto_a1

    .line 269
    :cond_69
    iget-object v0, p0, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$1;->this$0:Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;

    sget-object v1, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$ReconciliationState;->StateIdle:Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$ReconciliationState;

    iput-object v1, v0, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;->state:Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$ReconciliationState;

    goto :goto_a1

    .line 238
    :cond_70
    iget-object v0, p0, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$1;->this$0:Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;

    iget-object v0, v0, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;->failures:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_7a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_91

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$ReconciliationRequest;

    .line 239
    iget-boolean v4, v4, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$ReconciliationRequest;->superReconcile:Z

    if-eqz v4, :cond_8c

    const/4 v3, 0x1

    goto :goto_8d

    :cond_8c
    const/4 v2, 0x1

    :goto_8d
    if-eqz v2, :cond_7a

    if-eqz v3, :cond_7a

    :cond_91
    const-string v0, "Querying actual purchases to reconcile against previously failed"

    .line 251
    invoke-static {v0}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->logDebug(Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$1;->this$0:Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;

    sget-object v1, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$ReconciliationState;->StateQuerying:Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$ReconciliationState;

    iput-object v1, v0, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;->state:Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$ReconciliationState;

    .line 256
    iget-object v0, p0, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$1;->this$0:Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;

    # invokes: Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;->query(ZZ)V
    invoke-static {v0, v3, v2}, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;->access$100(Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;ZZ)V

    .line 285
    :cond_a1
    :goto_a1
    :try_start_a1
    iget-object v0, p0, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$1;->this$0:Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;

    # getter for: Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;->purchasing:Lcom/unity/purchasing/googleplay/IGooglePlayPurchasing;
    invoke-static {v0}, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;->access$300(Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;)Lcom/unity/purchasing/googleplay/IGooglePlayPurchasing;

    move-result-object v0

    invoke-interface {v0}, Lcom/unity/purchasing/googleplay/IGooglePlayPurchasing;->getTimekeeper()Lcom/unity/purchasing/googleplay/ITimekeeper;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-interface {v0, v1, v2}, Lcom/unity/purchasing/googleplay/ITimekeeper;->sleep(J)V
    :try_end_b0
    .catch Ljava/lang/InterruptedException; {:try_start_a1 .. :try_end_b0} :catch_b2

    goto/16 :goto_5

    :catch_b2
    nop

    goto/16 :goto_5

    :cond_b5
    return-void
.end method
