.class final enum Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;
.super Ljava/lang/Enum;
.source "LWSProgRvManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/mediationsdk/LWSProgRvManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "RV_MEDIATION_STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;

.field public static final enum RV_STATE_AUCTION_IN_PROGRESS:Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;

.field public static final enum RV_STATE_INITIATING:Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;

.field public static final enum RV_STATE_LOADING_SMASHES:Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;

.field public static final enum RV_STATE_NOT_LOADED:Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;

.field public static final enum RV_STATE_READY_TO_SHOW:Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 131
    new-instance v0, Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;

    const/4 v1, 0x0

    const-string v2, "RV_STATE_INITIATING"

    invoke-direct {v0, v2, v1}, Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;->RV_STATE_INITIATING:Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;

    .line 132
    new-instance v0, Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;

    const/4 v2, 0x1

    const-string v3, "RV_STATE_AUCTION_IN_PROGRESS"

    invoke-direct {v0, v3, v2}, Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;->RV_STATE_AUCTION_IN_PROGRESS:Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;

    .line 133
    new-instance v0, Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;

    const/4 v3, 0x2

    const-string v4, "RV_STATE_NOT_LOADED"

    invoke-direct {v0, v4, v3}, Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;->RV_STATE_NOT_LOADED:Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;

    .line 134
    new-instance v0, Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;

    const/4 v4, 0x3

    const-string v5, "RV_STATE_LOADING_SMASHES"

    invoke-direct {v0, v5, v4}, Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;->RV_STATE_LOADING_SMASHES:Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;

    .line 135
    new-instance v0, Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;

    const/4 v5, 0x4

    const-string v6, "RV_STATE_READY_TO_SHOW"

    invoke-direct {v0, v6, v5}, Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;->RV_STATE_READY_TO_SHOW:Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;

    const/4 v0, 0x5

    .line 130
    new-array v0, v0, [Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;

    sget-object v6, Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;->RV_STATE_INITIATING:Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;

    aput-object v6, v0, v1

    sget-object v1, Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;->RV_STATE_AUCTION_IN_PROGRESS:Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;->RV_STATE_NOT_LOADED:Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;->RV_STATE_LOADING_SMASHES:Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;->RV_STATE_READY_TO_SHOW:Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;

    aput-object v1, v0, v5

    sput-object v0, Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;->$VALUES:[Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 130
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;
    .registers 2

    .line 130
    const-class v0, Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;

    return-object p0
.end method

.method public static values()[Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;
    .registers 1

    .line 130
    sget-object v0, Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;->$VALUES:[Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;

    invoke-virtual {v0}, [Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;

    return-object v0
.end method
