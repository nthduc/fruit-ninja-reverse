.class public final enum Lcom/unity3d/services/purchasing/core/PurchasingError;
.super Ljava/lang/Enum;
.source "PurchasingError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/unity3d/services/purchasing/core/PurchasingError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/unity3d/services/purchasing/core/PurchasingError;

.field public static final enum PURCHASING_ADAPTER_NULL:Lcom/unity3d/services/purchasing/core/PurchasingError;

.field public static final enum RETRIEVE_PRODUCTS_ERROR:Lcom/unity3d/services/purchasing/core/PurchasingError;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 4
    new-instance v0, Lcom/unity3d/services/purchasing/core/PurchasingError;

    const/4 v1, 0x0

    const-string v2, "RETRIEVE_PRODUCTS_ERROR"

    invoke-direct {v0, v2, v1}, Lcom/unity3d/services/purchasing/core/PurchasingError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/services/purchasing/core/PurchasingError;->RETRIEVE_PRODUCTS_ERROR:Lcom/unity3d/services/purchasing/core/PurchasingError;

    .line 5
    new-instance v0, Lcom/unity3d/services/purchasing/core/PurchasingError;

    const/4 v2, 0x1

    const-string v3, "PURCHASING_ADAPTER_NULL"

    invoke-direct {v0, v3, v2}, Lcom/unity3d/services/purchasing/core/PurchasingError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/services/purchasing/core/PurchasingError;->PURCHASING_ADAPTER_NULL:Lcom/unity3d/services/purchasing/core/PurchasingError;

    const/4 v0, 0x2

    .line 3
    new-array v0, v0, [Lcom/unity3d/services/purchasing/core/PurchasingError;

    sget-object v3, Lcom/unity3d/services/purchasing/core/PurchasingError;->RETRIEVE_PRODUCTS_ERROR:Lcom/unity3d/services/purchasing/core/PurchasingError;

    aput-object v3, v0, v1

    sget-object v1, Lcom/unity3d/services/purchasing/core/PurchasingError;->PURCHASING_ADAPTER_NULL:Lcom/unity3d/services/purchasing/core/PurchasingError;

    aput-object v1, v0, v2

    sput-object v0, Lcom/unity3d/services/purchasing/core/PurchasingError;->$VALUES:[Lcom/unity3d/services/purchasing/core/PurchasingError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unity3d/services/purchasing/core/PurchasingError;
    .registers 2

    .line 3
    const-class v0, Lcom/unity3d/services/purchasing/core/PurchasingError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/unity3d/services/purchasing/core/PurchasingError;

    return-object p0
.end method

.method public static values()[Lcom/unity3d/services/purchasing/core/PurchasingError;
    .registers 1

    .line 3
    sget-object v0, Lcom/unity3d/services/purchasing/core/PurchasingError;->$VALUES:[Lcom/unity3d/services/purchasing/core/PurchasingError;

    invoke-virtual {v0}, [Lcom/unity3d/services/purchasing/core/PurchasingError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unity3d/services/purchasing/core/PurchasingError;

    return-object v0
.end method
