.class Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;
.super Ljava/lang/Object;
.source "FailedPurchaseReconciler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$ReconciliationState;,
        Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$ReconciliationRequest;
    }
.end annotation


# instance fields
.field protected executor:Ljava/util/concurrent/Executor;

.field protected final failures:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$ReconciliationRequest;",
            ">;"
        }
    .end annotation
.end field

.field protected final inputFailures:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$ReconciliationRequest;",
            ">;"
        }
    .end annotation
.end field

.field protected isProcessingDone:Z

.field protected isQueryDone:Z

.field protected isQueryFailed:Z

.field private final purchasing:Lcom/unity/purchasing/googleplay/IGooglePlayPurchasing;

.field state:Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$ReconciliationState;


# direct methods
.method public constructor <init>(Lcom/unity/purchasing/googleplay/IGooglePlayPurchasing;)V
    .registers 3

    .line 33
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;-><init>(Lcom/unity/purchasing/googleplay/IGooglePlayPurchasing;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public constructor <init>(Lcom/unity/purchasing/googleplay/IGooglePlayPurchasing;Ljava/util/concurrent/Executor;)V
    .registers 4

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;->failures:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 83
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;->inputFailures:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 98
    sget-object v0, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$ReconciliationState;->StateIdle:Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$ReconciliationState;

    iput-object v0, p0, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;->state:Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$ReconciliationState;

    .line 40
    iput-object p1, p0, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;->purchasing:Lcom/unity/purchasing/googleplay/IGooglePlayPurchasing;

    .line 41
    iput-object p2, p0, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static synthetic access$000(Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;)V
    .registers 1

    .line 26
    invoke-direct {p0}, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;->ingestBatchOfInputsSafely()V

    return-void
.end method

.method static synthetic access$100(Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;ZZ)V
    .registers 3

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;->query(ZZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;)V
    .registers 1

    .line 26
    invoke-direct {p0}, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;->processFailures()V

    return-void
.end method

.method static synthetic access$300(Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;)Lcom/unity/purchasing/googleplay/IGooglePlayPurchasing;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;->purchasing:Lcom/unity/purchasing/googleplay/IGooglePlayPurchasing;

    return-object p0
.end method

.method private addFailureDescription(Lcom/unity/purchasing/common/PurchaseFailureDescription;Z)Lcom/unity/purchasing/common/PurchaseFailureDescription;
    .registers 6

    if-nez p1, :cond_b

    .line 180
    new-instance p1, Lcom/unity/purchasing/common/PurchaseFailureDescription;

    sget-object v0, Lcom/unity/purchasing/common/PurchaseFailureReason;->Unknown:Lcom/unity/purchasing/common/PurchaseFailureReason;

    const-string v1, ""

    invoke-direct {p1, v1, v0}, Lcom/unity/purchasing/common/PurchaseFailureDescription;-><init>(Ljava/lang/String;Lcom/unity/purchasing/common/PurchaseFailureReason;)V

    .line 185
    :cond_b
    iget-object v0, p1, Lcom/unity/purchasing/common/PurchaseFailureDescription;->productId:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    .line 186
    iget-object v0, p1, Lcom/unity/purchasing/common/PurchaseFailureDescription;->productId:Ljava/lang/String;

    goto :goto_14

    :cond_13
    move-object v0, v1

    .line 190
    :goto_14
    invoke-virtual {p0, v0}, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;->isReconcilingFailure(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 193
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Ignoring redundant failure reconciliation request: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->logDebug(Ljava/lang/String;)V

    return-object v1

    .line 197
    :cond_2f
    new-instance v1, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$ReconciliationRequest;

    invoke-direct {v1, p0}, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$ReconciliationRequest;-><init>(Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;)V

    .line 198
    iput-object p1, v1, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$ReconciliationRequest;->failureDescription:Lcom/unity/purchasing/common/PurchaseFailureDescription;

    .line 199
    iput-boolean p2, v1, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$ReconciliationRequest;->superReconcile:Z

    if-eqz v0, :cond_6d

    if-eqz p2, :cond_55

    .line 204
    iget-object p2, p0, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;->purchasing:Lcom/unity/purchasing/googleplay/IGooglePlayPurchasing;

    invoke-interface {p2}, Lcom/unity/purchasing/googleplay/IGooglePlayPurchasing;->getInventory()Lcom/unity/purchasing/googleplay/Inventory;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/unity/purchasing/googleplay/Inventory;->hasConsumablePurchaseHistory(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, v1, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$ReconciliationRequest;->hadPurchase:Z

    .line 205
    iget-object p2, p0, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;->purchasing:Lcom/unity/purchasing/googleplay/IGooglePlayPurchasing;

    invoke-interface {p2}, Lcom/unity/purchasing/googleplay/IGooglePlayPurchasing;->getInventory()Lcom/unity/purchasing/googleplay/Inventory;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/unity/purchasing/googleplay/Inventory;->getConsumableHistoryPurchase(Ljava/lang/String;)Lcom/unity/purchasing/googleplay/Purchase;

    move-result-object p2

    iput-object p2, v1, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$ReconciliationRequest;->oldPurchase:Lcom/unity/purchasing/googleplay/Purchase;

    goto :goto_6d

    .line 207
    :cond_55
    iget-object p2, p0, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;->purchasing:Lcom/unity/purchasing/googleplay/IGooglePlayPurchasing;

    invoke-interface {p2}, Lcom/unity/purchasing/googleplay/IGooglePlayPurchasing;->getInventory()Lcom/unity/purchasing/googleplay/Inventory;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/unity/purchasing/googleplay/Inventory;->hasPurchase(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, v1, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$ReconciliationRequest;->hadPurchase:Z

    .line 208
    iget-object p2, p0, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;->purchasing:Lcom/unity/purchasing/googleplay/IGooglePlayPurchasing;

    invoke-interface {p2}, Lcom/unity/purchasing/googleplay/IGooglePlayPurchasing;->getInventory()Lcom/unity/purchasing/googleplay/Inventory;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/unity/purchasing/googleplay/Inventory;->getPurchase(Ljava/lang/String;)Lcom/unity/purchasing/googleplay/Purchase;

    move-result-object p2

    iput-object p2, v1, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$ReconciliationRequest;->oldPurchase:Lcom/unity/purchasing/googleplay/Purchase;

    .line 213
    :cond_6d
    :goto_6d
    iget-object p2, p0, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;->inputFailures:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p2, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method private ingestBatchOfInputsSafely()V
    .registers 7

    .line 309
    iget-object v0, p0, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;->inputFailures:Ljava/util/concurrent/ConcurrentLinkedQueue;

    monitor-enter v0

    .line 310
    :try_start_3
    iget-object v1, p0, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;->inputFailures:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 311
    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_54

    .line 312
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$ReconciliationRequest;

    .line 313
    iget-object v3, p0, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;->failures:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :goto_1c
    if-nez v4, :cond_2f

    .line 316
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 317
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$ReconciliationRequest;

    .line 320
    invoke-virtual {v2, v4}, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$ReconciliationRequest;->equals(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_1c

    :cond_2f
    if-nez v4, :cond_9

    .line 325
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding failed purchase ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$ReconciliationRequest;->failureDescription:Lcom/unity/purchasing/common/PurchaseFailureDescription;

    iget-object v4, v4, Lcom/unity/purchasing/common/PurchaseFailureDescription;->productId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") to list being reconciled"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->logDebug(Ljava/lang/String;)V

    .line 327
    iget-object v3, p0, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;->failures:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 332
    :cond_54
    iget-object v1, p0, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;->inputFailures:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 333
    monitor-exit v0

    return-void

    :catchall_5b
    move-exception v1

    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_3 .. :try_end_5d} :catchall_5b

    throw v1

    return-void
.end method

.method private processFailures()V
    .registers 3

    const/4 v0, 0x0

    .line 382
    iput-boolean v0, p0, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;->isProcessingDone:Z

    .line 384
    iget-object v0, p0, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;->purchasing:Lcom/unity/purchasing/googleplay/IGooglePlayPurchasing;

    invoke-interface {v0}, Lcom/unity/purchasing/googleplay/IGooglePlayPurchasing;->getManager()Lcom/unity/purchasing/googleplay/IBillingServiceManager;

    move-result-object v0

    new-instance v1, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$3;

    invoke-direct {v1, p0}, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$3;-><init>(Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;)V

    invoke-interface {v0, v1}, Lcom/unity/purchasing/googleplay/IBillingServiceManager;->workWith(Lcom/unity/purchasing/googleplay/BillingServiceProcessor;)V

    return-void
.end method

.method private query(ZZ)V
    .registers 5

    const/4 v0, 0x0

    .line 344
    iput-boolean v0, p0, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;->isQueryDone:Z

    .line 345
    iput-boolean v0, p0, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;->isQueryFailed:Z

    .line 347
    iget-object v0, p0, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;->purchasing:Lcom/unity/purchasing/googleplay/IGooglePlayPurchasing;

    invoke-interface {v0}, Lcom/unity/purchasing/googleplay/IGooglePlayPurchasing;->getManager()Lcom/unity/purchasing/googleplay/IBillingServiceManager;

    move-result-object v0

    new-instance v1, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$2;-><init>(Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;ZZ)V

    invoke-interface {v0, v1}, Lcom/unity/purchasing/googleplay/IBillingServiceManager;->workWith(Lcom/unity/purchasing/googleplay/BillingServiceProcessor;)V

    return-void
.end method


# virtual methods
.method protected isReconcilingFailure(Ljava/lang/String;)Z
    .registers 4

    if-eqz p1, :cond_20

    .line 474
    iget-object v0, p0, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;->failures:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 475
    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 476
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$ReconciliationRequest;

    iget-object v1, v1, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$ReconciliationRequest;->failureDescription:Lcom/unity/purchasing/common/PurchaseFailureDescription;

    iget-object v1, v1, Lcom/unity/purchasing/common/PurchaseFailureDescription;->productId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 p1, 0x1

    return p1

    :cond_20
    const/4 p1, 0x0

    return p1
.end method

.method protected reconcileFailures()V
    .registers 3

    .line 223
    iget-object v0, p0, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$1;

    invoke-direct {v1, p0}, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$1;-><init>(Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public retryReconcileAsync(Lcom/unity/purchasing/common/PurchaseFailureDescription;Z)V
    .registers 4

    .line 124
    invoke-direct {p0, p1, p2}, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;->addFailureDescription(Lcom/unity/purchasing/common/PurchaseFailureDescription;Z)Lcom/unity/purchasing/common/PurchaseFailureDescription;

    move-result-object p1

    if-eqz p1, :cond_24

    .line 127
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Starting failure reconciliation for: ("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/unity/purchasing/common/PurchaseFailureDescription;->productId:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->logDebug(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0}, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;->reconcileFailures()V

    :cond_24
    return-void
.end method

.method public retryReconcileAsyncBatch(Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 140
    invoke-virtual {p0, p1, v0}, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;->retryReconcileAsyncBatch(Ljava/util/Set;Z)V

    return-void
.end method

.method public retryReconcileAsyncBatch(Ljava/util/Set;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 150
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_5
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 151
    new-instance v2, Lcom/unity/purchasing/common/PurchaseFailureDescription;

    sget-object v3, Lcom/unity/purchasing/common/PurchaseFailureReason;->UserCancelled:Lcom/unity/purchasing/common/PurchaseFailureReason;

    invoke-direct {v2, v1, v3}, Lcom/unity/purchasing/common/PurchaseFailureDescription;-><init>(Ljava/lang/String;Lcom/unity/purchasing/common/PurchaseFailureReason;)V

    .line 152
    invoke-direct {p0, v2, p2}, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;->addFailureDescription(Lcom/unity/purchasing/common/PurchaseFailureDescription;Z)Lcom/unity/purchasing/common/PurchaseFailureDescription;

    move-result-object v1

    if-eqz v1, :cond_5

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_21
    if-lez v0, :cond_3f

    .line 160
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Starting failure reconciliation for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " products"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->logDebug(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0}, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;->reconcileFailures()V

    :cond_3f
    return-void
.end method
