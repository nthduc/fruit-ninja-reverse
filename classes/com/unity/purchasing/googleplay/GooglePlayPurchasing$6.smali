.class Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$6;
.super Ljava/lang/Object;
.source "GooglePlayPurchasing.java"

# interfaces
.implements Lcom/unity/purchasing/googleplay/IabHelper$OnIabSetupFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->RetrieveProducts(Ljava/util/List;)V
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

    .line 1045
    iput-object p1, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$6;->this$0:Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;

    iput-object p2, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$6;->val$skus:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIabSetupFinished(Lcom/unity/purchasing/googleplay/IabResult;)V
    .registers 5

    .line 1048
    iget v0, p1, Lcom/unity/purchasing/googleplay/IabResult;->mResponse:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onIabSetupFinished: %s"

    invoke-static {v1, v0}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1050
    invoke-virtual {p1}, Lcom/unity/purchasing/googleplay/IabResult;->isFailure()Z

    move-result p1

    if-eqz p1, :cond_22

    const-string p1, "Failed to setup IAB. Notifying Unity..."

    .line 1051
    invoke-static {p1}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->log(Ljava/lang/String;)V

    .line 1052
    iget-object p1, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$6;->this$0:Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;

    # getter for: Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->unityPurchasing:Lcom/unity/purchasing/common/IStoreCallback;
    invoke-static {p1}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->access$1100(Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;)Lcom/unity/purchasing/common/IStoreCallback;

    move-result-object p1

    sget-object v0, Lcom/unity/purchasing/common/InitializationFailureReason;->PurchasingUnavailable:Lcom/unity/purchasing/common/InitializationFailureReason;

    invoke-interface {p1, v0}, Lcom/unity/purchasing/common/IStoreCallback;->OnSetupFailed(Lcom/unity/purchasing/common/InitializationFailureReason;)V

    return-void

    .line 1056
    :cond_22
    iget-object p1, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$6;->val$skus:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Requesting %s products"

    invoke-static {v0, p1}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1057
    iget-object p1, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$6;->this$0:Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;

    iget-object v0, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$6;->val$skus:Ljava/util/List;

    const-wide/16 v1, 0x0

    # invokes: Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->QueryInventory(Ljava/util/List;J)V
    invoke-static {p1, v0, v1, v2}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->access$1300(Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;Ljava/util/List;J)V

    return-void
.end method
