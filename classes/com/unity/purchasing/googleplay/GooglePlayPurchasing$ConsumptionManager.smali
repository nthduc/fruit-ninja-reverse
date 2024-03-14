.class public Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$ConsumptionManager;
.super Ljava/lang/Object;
.source "GooglePlayPurchasing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ConsumptionManager"
.end annotation


# instance fields
.field protected currentPurchase:Lcom/unity/purchasing/googleplay/Purchase;

.field protected executor:Ljava/util/concurrent/ExecutorService;

.field protected isCurrentPurchaseConsumed:Z

.field protected final purchases:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/unity/purchasing/googleplay/Purchase;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;


# direct methods
.method protected constructor <init>(Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;)V
    .registers 2

    .line 70
    iput-object p1, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$ConsumptionManager;->this$0:Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$ConsumptionManager;->purchases:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 76
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$ConsumptionManager;->executor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method protected consumePurchases()V
    .registers 3

    .line 95
    iget-object v0, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$ConsumptionManager;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$ConsumptionManager$1;

    invoke-direct {v1, p0}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$ConsumptionManager$1;-><init>(Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$ConsumptionManager;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected finishConsumeAsync(Z)V
    .registers 2

    if-eqz p1, :cond_6

    const/4 p1, 0x0

    .line 186
    iput-object p1, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$ConsumptionManager;->currentPurchase:Lcom/unity/purchasing/googleplay/Purchase;

    goto :goto_12

    .line 188
    :cond_6
    iget-boolean p1, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$ConsumptionManager;->isCurrentPurchaseConsumed:Z

    if-eqz p1, :cond_f

    const-string p1, "Error: ConsumptionManager overwriting non-null donePurchase"

    .line 189
    invoke-static {p1}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->logError(Ljava/lang/String;)V

    :cond_f
    const/4 p1, 0x1

    .line 192
    iput-boolean p1, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$ConsumptionManager;->isCurrentPurchaseConsumed:Z

    :goto_12
    return-void
.end method

.method protected isConsumingSku(Ljava/lang/String;)Z
    .registers 4

    if-eqz p1, :cond_20

    .line 219
    iget-object v0, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$ConsumptionManager;->purchases:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 220
    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 221
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unity/purchasing/googleplay/Purchase;

    invoke-virtual {v1}, Lcom/unity/purchasing/googleplay/Purchase;->getSku()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 p1, 0x1

    return p1

    :cond_20
    const/4 p1, 0x0

    return p1
.end method

.method public retryConsumeAsync(Lcom/unity/purchasing/googleplay/Purchase;)V
    .registers 4

    .line 201
    invoke-virtual {p1}, Lcom/unity/purchasing/googleplay/Purchase;->getSku()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$ConsumptionManager;->isConsumingSku(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring redundant consumption-retry request for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/unity/purchasing/googleplay/Purchase;->getSku()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->logDebug(Ljava/lang/String;)V

    return-void

    .line 208
    :cond_23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting consumption-retry loop thread to complete "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/unity/purchasing/googleplay/Purchase;->getSku()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->logDebug(Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$ConsumptionManager;->purchases:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 214
    invoke-virtual {p0}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$ConsumptionManager;->consumePurchases()V

    return-void
.end method

.method protected startConsumeAsync()V
    .registers 5

    .line 136
    iget-object v0, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$ConsumptionManager;->currentPurchase:Lcom/unity/purchasing/googleplay/Purchase;

    if-nez v0, :cond_a

    const-string v0, "Error: ConsumptionManager currentPurchase must not be null"

    .line 137
    invoke-static {v0}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->logError(Ljava/lang/String;)V

    return-void

    .line 142
    :cond_a
    sget-boolean v0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->logInfoDebugEnabled:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 143
    iget-object v2, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$ConsumptionManager;->this$0:Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;

    invoke-virtual {v2, v1}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->SetLogLevel(I)V

    .line 145
    iget-object v1, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$ConsumptionManager;->this$0:Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;

    # getter for: Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->helper:Lcom/unity/purchasing/googleplay/IabHelper;
    invoke-static {v1}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->access$300(Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;)Lcom/unity/purchasing/googleplay/IabHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$ConsumptionManager;->currentPurchase:Lcom/unity/purchasing/googleplay/Purchase;

    new-instance v3, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$ConsumptionManager$2;

    invoke-direct {v3, p0, v0}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$ConsumptionManager$2;-><init>(Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$ConsumptionManager;I)V

    const/4 v0, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lcom/unity/purchasing/googleplay/IabHelper;->consumeAsync(Lcom/unity/purchasing/googleplay/Purchase;Lcom/unity/purchasing/googleplay/IabHelper$OnConsumeFinishedListener;Z)V

    return-void
.end method
