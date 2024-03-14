.class Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$8;
.super Ljava/lang/Object;
.source "GooglePlayPurchasing.java"

# interfaces
.implements Lcom/unity/purchasing/googleplay/IabHelper$OnConsumeFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->finishTransactionInternal(Ljava/lang/String;)V
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

    .line 1156
    iput-object p1, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$8;->this$0:Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsumeFinished(Lcom/unity/purchasing/googleplay/Purchase;Lcom/unity/purchasing/googleplay/IabResult;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConsumeFinished: isSuccess="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/unity/purchasing/googleplay/IabResult;->isSuccess()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " responseCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1161
    invoke-virtual {p2}, Lcom/unity/purchasing/googleplay/IabResult;->getResponse()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1160
    invoke-static {v0}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->logDebug(Ljava/lang/String;)V

    .line 1162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConsumeFinished: message "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcom/unity/purchasing/googleplay/IabResult;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->logDebug(Ljava/lang/String;)V

    .line 1168
    invoke-virtual {p2}, Lcom/unity/purchasing/googleplay/IabResult;->getResponse()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_4c

    const/4 v0, 0x1

    goto :goto_4d

    :cond_4c
    const/4 v0, 0x0

    :goto_4d
    if-eqz v0, :cond_57

    .line 1172
    iget-object p2, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$8;->this$0:Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;

    iget-object p2, p2, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->consumptionManager:Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$ConsumptionManager;

    invoke-virtual {p2, p1}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$ConsumptionManager;->retryConsumeAsync(Lcom/unity/purchasing/googleplay/Purchase;)V

    goto :goto_9a

    .line 1176
    :cond_57
    invoke-virtual {p2}, Lcom/unity/purchasing/googleplay/IabResult;->getResponse()I

    move-result p2

    if-eqz p2, :cond_62

    const-string p2, "Unrecoverable consumption failure, transaction status will not be automatically handled further"

    .line 1177
    invoke-static {p2}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->logError(Ljava/lang/String;)V

    .line 1181
    :cond_62
    iget-object p2, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$8;->this$0:Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;

    # invokes: Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->removeFromInventory(Lcom/unity/purchasing/googleplay/Purchase;)V
    invoke-static {p2, p1}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->access$100(Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;Lcom/unity/purchasing/googleplay/Purchase;)V

    .line 1184
    iget-object p2, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$8;->this$0:Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;

    # getter for: Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->inventory:Lcom/unity/purchasing/googleplay/Inventory;
    invoke-static {p2}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->access$200(Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;)Lcom/unity/purchasing/googleplay/Inventory;

    move-result-object p2

    invoke-virtual {p1}, Lcom/unity/purchasing/googleplay/Purchase;->getSku()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/unity/purchasing/googleplay/Inventory;->hasDetails(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_7d

    .line 1185
    iget-object p2, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$8;->this$0:Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;

    invoke-virtual {p2, p1, v1}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->NotifyUnityOfPurchase(Lcom/unity/purchasing/googleplay/Purchase;Z)V

    goto :goto_9a

    .line 1187
    :cond_7d
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Warning, sku "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/unity/purchasing/googleplay/Purchase;->getSku()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " details not found. Not updating receipt with \"isOwner\":<boolean> "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->log(Ljava/lang/String;)V

    :goto_9a
    return-void
.end method
