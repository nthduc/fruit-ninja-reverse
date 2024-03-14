.class Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$5;
.super Ljava/lang/Object;
.source "GooglePlayPurchasing.java"

# interfaces
.implements Lcom/unity/purchasing/googleplay/IabHelper$QueryInventoryFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->QueryInventory(Ljava/util/List;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;

.field final synthetic val$skus:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;Ljava/util/List;)V
    .registers 3

    .line 869
    iput-object p1, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$5;->this$0:Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;

    iput-object p2, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$5;->val$skus:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryInventoryFinished(Lcom/unity/purchasing/googleplay/IabResult;Lcom/unity/purchasing/googleplay/Inventory;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 872
    invoke-virtual {p1}, Lcom/unity/purchasing/googleplay/IabResult;->isSuccess()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onQueryInventoryFinished: %s"

    invoke-static {v1, v0}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    iget-object v0, p1, Lcom/unity/purchasing/googleplay/IabResult;->mMessage:Ljava/lang/String;

    invoke-static {v0}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->log(Ljava/lang/String;)V

    .line 876
    invoke-virtual {p1}, Lcom/unity/purchasing/googleplay/IabResult;->isFailure()Z

    move-result v0

    if-eqz v0, :cond_86

    .line 877
    invoke-virtual {p1}, Lcom/unity/purchasing/googleplay/IabResult;->getResponse()I

    move-result p2

    const/4 v0, 0x6

    if-ne p2, v0, :cond_48

    .line 878
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Retrieved fatal API response code: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/unity/purchasing/googleplay/IabResult;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " . Initiating failed setup callback. Check your google account."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->log(Ljava/lang/String;)V

    .line 879
    iget-object p1, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$5;->this$0:Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;

    # getter for: Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->unityPurchasing:Lcom/unity/purchasing/common/IStoreCallback;
    invoke-static {p1}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->access$1100(Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;)Lcom/unity/purchasing/common/IStoreCallback;

    move-result-object p1

    sget-object p2, Lcom/unity/purchasing/common/InitializationFailureReason;->AppNotKnown:Lcom/unity/purchasing/common/InitializationFailureReason;

    invoke-interface {p1, p2}, Lcom/unity/purchasing/common/IStoreCallback;->OnSetupFailed(Lcom/unity/purchasing/common/InitializationFailureReason;)V

    goto :goto_85

    .line 881
    :cond_48
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to Query inventory. UnityIAP will automatically retry in "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$5;->this$0:Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;

    # getter for: Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->offlineBackOffTime:I
    invoke-static {p2}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->access$400(Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "ms"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->log(Ljava/lang/String;)V

    .line 883
    iget-object p1, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$5;->this$0:Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;

    iget-object p2, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$5;->val$skus:Ljava/util/List;

    # getter for: Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->offlineBackOffTime:I
    invoke-static {p1}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->access$400(Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;)I

    move-result v0

    int-to-long v0, v0

    # invokes: Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->QueryInventory(Ljava/util/List;J)V
    invoke-static {p1, p2, v0, v1}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->access$1300(Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;Ljava/util/List;J)V

    .line 884
    iget-object p1, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$5;->this$0:Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;

    const p2, 0x493e0

    # getter for: Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->offlineBackOffTime:I
    invoke-static {p1}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->access$400(Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    # setter for: Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->offlineBackOffTime:I
    invoke-static {p1, p2}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->access$402(Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;I)I

    :goto_85
    return-void

    .line 890
    :cond_86
    iget-object p1, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$5;->this$0:Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;

    # invokes: Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->handleInventoryUpdate(Lcom/unity/purchasing/googleplay/Inventory;)V
    invoke-static {p1, p2}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->access$500(Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;Lcom/unity/purchasing/googleplay/Inventory;)V

    return-void
.end method
