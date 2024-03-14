.class Lcom/unity/purchasing/googleplay/IabHelper$4;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Lcom/unity/purchasing/googleplay/BillingServiceProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity/purchasing/googleplay/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lcom/unity/purchasing/googleplay/IabHelper$QueryInventoryFinishedListener;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity/purchasing/googleplay/IabHelper;

.field final synthetic val$delay:J

.field final synthetic val$listener:Lcom/unity/purchasing/googleplay/IabHelper$QueryInventoryFinishedListener;

.field final synthetic val$moreSkus:Ljava/util/List;

.field final synthetic val$querySkuDetails:Z


# direct methods
.method constructor <init>(Lcom/unity/purchasing/googleplay/IabHelper;JZLjava/util/List;Lcom/unity/purchasing/googleplay/IabHelper$QueryInventoryFinishedListener;)V
    .registers 7

    .line 864
    iput-object p1, p0, Lcom/unity/purchasing/googleplay/IabHelper$4;->this$0:Lcom/unity/purchasing/googleplay/IabHelper;

    iput-wide p2, p0, Lcom/unity/purchasing/googleplay/IabHelper$4;->val$delay:J

    iput-boolean p4, p0, Lcom/unity/purchasing/googleplay/IabHelper$4;->val$querySkuDetails:Z

    iput-object p5, p0, Lcom/unity/purchasing/googleplay/IabHelper$4;->val$moreSkus:Ljava/util/List;

    iput-object p6, p0, Lcom/unity/purchasing/googleplay/IabHelper$4;->val$listener:Lcom/unity/purchasing/googleplay/IabHelper$QueryInventoryFinishedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public workWith(Lcom/android/vending/billing/IInAppBillingService;)V
    .registers 7

    .line 869
    :try_start_0
    iget-wide v0, p0, Lcom/unity/purchasing/googleplay/IabHelper$4;->val$delay:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_5} :catch_5

    .line 872
    :catch_5
    new-instance v0, Lcom/unity/purchasing/googleplay/IabResult;

    const/4 v1, 0x0

    const-string v2, "Inventory refresh successful."

    invoke-direct {v0, v1, v2}, Lcom/unity/purchasing/googleplay/IabResult;-><init>(ILjava/lang/String;)V

    const/4 v1, 0x0

    .line 875
    :try_start_e
    iget-object v2, p0, Lcom/unity/purchasing/googleplay/IabHelper$4;->this$0:Lcom/unity/purchasing/googleplay/IabHelper;

    iget-boolean v3, p0, Lcom/unity/purchasing/googleplay/IabHelper$4;->val$querySkuDetails:Z

    iget-object v4, p0, Lcom/unity/purchasing/googleplay/IabHelper$4;->val$moreSkus:Ljava/util/List;

    invoke-virtual {v2, v3, v4, p1}, Lcom/unity/purchasing/googleplay/IabHelper;->queryInventory(ZLjava/util/List;Lcom/android/vending/billing/IInAppBillingService;)Lcom/unity/purchasing/googleplay/Inventory;

    move-result-object v1
    :try_end_18
    .catch Lcom/unity/purchasing/googleplay/IabException; {:try_start_e .. :try_end_18} :catch_19

    goto :goto_1e

    :catch_19
    move-exception p1

    .line 878
    invoke-virtual {p1}, Lcom/unity/purchasing/googleplay/IabException;->getResult()Lcom/unity/purchasing/googleplay/IabResult;

    move-result-object v0

    .line 883
    :goto_1e
    iget-object p1, p0, Lcom/unity/purchasing/googleplay/IabHelper$4;->this$0:Lcom/unity/purchasing/googleplay/IabHelper;

    iget-boolean p1, p1, Lcom/unity/purchasing/googleplay/IabHelper;->mDisposed:Z

    if-nez p1, :cond_30

    iget-object p1, p0, Lcom/unity/purchasing/googleplay/IabHelper$4;->val$listener:Lcom/unity/purchasing/googleplay/IabHelper$QueryInventoryFinishedListener;

    if-eqz p1, :cond_30

    .line 885
    :try_start_28
    invoke-interface {p1, v0, v1}, Lcom/unity/purchasing/googleplay/IabHelper$QueryInventoryFinishedListener;->onQueryInventoryFinished(Lcom/unity/purchasing/googleplay/IabResult;Lcom/unity/purchasing/googleplay/Inventory;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2b} :catch_2c

    goto :goto_30

    :catch_2c
    move-exception p1

    .line 887
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_30
    :goto_30
    return-void
.end method
