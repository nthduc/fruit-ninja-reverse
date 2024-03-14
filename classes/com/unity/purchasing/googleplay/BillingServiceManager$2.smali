.class Lcom/unity/purchasing/googleplay/BillingServiceManager$2;
.super Ljava/lang/Object;
.source "BillingServiceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity/purchasing/googleplay/BillingServiceManager;->tryPumpCallbacks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity/purchasing/googleplay/BillingServiceManager;


# direct methods
.method constructor <init>(Lcom/unity/purchasing/googleplay/BillingServiceManager;)V
    .registers 2

    .line 161
    iput-object p1, p0, Lcom/unity/purchasing/googleplay/BillingServiceManager$2;->this$0:Lcom/unity/purchasing/googleplay/BillingServiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 164
    iget-object v0, p0, Lcom/unity/purchasing/googleplay/BillingServiceManager$2;->this$0:Lcom/unity/purchasing/googleplay/BillingServiceManager;

    # getter for: Lcom/unity/purchasing/googleplay/BillingServiceManager;->mService:Lcom/android/vending/billing/IInAppBillingService;
    invoke-static {v0}, Lcom/unity/purchasing/googleplay/BillingServiceManager;->access$300(Lcom/unity/purchasing/googleplay/BillingServiceManager;)Lcom/android/vending/billing/IInAppBillingService;

    move-result-object v0

    if-eqz v0, :cond_4a

    .line 165
    :goto_8
    iget-object v0, p0, Lcom/unity/purchasing/googleplay/BillingServiceManager$2;->this$0:Lcom/unity/purchasing/googleplay/BillingServiceManager;

    # getter for: Lcom/unity/purchasing/googleplay/BillingServiceManager;->callbacks:Ljava/util/concurrent/ConcurrentLinkedQueue;
    invoke-static {v0}, Lcom/unity/purchasing/googleplay/BillingServiceManager;->access$400(Lcom/unity/purchasing/googleplay/BillingServiceManager;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    if-lez v0, :cond_4f

    .line 166
    iget-object v0, p0, Lcom/unity/purchasing/googleplay/BillingServiceManager$2;->this$0:Lcom/unity/purchasing/googleplay/BillingServiceManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Billing Service Manager invoking callback 1 of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/unity/purchasing/googleplay/BillingServiceManager$2;->this$0:Lcom/unity/purchasing/googleplay/BillingServiceManager;

    # getter for: Lcom/unity/purchasing/googleplay/BillingServiceManager;->callbacks:Ljava/util/concurrent/ConcurrentLinkedQueue;
    invoke-static {v2}, Lcom/unity/purchasing/googleplay/BillingServiceManager;->access$400(Lcom/unity/purchasing/googleplay/BillingServiceManager;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/unity/purchasing/googleplay/BillingServiceManager;->logDebug(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/unity/purchasing/googleplay/BillingServiceManager;->access$000(Lcom/unity/purchasing/googleplay/BillingServiceManager;Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/unity/purchasing/googleplay/BillingServiceManager$2;->this$0:Lcom/unity/purchasing/googleplay/BillingServiceManager;

    # getter for: Lcom/unity/purchasing/googleplay/BillingServiceManager;->callbacks:Ljava/util/concurrent/ConcurrentLinkedQueue;
    invoke-static {v0}, Lcom/unity/purchasing/googleplay/BillingServiceManager;->access$400(Lcom/unity/purchasing/googleplay/BillingServiceManager;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity/purchasing/googleplay/BillingServiceProcessor;

    iget-object v1, p0, Lcom/unity/purchasing/googleplay/BillingServiceManager$2;->this$0:Lcom/unity/purchasing/googleplay/BillingServiceManager;

    # getter for: Lcom/unity/purchasing/googleplay/BillingServiceManager;->mService:Lcom/android/vending/billing/IInAppBillingService;
    invoke-static {v1}, Lcom/unity/purchasing/googleplay/BillingServiceManager;->access$300(Lcom/unity/purchasing/googleplay/BillingServiceManager;)Lcom/android/vending/billing/IInAppBillingService;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/unity/purchasing/googleplay/BillingServiceProcessor;->workWith(Lcom/android/vending/billing/IInAppBillingService;)V

    goto :goto_8

    .line 170
    :cond_4a
    iget-object v0, p0, Lcom/unity/purchasing/googleplay/BillingServiceManager$2;->this$0:Lcom/unity/purchasing/googleplay/BillingServiceManager;

    invoke-virtual {v0}, Lcom/unity/purchasing/googleplay/BillingServiceManager;->bindToGooglePlayService()V

    :cond_4f
    return-void
.end method
