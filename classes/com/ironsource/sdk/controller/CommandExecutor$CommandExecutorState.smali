.class final enum Lcom/ironsource/sdk/controller/CommandExecutor$CommandExecutorState;
.super Ljava/lang/Enum;
.source "CommandExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/sdk/controller/CommandExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "CommandExecutorState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ironsource/sdk/controller/CommandExecutor$CommandExecutorState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ironsource/sdk/controller/CommandExecutor$CommandExecutorState;

.field public static final enum NOT_READY:Lcom/ironsource/sdk/controller/CommandExecutor$CommandExecutorState;

.field public static final enum READY:Lcom/ironsource/sdk/controller/CommandExecutor$CommandExecutorState;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 40
    new-instance v0, Lcom/ironsource/sdk/controller/CommandExecutor$CommandExecutorState;

    const/4 v1, 0x0

    const-string v2, "NOT_READY"

    invoke-direct {v0, v2, v1}, Lcom/ironsource/sdk/controller/CommandExecutor$CommandExecutorState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/sdk/controller/CommandExecutor$CommandExecutorState;->NOT_READY:Lcom/ironsource/sdk/controller/CommandExecutor$CommandExecutorState;

    .line 41
    new-instance v0, Lcom/ironsource/sdk/controller/CommandExecutor$CommandExecutorState;

    const/4 v2, 0x1

    const-string v3, "READY"

    invoke-direct {v0, v3, v2}, Lcom/ironsource/sdk/controller/CommandExecutor$CommandExecutorState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/sdk/controller/CommandExecutor$CommandExecutorState;->READY:Lcom/ironsource/sdk/controller/CommandExecutor$CommandExecutorState;

    const/4 v0, 0x2

    .line 39
    new-array v0, v0, [Lcom/ironsource/sdk/controller/CommandExecutor$CommandExecutorState;

    sget-object v3, Lcom/ironsource/sdk/controller/CommandExecutor$CommandExecutorState;->NOT_READY:Lcom/ironsource/sdk/controller/CommandExecutor$CommandExecutorState;

    aput-object v3, v0, v1

    sget-object v1, Lcom/ironsource/sdk/controller/CommandExecutor$CommandExecutorState;->READY:Lcom/ironsource/sdk/controller/CommandExecutor$CommandExecutorState;

    aput-object v1, v0, v2

    sput-object v0, Lcom/ironsource/sdk/controller/CommandExecutor$CommandExecutorState;->$VALUES:[Lcom/ironsource/sdk/controller/CommandExecutor$CommandExecutorState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ironsource/sdk/controller/CommandExecutor$CommandExecutorState;
    .registers 2

    .line 39
    const-class v0, Lcom/ironsource/sdk/controller/CommandExecutor$CommandExecutorState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ironsource/sdk/controller/CommandExecutor$CommandExecutorState;

    return-object p0
.end method

.method public static values()[Lcom/ironsource/sdk/controller/CommandExecutor$CommandExecutorState;
    .registers 1

    .line 39
    sget-object v0, Lcom/ironsource/sdk/controller/CommandExecutor$CommandExecutorState;->$VALUES:[Lcom/ironsource/sdk/controller/CommandExecutor$CommandExecutorState;

    invoke-virtual {v0}, [Lcom/ironsource/sdk/controller/CommandExecutor$CommandExecutorState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ironsource/sdk/controller/CommandExecutor$CommandExecutorState;

    return-object v0
.end method
