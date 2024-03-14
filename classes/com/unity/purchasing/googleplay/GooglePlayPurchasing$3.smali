.class Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$3;
.super Ljava/lang/Object;
.source "GooglePlayPurchasing.java"

# interfaces
.implements Lcom/unity/purchasing/googleplay/IabHelper$OnIabPurchaseFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;


# direct methods
.method constructor <init>(Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;)V
    .registers 2

    .line 565
    iput-object p1, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$3;->this$0:Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIabPurchaseFinished(Lcom/unity/purchasing/googleplay/IabResult;Lcom/unity/purchasing/googleplay/Purchase;)V
    .registers 11

    .line 574
    iget-object v0, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$3;->this$0:Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;

    # getter for: Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->purchaseInProgress:Z
    invoke-static {v0}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->access$700(Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 589
    :cond_9
    invoke-virtual {p1}, Lcom/unity/purchasing/googleplay/IabResult;->isSuccess()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onIabPurchaseFinished: %s"

    invoke-static {v1, v0}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    iget-object v0, p1, Lcom/unity/purchasing/googleplay/IabResult;->mMessage:Ljava/lang/String;

    invoke-static {v0}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->log(Ljava/lang/String;)V

    .line 591
    iget-object v0, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$3;->this$0:Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;

    const/4 v1, 0x0

    # setter for: Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->purchaseInProgress:Z
    invoke-static {v0, v1}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->access$702(Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;Z)Z

    .line 593
    invoke-virtual {p1}, Lcom/unity/purchasing/googleplay/IabResult;->isSuccess()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_34

    const-string p1, "Product purchased successfully!"

    .line 594
    invoke-static {p1}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->log(Ljava/lang/String;)V

    .line 595
    iget-object p1, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$3;->this$0:Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;

    invoke-virtual {p1, p2, v2}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->NotifyUnityOfPurchase(Lcom/unity/purchasing/googleplay/Purchase;Z)V

    goto/16 :goto_101

    .line 599
    :cond_34
    invoke-virtual {p1}, Lcom/unity/purchasing/googleplay/IabResult;->getResponse()I

    move-result p2

    .line 600
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "Purchase response code:%s"

    invoke-static {v3, v0}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    sget-object v0, Lcom/unity/purchasing/common/PurchaseFailureReason;->Unknown:Lcom/unity/purchasing/common/PurchaseFailureReason;

    .line 602
    iget-object v3, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$3;->this$0:Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;

    # getter for: Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->suspectFailedConsumableSkus:Ljava/util/HashSet;
    invoke-static {v3}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->access$900(Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;)Ljava/util/HashSet;

    move-result-object v3

    iget-object v4, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$3;->this$0:Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;

    # getter for: Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->productUnderPurchase:Lcom/unity/purchasing/common/ProductDefinition;
    invoke-static {v4}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->access$800(Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;)Lcom/unity/purchasing/common/ProductDefinition;

    move-result-object v4

    iget-object v4, v4, Lcom/unity/purchasing/common/ProductDefinition;->storeSpecificId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/16 v3, -0x3ed

    if-eq p2, v3, :cond_78

    const/4 v3, 0x7

    if-eq p2, v3, :cond_6d

    if-eq p2, v2, :cond_78

    const/4 v3, 0x2

    if-eq p2, v3, :cond_6a

    const/4 v3, 0x3

    if-eq p2, v3, :cond_6a

    const/4 v3, 0x4

    if-eq p2, v3, :cond_67

    goto :goto_7a

    .line 610
    :cond_67
    sget-object v0, Lcom/unity/purchasing/common/PurchaseFailureReason;->ItemUnavailable:Lcom/unity/purchasing/common/PurchaseFailureReason;

    goto :goto_7a

    .line 614
    :cond_6a
    sget-object v0, Lcom/unity/purchasing/common/PurchaseFailureReason;->BillingUnavailable:Lcom/unity/purchasing/common/PurchaseFailureReason;

    goto :goto_7a

    .line 617
    :cond_6d
    iget-object v3, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$3;->this$0:Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;

    iget-object v3, v3, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->features:Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$Features;

    iget-boolean v3, v3, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$Features;->supportsPurchaseFailureReasonDuplicateTransaction:Z

    if-eqz v3, :cond_7a

    .line 618
    sget-object v0, Lcom/unity/purchasing/common/PurchaseFailureReason;->DuplicateTransaction:Lcom/unity/purchasing/common/PurchaseFailureReason;

    goto :goto_7a

    .line 607
    :cond_78
    sget-object v0, Lcom/unity/purchasing/common/PurchaseFailureReason;->UserCancelled:Lcom/unity/purchasing/common/PurchaseFailureReason;

    .line 623
    :cond_7a
    :goto_7a
    new-instance v3, Lcom/unity/purchasing/common/PurchaseFailureDescription;

    iget-object v4, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$3;->this$0:Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;

    # getter for: Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->productUnderPurchase:Lcom/unity/purchasing/common/ProductDefinition;
    invoke-static {v4}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->access$800(Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;)Lcom/unity/purchasing/common/ProductDefinition;

    move-result-object v4

    iget-object v4, v4, Lcom/unity/purchasing/common/ProductDefinition;->storeSpecificId:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GOOGLEPLAY_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Lcom/unity/purchasing/googleplay/IabResult;->mMessage:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/unity/purchasing/googleplay/IabHelper;->billingResponseCodeNames:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v3, v4, v0, v5, v6}, Lcom/unity/purchasing/common/PurchaseFailureDescription;-><init>(Ljava/lang/String;Lcom/unity/purchasing/common/PurchaseFailureReason;Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    invoke-virtual {p1}, Lcom/unity/purchasing/googleplay/IabResult;->getResponse()I

    move-result p1

    const/16 v4, -0x3ea

    if-ne p1, v4, :cond_b6

    const-string p1, "Received bad response, polling for successful purchases to investigate failure more deeply"

    .line 628
    invoke-static {p1}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->log(Ljava/lang/String;)V

    :goto_b3
    const/4 p1, 0x1

    :goto_b4
    const/4 v2, 0x0

    goto :goto_d6

    .line 635
    :cond_b6
    sget-object p1, Lcom/unity/purchasing/common/PurchaseFailureReason;->UserCancelled:Lcom/unity/purchasing/common/PurchaseFailureReason;

    if-ne v0, p1, :cond_c1

    const-string p1, "Received user cancelled response, polling deeply for successful purchases to investigate failure more deeply"

    .line 636
    invoke-static {p1}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->log(Ljava/lang/String;)V

    :goto_bf
    const/4 p1, 0x1

    goto :goto_d6

    :cond_c1
    const/4 p1, 0x6

    if-ne p2, p1, :cond_ca

    const-string p1, "Received general error response, polling deeply for successful purchases to investigate failure more deeply"

    .line 640
    invoke-static {p1}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->log(Ljava/lang/String;)V

    goto :goto_bf

    .line 643
    :cond_ca
    sget-object p1, Lcom/unity/purchasing/common/PurchaseFailureReason;->DuplicateTransaction:Lcom/unity/purchasing/common/PurchaseFailureReason;

    if-ne v0, p1, :cond_d4

    const-string p1, "Received duplicate transaction response, polling for successful purchases to investigate failure more deeply"

    .line 644
    invoke-static {p1}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->log(Ljava/lang/String;)V

    goto :goto_b3

    :cond_d4
    const/4 p1, 0x0

    goto :goto_b4

    :goto_d6
    if-eqz v2, :cond_e6

    .line 662
    iget-object p2, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$3;->this$0:Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;

    # getter for: Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->aggressivelyRecoverLostPurchases:Z
    invoke-static {p2}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->access$1000(Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;)Z

    move-result p2

    if-nez p2, :cond_e6

    const-string p2, "Reducing depth of failure investigation. aggressivelyRecoverLostPurchases is false."

    .line 663
    invoke-static {p2}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->log(Ljava/lang/String;)V

    goto :goto_e7

    :cond_e6
    move v1, v2

    .line 668
    :goto_e7
    iget-object p2, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$3;->this$0:Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;

    # getter for: Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->unityPurchasing:Lcom/unity/purchasing/common/IStoreCallback;
    invoke-static {p2}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->access$1100(Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;)Lcom/unity/purchasing/common/IStoreCallback;

    move-result-object p2

    invoke-interface {p2, v3}, Lcom/unity/purchasing/common/IStoreCallback;->OnPurchaseFailed(Lcom/unity/purchasing/common/PurchaseFailureDescription;)V

    if-nez p1, :cond_fa

    .line 673
    iget-object p1, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$3;->this$0:Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;

    iget-object p2, v3, Lcom/unity/purchasing/common/PurchaseFailureDescription;->productId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->untrackPurchase(Ljava/lang/String;)V

    goto :goto_101

    .line 676
    :cond_fa
    iget-object p1, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$3;->this$0:Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;

    iget-object p1, p1, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->failedPurchaseReconciler:Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;

    invoke-virtual {p1, v3, v1}, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;->retryReconcileAsync(Lcom/unity/purchasing/common/PurchaseFailureDescription;Z)V

    :goto_101
    return-void
.end method
