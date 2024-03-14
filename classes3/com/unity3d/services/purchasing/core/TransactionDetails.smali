.class public Lcom/unity3d/services/purchasing/core/TransactionDetails;
.super Ljava/lang/Object;
.source "TransactionDetails.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/services/purchasing/core/TransactionDetails$Builder;
    }
.end annotation


# instance fields
.field private currency:Ljava/lang/String;

.field private extras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private price:Ljava/math/BigDecimal;

.field private productId:Ljava/lang/String;

.field private receipt:Ljava/lang/String;

.field private transactionId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/unity3d/services/purchasing/core/TransactionDetails$Builder;)V
    .registers 3

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    # getter for: Lcom/unity3d/services/purchasing/core/TransactionDetails$Builder;->productId:Ljava/lang/String;
    invoke-static {p1}, Lcom/unity3d/services/purchasing/core/TransactionDetails$Builder;->access$000(Lcom/unity3d/services/purchasing/core/TransactionDetails$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/services/purchasing/core/TransactionDetails;->productId:Ljava/lang/String;

    .line 18
    # getter for: Lcom/unity3d/services/purchasing/core/TransactionDetails$Builder;->transactionId:Ljava/lang/String;
    invoke-static {p1}, Lcom/unity3d/services/purchasing/core/TransactionDetails$Builder;->access$100(Lcom/unity3d/services/purchasing/core/TransactionDetails$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/services/purchasing/core/TransactionDetails;->transactionId:Ljava/lang/String;

    .line 19
    # getter for: Lcom/unity3d/services/purchasing/core/TransactionDetails$Builder;->receipt:Ljava/lang/String;
    invoke-static {p1}, Lcom/unity3d/services/purchasing/core/TransactionDetails$Builder;->access$200(Lcom/unity3d/services/purchasing/core/TransactionDetails$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/services/purchasing/core/TransactionDetails;->receipt:Ljava/lang/String;

    .line 20
    # getter for: Lcom/unity3d/services/purchasing/core/TransactionDetails$Builder;->extras:Ljava/util/Map;
    invoke-static {p1}, Lcom/unity3d/services/purchasing/core/TransactionDetails$Builder;->access$300(Lcom/unity3d/services/purchasing/core/TransactionDetails$Builder;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/services/purchasing/core/TransactionDetails;->extras:Ljava/util/Map;

    .line 21
    # getter for: Lcom/unity3d/services/purchasing/core/TransactionDetails$Builder;->price:Ljava/math/BigDecimal;
    invoke-static {p1}, Lcom/unity3d/services/purchasing/core/TransactionDetails$Builder;->access$400(Lcom/unity3d/services/purchasing/core/TransactionDetails$Builder;)Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/services/purchasing/core/TransactionDetails;->price:Ljava/math/BigDecimal;

    .line 22
    # getter for: Lcom/unity3d/services/purchasing/core/TransactionDetails$Builder;->currency:Ljava/lang/String;
    invoke-static {p1}, Lcom/unity3d/services/purchasing/core/TransactionDetails$Builder;->access$500(Lcom/unity3d/services/purchasing/core/TransactionDetails$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/unity3d/services/purchasing/core/TransactionDetails;->currency:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/unity3d/services/purchasing/core/TransactionDetails$Builder;Lcom/unity3d/services/purchasing/core/TransactionDetails$1;)V
    .registers 3

    .line 7
    invoke-direct {p0, p1}, Lcom/unity3d/services/purchasing/core/TransactionDetails;-><init>(Lcom/unity3d/services/purchasing/core/TransactionDetails$Builder;)V

    return-void
.end method

.method public static newBuilder()Lcom/unity3d/services/purchasing/core/TransactionDetails$Builder;
    .registers 2

    .line 50
    new-instance v0, Lcom/unity3d/services/purchasing/core/TransactionDetails$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/unity3d/services/purchasing/core/TransactionDetails$Builder;-><init>(Lcom/unity3d/services/purchasing/core/TransactionDetails$1;)V

    return-object v0
.end method


# virtual methods
.method public getCurrency()Ljava/lang/String;
    .registers 2

    .line 42
    iget-object v0, p0, Lcom/unity3d/services/purchasing/core/TransactionDetails;->currency:Ljava/lang/String;

    return-object v0
.end method

.method public getExtras()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/unity3d/services/purchasing/core/TransactionDetails;->extras:Ljava/util/Map;

    return-object v0
.end method

.method public getPrice()Ljava/math/BigDecimal;
    .registers 2

    .line 38
    iget-object v0, p0, Lcom/unity3d/services/purchasing/core/TransactionDetails;->price:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getProductId()Ljava/lang/String;
    .registers 2

    .line 26
    iget-object v0, p0, Lcom/unity3d/services/purchasing/core/TransactionDetails;->productId:Ljava/lang/String;

    return-object v0
.end method

.method public getReceipt()Ljava/lang/String;
    .registers 2

    .line 34
    iget-object v0, p0, Lcom/unity3d/services/purchasing/core/TransactionDetails;->receipt:Ljava/lang/String;

    return-object v0
.end method

.method public getTransactionId()Ljava/lang/String;
    .registers 2

    .line 30
    iget-object v0, p0, Lcom/unity3d/services/purchasing/core/TransactionDetails;->transactionId:Ljava/lang/String;

    return-object v0
.end method
