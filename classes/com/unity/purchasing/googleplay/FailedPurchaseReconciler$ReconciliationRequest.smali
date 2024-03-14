.class Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$ReconciliationRequest;
.super Ljava/lang/Object;
.source "FailedPurchaseReconciler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReconciliationRequest"
.end annotation


# instance fields
.field public failureDescription:Lcom/unity/purchasing/common/PurchaseFailureDescription;

.field hadPurchase:Z

.field oldPurchase:Lcom/unity/purchasing/googleplay/Purchase;

.field superReconcile:Z

.field final synthetic this$0:Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;


# direct methods
.method constructor <init>(Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;)V
    .registers 2

    .line 45
    iput-object p1, p0, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$ReconciliationRequest;->this$0:Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_26

    .line 57
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_26

    .line 59
    :cond_12
    check-cast p1, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$ReconciliationRequest;

    .line 61
    iget-object v2, p0, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$ReconciliationRequest;->failureDescription:Lcom/unity/purchasing/common/PurchaseFailureDescription;

    if-eqz v2, :cond_1f

    iget-object p1, p1, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$ReconciliationRequest;->failureDescription:Lcom/unity/purchasing/common/PurchaseFailureDescription;

    invoke-virtual {v2, p1}, Lcom/unity/purchasing/common/PurchaseFailureDescription;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_25

    :cond_1f
    iget-object p1, p1, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$ReconciliationRequest;->failureDescription:Lcom/unity/purchasing/common/PurchaseFailureDescription;

    if-nez p1, :cond_24

    goto :goto_25

    :cond_24
    const/4 v0, 0x0

    :goto_25
    return v0

    :cond_26
    :goto_26
    return v1
.end method

.method public hashCode()I
    .registers 2

    .line 66
    iget-object v0, p0, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$ReconciliationRequest;->failureDescription:Lcom/unity/purchasing/common/PurchaseFailureDescription;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReconciliationRequest{failureDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$ReconciliationRequest;->failureDescription:Lcom/unity/purchasing/common/PurchaseFailureDescription;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", superReconcile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$ReconciliationRequest;->superReconcile:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", hadPurchase="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$ReconciliationRequest;->hadPurchase:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", oldPurchase="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$ReconciliationRequest;->oldPurchase:Lcom/unity/purchasing/googleplay/Purchase;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
