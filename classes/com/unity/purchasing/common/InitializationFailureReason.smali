.class public final enum Lcom/unity/purchasing/common/InitializationFailureReason;
.super Ljava/lang/Enum;
.source "InitializationFailureReason.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/unity/purchasing/common/InitializationFailureReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/unity/purchasing/common/InitializationFailureReason;

.field public static final enum AppNotKnown:Lcom/unity/purchasing/common/InitializationFailureReason;

.field public static final enum NoProductsAvailable:Lcom/unity/purchasing/common/InitializationFailureReason;

.field public static final enum PurchasingUnavailable:Lcom/unity/purchasing/common/InitializationFailureReason;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 7
    new-instance v0, Lcom/unity/purchasing/common/InitializationFailureReason;

    const/4 v1, 0x0

    const-string v2, "PurchasingUnavailable"

    invoke-direct {v0, v2, v1}, Lcom/unity/purchasing/common/InitializationFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity/purchasing/common/InitializationFailureReason;->PurchasingUnavailable:Lcom/unity/purchasing/common/InitializationFailureReason;

    .line 8
    new-instance v0, Lcom/unity/purchasing/common/InitializationFailureReason;

    const/4 v2, 0x1

    const-string v3, "NoProductsAvailable"

    invoke-direct {v0, v3, v2}, Lcom/unity/purchasing/common/InitializationFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity/purchasing/common/InitializationFailureReason;->NoProductsAvailable:Lcom/unity/purchasing/common/InitializationFailureReason;

    .line 9
    new-instance v0, Lcom/unity/purchasing/common/InitializationFailureReason;

    const/4 v3, 0x2

    const-string v4, "AppNotKnown"

    invoke-direct {v0, v4, v3}, Lcom/unity/purchasing/common/InitializationFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity/purchasing/common/InitializationFailureReason;->AppNotKnown:Lcom/unity/purchasing/common/InitializationFailureReason;

    const/4 v0, 0x3

    .line 6
    new-array v0, v0, [Lcom/unity/purchasing/common/InitializationFailureReason;

    sget-object v4, Lcom/unity/purchasing/common/InitializationFailureReason;->PurchasingUnavailable:Lcom/unity/purchasing/common/InitializationFailureReason;

    aput-object v4, v0, v1

    sget-object v1, Lcom/unity/purchasing/common/InitializationFailureReason;->NoProductsAvailable:Lcom/unity/purchasing/common/InitializationFailureReason;

    aput-object v1, v0, v2

    sget-object v1, Lcom/unity/purchasing/common/InitializationFailureReason;->AppNotKnown:Lcom/unity/purchasing/common/InitializationFailureReason;

    aput-object v1, v0, v3

    sput-object v0, Lcom/unity/purchasing/common/InitializationFailureReason;->$VALUES:[Lcom/unity/purchasing/common/InitializationFailureReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unity/purchasing/common/InitializationFailureReason;
    .registers 2

    .line 6
    const-class v0, Lcom/unity/purchasing/common/InitializationFailureReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/unity/purchasing/common/InitializationFailureReason;

    return-object p0
.end method

.method public static values()[Lcom/unity/purchasing/common/InitializationFailureReason;
    .registers 1

    .line 6
    sget-object v0, Lcom/unity/purchasing/common/InitializationFailureReason;->$VALUES:[Lcom/unity/purchasing/common/InitializationFailureReason;

    invoke-virtual {v0}, [Lcom/unity/purchasing/common/InitializationFailureReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unity/purchasing/common/InitializationFailureReason;

    return-object v0
.end method
