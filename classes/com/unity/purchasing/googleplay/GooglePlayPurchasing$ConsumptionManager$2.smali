.class Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$ConsumptionManager$2;
.super Ljava/lang/Object;
.source "GooglePlayPurchasing.java"

# interfaces
.implements Lcom/unity/purchasing/googleplay/IabHelper$OnConsumeFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$ConsumptionManager;->startConsumeAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$ConsumptionManager;

.field final synthetic val$originalLogLevel:I


# direct methods
.method constructor <init>(Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$ConsumptionManager;I)V
    .registers 3

    .line 145
    iput-object p1, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$ConsumptionManager$2;->this$1:Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$ConsumptionManager;

    iput p2, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$ConsumptionManager$2;->val$originalLogLevel:I

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

    .line 148
    iget-object v0, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$ConsumptionManager$2;->this$1:Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$ConsumptionManager;

    iget-object v0, v0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$ConsumptionManager;->this$0:Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;

    iget v1, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$ConsumptionManager$2;->val$originalLogLevel:I

    invoke-virtual {v0, v1}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->SetLogLevel(I)V

    .line 152
    invoke-virtual {p2}, Lcom/unity/purchasing/googleplay/IabResult;->getResponse()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    if-nez v0, :cond_77

    .line 157
    invoke-virtual {p2}, Lcom/unity/purchasing/googleplay/IabResult;->getResponse()I

    move-result p2

    if-eqz p2, :cond_39

    .line 158
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to consume "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/unity/purchasing/googleplay/Purchase;->getSku()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", transaction status will not be automatically handled further"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->log(Ljava/lang/String;)V

    .line 162
    :cond_39
    iget-object p2, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$ConsumptionManager$2;->this$1:Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$ConsumptionManager;

    iget-object p2, p2, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$ConsumptionManager;->this$0:Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;

    # invokes: Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->removeFromInventory(Lcom/unity/purchasing/googleplay/Purchase;)V
    invoke-static {p2, p1}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->access$100(Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;Lcom/unity/purchasing/googleplay/Purchase;)V

    .line 165
    iget-object p2, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$ConsumptionManager$2;->this$1:Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$ConsumptionManager;

    iget-object p2, p2, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$ConsumptionManager;->this$0:Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;

    # getter for: Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->inventory:Lcom/unity/purchasing/googleplay/Inventory;
    invoke-static {p2}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->access$200(Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;)Lcom/unity/purchasing/googleplay/Inventory;

    move-result-object p2

    invoke-virtual {p1}, Lcom/unity/purchasing/googleplay/Purchase;->getSku()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/unity/purchasing/googleplay/Inventory;->hasDetails(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5a

    .line 166
    iget-object p2, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$ConsumptionManager$2;->this$1:Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$ConsumptionManager;

    iget-object p2, p2, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$ConsumptionManager;->this$0:Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;

    invoke-virtual {p2, p1, v1}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->NotifyUnityOfPurchase(Lcom/unity/purchasing/googleplay/Purchase;Z)V

    goto :goto_77

    .line 168
    :cond_5a
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Warning, sku "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/unity/purchasing/googleplay/Purchase;->getSku()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " details not found. Not updating receipt with \"isOwner\":T/F "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->log(Ljava/lang/String;)V

    .line 173
    :cond_77
    :goto_77
    iget-object p1, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$ConsumptionManager$2;->this$1:Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$ConsumptionManager;

    invoke-virtual {p1, v0}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$ConsumptionManager;->finishConsumeAsync(Z)V

    return-void
.end method
