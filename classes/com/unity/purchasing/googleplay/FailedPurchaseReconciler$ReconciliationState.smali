.class final enum Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$ReconciliationState;
.super Ljava/lang/Enum;
.source "FailedPurchaseReconciler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ReconciliationState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$ReconciliationState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$ReconciliationState;

.field public static final enum StateIdle:Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$ReconciliationState;

.field public static final enum StateProcessing:Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$ReconciliationState;

.field public static final enum StateQuerying:Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$ReconciliationState;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 93
    new-instance v0, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$ReconciliationState;

    const/4 v1, 0x0

    const-string v2, "StateIdle"

    invoke-direct {v0, v2, v1}, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$ReconciliationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$ReconciliationState;->StateIdle:Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$ReconciliationState;

    .line 94
    new-instance v0, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$ReconciliationState;

    const/4 v2, 0x1

    const-string v3, "StateQuerying"

    invoke-direct {v0, v3, v2}, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$ReconciliationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$ReconciliationState;->StateQuerying:Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$ReconciliationState;

    .line 95
    new-instance v0, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$ReconciliationState;

    const/4 v3, 0x2

    const-string v4, "StateProcessing"

    invoke-direct {v0, v4, v3}, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$ReconciliationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$ReconciliationState;->StateProcessing:Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$ReconciliationState;

    const/4 v0, 0x3

    .line 92
    new-array v0, v0, [Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$ReconciliationState;

    sget-object v4, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$ReconciliationState;->StateIdle:Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$ReconciliationState;

    aput-object v4, v0, v1

    sget-object v1, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$ReconciliationState;->StateQuerying:Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$ReconciliationState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$ReconciliationState;->StateProcessing:Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$ReconciliationState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$ReconciliationState;->$VALUES:[Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$ReconciliationState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 92
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$ReconciliationState;
    .registers 2

    .line 92
    const-class v0, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$ReconciliationState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$ReconciliationState;

    return-object p0
.end method

.method public static values()[Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$ReconciliationState;
    .registers 1

    .line 92
    sget-object v0, Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$ReconciliationState;->$VALUES:[Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$ReconciliationState;

    invoke-virtual {v0}, [Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$ReconciliationState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unity/purchasing/googleplay/FailedPurchaseReconciler$ReconciliationState;

    return-object v0
.end method
