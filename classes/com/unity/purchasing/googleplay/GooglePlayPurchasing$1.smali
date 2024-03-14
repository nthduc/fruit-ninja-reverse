.class Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$1;
.super Ljava/lang/Object;
.source "GooglePlayPurchasing.java"

# interfaces
.implements Lcom/unity/purchasing/googleplay/IabHelper$QueryInventoryFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->RestoreTransactions(Lcom/unity/purchasing/googleplay/IGooglePlayStoreCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;

.field final synthetic val$callback:Lcom/unity/purchasing/googleplay/IGooglePlayStoreCallback;


# direct methods
.method constructor <init>(Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;Lcom/unity/purchasing/googleplay/IGooglePlayStoreCallback;)V
    .registers 3

    .line 349
    iput-object p1, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$1;->this$0:Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;

    iput-object p2, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$1;->val$callback:Lcom/unity/purchasing/googleplay/IGooglePlayStoreCallback;

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

    .line 353
    invoke-virtual {p1}, Lcom/unity/purchasing/googleplay/IabResult;->isSuccess()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "RestoreInventoryFinished: %s"

    invoke-static {v1, v0}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    iget-object v0, p1, Lcom/unity/purchasing/googleplay/IabResult;->mMessage:Ljava/lang/String;

    invoke-static {v0}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->logDebug(Ljava/lang/String;)V

    .line 356
    invoke-virtual {p1}, Lcom/unity/purchasing/googleplay/IabResult;->isFailure()Z

    move-result p1

    if-eqz p1, :cond_3e

    .line 357
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to Restore inventory. UnityIAP will automatically retry in "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$1;->this$0:Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;

    # getter for: Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->offlineBackOffTime:I
    invoke-static {p2}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->access$400(Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "ms"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->log(Ljava/lang/String;)V

    .line 358
    iget-object p1, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$1;->val$callback:Lcom/unity/purchasing/googleplay/IGooglePlayStoreCallback;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/unity/purchasing/googleplay/IGooglePlayStoreCallback;->OnTransactionsRestored(Z)V

    return-void

    .line 361
    :cond_3e
    iget-object p1, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$1;->this$0:Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;

    # invokes: Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->handleInventoryUpdate(Lcom/unity/purchasing/googleplay/Inventory;)V
    invoke-static {p1, p2}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->access$500(Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;Lcom/unity/purchasing/googleplay/Inventory;)V

    .line 363
    iget-object p1, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$1;->val$callback:Lcom/unity/purchasing/googleplay/IGooglePlayStoreCallback;

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/unity/purchasing/googleplay/IGooglePlayStoreCallback;->OnTransactionsRestored(Z)V

    return-void
.end method
