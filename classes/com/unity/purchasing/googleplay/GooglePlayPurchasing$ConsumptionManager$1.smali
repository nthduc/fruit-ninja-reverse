.class Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$ConsumptionManager$1;
.super Ljava/lang/Object;
.source "GooglePlayPurchasing.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$ConsumptionManager;->consumePurchases()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$ConsumptionManager;


# direct methods
.method constructor <init>(Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$ConsumptionManager;)V
    .registers 2

    .line 95
    iput-object p1, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$ConsumptionManager$1;->this$1:Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$ConsumptionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 98
    :goto_0
    iget-object v0, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$ConsumptionManager$1;->this$1:Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$ConsumptionManager;

    iget-object v0, v0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$ConsumptionManager;->purchases:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    if-lez v0, :cond_68

    .line 100
    iget-object v0, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$ConsumptionManager$1;->this$1:Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$ConsumptionManager;

    iget-object v0, v0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$ConsumptionManager;->currentPurchase:Lcom/unity/purchasing/googleplay/Purchase;

    const/4 v1, 0x0

    if-nez v0, :cond_24

    .line 102
    iget-object v0, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$ConsumptionManager$1;->this$1:Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$ConsumptionManager;

    iget-object v2, v0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$ConsumptionManager;->purchases:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/unity/purchasing/googleplay/Purchase;

    iput-object v2, v0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$ConsumptionManager;->currentPurchase:Lcom/unity/purchasing/googleplay/Purchase;

    .line 103
    iget-object v0, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$ConsumptionManager$1;->this$1:Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$ConsumptionManager;

    iput-boolean v1, v0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$ConsumptionManager;->isCurrentPurchaseConsumed:Z

    .line 105
    invoke-virtual {v0}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$ConsumptionManager;->startConsumeAsync()V

    .line 109
    :cond_24
    iget-object v0, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$ConsumptionManager$1;->this$1:Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$ConsumptionManager;

    iget-boolean v0, v0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$ConsumptionManager;->isCurrentPurchaseConsumed:Z

    if-eqz v0, :cond_58

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConsumptionManager successfully consumed sku: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$ConsumptionManager$1;->this$1:Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$ConsumptionManager;

    iget-object v2, v2, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$ConsumptionManager;->currentPurchase:Lcom/unity/purchasing/googleplay/Purchase;

    invoke-virtual {v2}, Lcom/unity/purchasing/googleplay/Purchase;->getSku()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->logDebug(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$ConsumptionManager$1;->this$1:Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$ConsumptionManager;

    iget-object v0, v0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$ConsumptionManager;->purchases:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v2, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$ConsumptionManager$1;->this$1:Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$ConsumptionManager;

    iget-object v2, v2, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$ConsumptionManager;->currentPurchase:Lcom/unity/purchasing/googleplay/Purchase;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    .line 114
    iget-object v0, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$ConsumptionManager$1;->this$1:Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$ConsumptionManager;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$ConsumptionManager;->currentPurchase:Lcom/unity/purchasing/googleplay/Purchase;

    .line 115
    iput-boolean v1, v0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$ConsumptionManager;->isCurrentPurchaseConsumed:Z

    .line 120
    :cond_58
    :try_start_58
    iget-object v0, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$ConsumptionManager$1;->this$1:Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$ConsumptionManager;

    iget-object v0, v0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$ConsumptionManager;->this$0:Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;

    # getter for: Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->timekeeper:Lcom/unity/purchasing/googleplay/ITimekeeper;
    invoke-static {v0}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->access$000(Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;)Lcom/unity/purchasing/googleplay/ITimekeeper;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-interface {v0, v1, v2}, Lcom/unity/purchasing/googleplay/ITimekeeper;->sleep(J)V
    :try_end_65
    .catch Ljava/lang/InterruptedException; {:try_start_58 .. :try_end_65} :catch_66

    goto :goto_0

    :catch_66
    nop

    goto :goto_0

    :cond_68
    return-void
.end method
