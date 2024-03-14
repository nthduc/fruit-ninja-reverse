.class Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$2;
.super Ljava/lang/Object;
.source "FailedPurchaseReconciler.java"

# interfaces
.implements Lcom/unity/purchasing/googleplay/BillingServiceProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;->query(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;

.field final synthetic val$wantRegular:Z

.field final synthetic val$wantSuper:Z


# direct methods
.method constructor <init>(Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;ZZ)V
    .registers 4

    .line 348
    iput-object p1, p0, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$2;->this$0:Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;

    iput-boolean p2, p0, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$2;->val$wantSuper:Z

    iput-boolean p3, p0, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$2;->val$wantRegular:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public workWith(Lcom/android/vending/billing/IInAppBillingService;)V
    .registers 7

    const/4 v0, 0x1

    .line 352
    :try_start_1
    iget-boolean v1, p0, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$2;->val$wantSuper:Z
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_3} :catch_78
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_3} :catch_76

    const-string v2, "inapp"

    if-eqz v1, :cond_39

    .line 353
    :try_start_7
    iget-object v1, p0, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$2;->this$0:Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;

    # getter for: Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;->purchasing:Lcom/unity/purchasing/googleplay/IGooglePlayPurchasing;
    invoke-static {v1}, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;->access$300(Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;)Lcom/unity/purchasing/googleplay/IGooglePlayPurchasing;

    move-result-object v1

    invoke-interface {v1}, Lcom/unity/purchasing/googleplay/IGooglePlayPurchasing;->getHelper()Lcom/unity/purchasing/googleplay/IabHelper;

    move-result-object v1

    iget-object v3, p0, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$2;->this$0:Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;

    # getter for: Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;->purchasing:Lcom/unity/purchasing/googleplay/IGooglePlayPurchasing;
    invoke-static {v3}, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;->access$300(Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;)Lcom/unity/purchasing/googleplay/IGooglePlayPurchasing;

    move-result-object v3

    invoke-interface {v3}, Lcom/unity/purchasing/googleplay/IGooglePlayPurchasing;->getInventory()Lcom/unity/purchasing/googleplay/Inventory;

    move-result-object v3

    invoke-virtual {v1, v3, v2, p1}, Lcom/unity/purchasing/googleplay/IabHelper;->queryPurchaseHistory(Lcom/unity/purchasing/googleplay/Inventory;Ljava/lang/String;Lcom/android/vending/billing/IInAppBillingService;)I

    move-result v1

    if-eqz v1, :cond_39

    .line 355
    iget-object v3, p0, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$2;->this$0:Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;

    iput-boolean v0, v3, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;->isQueryFailed:Z

    .line 356
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryPurchaseHistory failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->logError(Ljava/lang/String;)V

    .line 360
    :cond_39
    iget-object v1, p0, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$2;->this$0:Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;

    iget-boolean v1, v1, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;->isQueryFailed:Z

    if-nez v1, :cond_86

    iget-boolean v1, p0, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$2;->val$wantRegular:Z

    if-eqz v1, :cond_86

    .line 361
    iget-object v1, p0, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$2;->this$0:Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;

    # getter for: Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;->purchasing:Lcom/unity/purchasing/googleplay/IGooglePlayPurchasing;
    invoke-static {v1}, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;->access$300(Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;)Lcom/unity/purchasing/googleplay/IGooglePlayPurchasing;

    move-result-object v1

    invoke-interface {v1}, Lcom/unity/purchasing/googleplay/IGooglePlayPurchasing;->getHelper()Lcom/unity/purchasing/googleplay/IabHelper;

    move-result-object v1

    iget-object v3, p0, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$2;->this$0:Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;

    # getter for: Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;->purchasing:Lcom/unity/purchasing/googleplay/IGooglePlayPurchasing;
    invoke-static {v3}, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;->access$300(Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;)Lcom/unity/purchasing/googleplay/IGooglePlayPurchasing;

    move-result-object v3

    invoke-interface {v3}, Lcom/unity/purchasing/googleplay/IGooglePlayPurchasing;->getInventory()Lcom/unity/purchasing/googleplay/Inventory;

    move-result-object v3

    invoke-virtual {v1, v3, v2, p1}, Lcom/unity/purchasing/googleplay/IabHelper;->queryPurchases(Lcom/unity/purchasing/googleplay/Inventory;Ljava/lang/String;Lcom/android/vending/billing/IInAppBillingService;)I

    move-result p1

    if-eqz p1, :cond_86

    .line 363
    iget-object v1, p0, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$2;->this$0:Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;

    iput-boolean v0, v1, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;->isQueryFailed:Z

    .line 364
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryPurchases failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->logError(Ljava/lang/String;)V
    :try_end_75
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_75} :catch_78
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_75} :catch_76

    goto :goto_86

    :catch_76
    move-exception p1

    goto :goto_79

    :catch_78
    move-exception p1

    .line 368
    :goto_79
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "FailedPurchaseReconciler.query exception"

    invoke-static {v1, p1}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    iget-object p1, p0, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$2;->this$0:Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;

    iput-boolean v0, p1, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;->isQueryFailed:Z

    .line 372
    :cond_86
    :goto_86
    iget-object p1, p0, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$2;->this$0:Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;

    iput-boolean v0, p1, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;->isQueryDone:Z

    return-void
.end method
