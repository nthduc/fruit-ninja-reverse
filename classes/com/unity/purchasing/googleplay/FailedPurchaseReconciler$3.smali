.class Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$3;
.super Ljava/lang/Object;
.source "FailedPurchaseReconciler.java"

# interfaces
.implements Lcom/unity/purchasing/googleplay/BillingServiceProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;->processFailures()V
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

    .line 384
    iput-object p1, p0, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$3;->this$0:Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public workWith(Lcom/android/vending/billing/IInAppBillingService;)V
    .registers 19

    move-object/from16 v0, p0

    .line 388
    iget-object v1, v0, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$3;->this$0:Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;

    iget-object v1, v1, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;->failures:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_c
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_163

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$ReconciliationRequest;

    .line 390
    iget-boolean v6, v4, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$ReconciliationRequest;->superReconcile:Z

    .line 393
    iget-object v7, v4, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$ReconciliationRequest;->failureDescription:Lcom/unity/purchasing/common/PurchaseFailureDescription;

    iget-object v7, v7, Lcom/unity/purchasing/common/PurchaseFailureDescription;->productId:Ljava/lang/String;

    .line 395
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "hadPurchase "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v9, v4, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$ReconciliationRequest;->hadPurchase:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->logDebug(Ljava/lang/String;)V

    .line 396
    iget-boolean v8, v4, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$ReconciliationRequest;->hadPurchase:Z

    if-eqz v8, :cond_53

    .line 397
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "hadPurchase purchaseTime "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v4, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$ReconciliationRequest;->oldPurchase:Lcom/unity/purchasing/googleplay/Purchase;

    invoke-virtual {v9}, Lcom/unity/purchasing/googleplay/Purchase;->getPurchaseTime()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->logDebug(Ljava/lang/String;)V

    :cond_53
    const/4 v8, 0x0

    if-eqz v7, :cond_92

    if-eqz v6, :cond_75

    .line 405
    iget-object v8, v0, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$3;->this$0:Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;

    # getter for: Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;->purchasing:Lcom/unity/purchasing/googleplay/IGooglePlayPurchasing;
    invoke-static {v8}, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;->access$300(Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;)Lcom/unity/purchasing/googleplay/IGooglePlayPurchasing;

    move-result-object v8

    invoke-interface {v8}, Lcom/unity/purchasing/googleplay/IGooglePlayPurchasing;->getInventory()Lcom/unity/purchasing/googleplay/Inventory;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/unity/purchasing/googleplay/Inventory;->hasConsumablePurchaseHistory(Ljava/lang/String;)Z

    move-result v8

    .line 406
    iget-object v9, v0, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$3;->this$0:Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;

    # getter for: Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;->purchasing:Lcom/unity/purchasing/googleplay/IGooglePlayPurchasing;
    invoke-static {v9}, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;->access$300(Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;)Lcom/unity/purchasing/googleplay/IGooglePlayPurchasing;

    move-result-object v9

    invoke-interface {v9}, Lcom/unity/purchasing/googleplay/IGooglePlayPurchasing;->getInventory()Lcom/unity/purchasing/googleplay/Inventory;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/unity/purchasing/googleplay/Inventory;->getConsumableHistoryPurchase(Ljava/lang/String;)Lcom/unity/purchasing/googleplay/Purchase;

    move-result-object v9

    goto :goto_94

    .line 408
    :cond_75
    iget-object v8, v0, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$3;->this$0:Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;

    # getter for: Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;->purchasing:Lcom/unity/purchasing/googleplay/IGooglePlayPurchasing;
    invoke-static {v8}, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;->access$300(Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;)Lcom/unity/purchasing/googleplay/IGooglePlayPurchasing;

    move-result-object v8

    invoke-interface {v8}, Lcom/unity/purchasing/googleplay/IGooglePlayPurchasing;->getInventory()Lcom/unity/purchasing/googleplay/Inventory;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/unity/purchasing/googleplay/Inventory;->hasPurchase(Ljava/lang/String;)Z

    move-result v8

    .line 409
    iget-object v9, v0, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$3;->this$0:Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;

    # getter for: Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;->purchasing:Lcom/unity/purchasing/googleplay/IGooglePlayPurchasing;
    invoke-static {v9}, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;->access$300(Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;)Lcom/unity/purchasing/googleplay/IGooglePlayPurchasing;

    move-result-object v9

    invoke-interface {v9}, Lcom/unity/purchasing/googleplay/IGooglePlayPurchasing;->getInventory()Lcom/unity/purchasing/googleplay/Inventory;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/unity/purchasing/googleplay/Inventory;->getPurchase(Ljava/lang/String;)Lcom/unity/purchasing/googleplay/Purchase;

    move-result-object v9

    goto :goto_94

    :cond_92
    move-object v9, v8

    const/4 v8, 0x0

    .line 413
    :goto_94
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "hasPurchase "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->logDebug(Ljava/lang/String;)V

    if-eqz v8, :cond_c7

    .line 415
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "hasPurchase purchaseTime "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/unity/purchasing/googleplay/Purchase;->getPurchaseTime()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->logDebug(Ljava/lang/String;)V

    :cond_c7
    if-eqz v7, :cond_c

    const-string v10, ""

    .line 427
    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_c

    .line 428
    iget-boolean v10, v4, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$ReconciliationRequest;->hadPurchase:Z

    if-nez v10, :cond_d9

    if-eqz v8, :cond_d9

    const/4 v10, 0x1

    goto :goto_da

    :cond_d9
    const/4 v10, 0x0

    .line 429
    :goto_da
    iget-boolean v11, v4, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$ReconciliationRequest;->hadPurchase:Z

    if-eqz v11, :cond_f2

    if-eqz v8, :cond_f2

    if-eqz v6, :cond_f0

    iget-object v11, v4, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$ReconciliationRequest;->oldPurchase:Lcom/unity/purchasing/googleplay/Purchase;

    .line 431
    invoke-virtual {v11}, Lcom/unity/purchasing/googleplay/Purchase;->getPurchaseTime()J

    move-result-wide v11

    invoke-virtual {v9}, Lcom/unity/purchasing/googleplay/Purchase;->getPurchaseTime()J

    move-result-wide v13

    cmp-long v15, v11, v13

    if-gez v15, :cond_f2

    :cond_f0
    const/4 v11, 0x1

    goto :goto_f3

    :cond_f2
    const/4 v11, 0x0

    :goto_f3
    if-eqz v6, :cond_10b

    .line 432
    iget-boolean v12, v4, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$ReconciliationRequest;->hadPurchase:Z

    if-eqz v12, :cond_10b

    if-eqz v8, :cond_10b

    iget-object v12, v4, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$ReconciliationRequest;->oldPurchase:Lcom/unity/purchasing/googleplay/Purchase;

    .line 433
    invoke-virtual {v12}, Lcom/unity/purchasing/googleplay/Purchase;->getPurchaseTime()J

    move-result-wide v12

    invoke-virtual {v9}, Lcom/unity/purchasing/googleplay/Purchase;->getPurchaseTime()J

    move-result-wide v14

    cmp-long v16, v12, v14

    if-ltz v16, :cond_10b

    const/4 v12, 0x1

    goto :goto_10c

    :cond_10b
    const/4 v12, 0x0

    .line 434
    :goto_10c
    iget-boolean v4, v4, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$ReconciliationRequest;->hadPurchase:Z

    if-nez v4, :cond_114

    if-nez v8, :cond_114

    const/4 v4, 0x1

    goto :goto_115

    :cond_114
    const/4 v4, 0x0

    :goto_115
    if-nez v4, :cond_160

    if-eqz v12, :cond_11a

    goto :goto_160

    :cond_11a
    if-nez v10, :cond_11e

    if-eqz v11, :cond_c

    .line 444
    :cond_11e
    iget-object v3, v0, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$3;->this$0:Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;

    # getter for: Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;->purchasing:Lcom/unity/purchasing/googleplay/IGooglePlayPurchasing;
    invoke-static {v3}, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;->access$300(Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;)Lcom/unity/purchasing/googleplay/IGooglePlayPurchasing;

    move-result-object v3

    invoke-interface {v3}, Lcom/unity/purchasing/googleplay/IGooglePlayPurchasing;->getInventory()Lcom/unity/purchasing/googleplay/Inventory;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/unity/purchasing/googleplay/Inventory;->getSkuDetails(Ljava/lang/String;)Lcom/unity/purchasing/googleplay/SkuDetails;

    if-eqz v6, :cond_13a

    .line 449
    iget-object v3, v0, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$3;->this$0:Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;

    # getter for: Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;->purchasing:Lcom/unity/purchasing/googleplay/IGooglePlayPurchasing;
    invoke-static {v3}, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;->access$300(Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;)Lcom/unity/purchasing/googleplay/IGooglePlayPurchasing;

    move-result-object v3

    invoke-interface {v3}, Lcom/unity/purchasing/googleplay/IGooglePlayPurchasing;->getInventory()Lcom/unity/purchasing/googleplay/Inventory;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/unity/purchasing/googleplay/Inventory;->addPurchase(Lcom/unity/purchasing/googleplay/Purchase;)V

    .line 452
    :cond_13a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reconciled that purchase has succeeded ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/unity/purchasing/googleplay/Purchase;->getSku()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->logDebug(Ljava/lang/String;)V

    .line 454
    iget-object v3, v0, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$3;->this$0:Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;

    # getter for: Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;->purchasing:Lcom/unity/purchasing/googleplay/IGooglePlayPurchasing;
    invoke-static {v3}, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;->access$300(Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;)Lcom/unity/purchasing/googleplay/IGooglePlayPurchasing;

    move-result-object v3

    invoke-interface {v3, v9, v2}, Lcom/unity/purchasing/googleplay/IGooglePlayPurchasing;->NotifyUnityOfPurchase(Lcom/unity/purchasing/googleplay/Purchase;Z)V

    :cond_160
    :goto_160
    const/4 v3, 0x1

    goto/16 :goto_c

    :cond_163
    if-nez v3, :cond_178

    .line 464
    iget-object v1, v0, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$3;->this$0:Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;

    # getter for: Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;->purchasing:Lcom/unity/purchasing/googleplay/IGooglePlayPurchasing;
    invoke-static {v1}, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;->access$300(Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;)Lcom/unity/purchasing/googleplay/IGooglePlayPurchasing;

    move-result-object v1

    iget-object v2, v0, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$3;->this$0:Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;

    # getter for: Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;->purchasing:Lcom/unity/purchasing/googleplay/IGooglePlayPurchasing;
    invoke-static {v2}, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;->access$300(Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;)Lcom/unity/purchasing/googleplay/IGooglePlayPurchasing;

    move-result-object v2

    invoke-interface {v2}, Lcom/unity/purchasing/googleplay/IGooglePlayPurchasing;->getInventory()Lcom/unity/purchasing/googleplay/Inventory;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/unity/purchasing/googleplay/IGooglePlayPurchasing;->NotifyUnityOfProducts(Lcom/unity/purchasing/googleplay/Inventory;)V

    .line 467
    :cond_178
    iget-object v1, v0, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$3;->this$0:Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;

    iput-boolean v5, v1, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;->isProcessingDone:Z

    return-void
.end method
