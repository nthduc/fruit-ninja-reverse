.class final enum Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;
.super Ljava/lang/Enum;
.source "MediationInitializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/mediationsdk/MediationInitializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "EInitStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

.field public static final enum INITIATED:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

.field public static final enum INIT_FAILED:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

.field public static final enum INIT_IN_PROGRESS:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

.field public static final enum NOT_INIT:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 38
    new-instance v0, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    const/4 v1, 0x0

    const-string v2, "NOT_INIT"

    invoke-direct {v0, v2, v1}, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;->NOT_INIT:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    new-instance v0, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    const/4 v2, 0x1

    const-string v3, "INIT_IN_PROGRESS"

    invoke-direct {v0, v3, v2}, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;->INIT_IN_PROGRESS:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    new-instance v0, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    const/4 v3, 0x2

    const-string v4, "INIT_FAILED"

    invoke-direct {v0, v4, v3}, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;->INIT_FAILED:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    new-instance v0, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    const/4 v4, 0x3

    const-string v5, "INITIATED"

    invoke-direct {v0, v5, v4}, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;->INITIATED:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    const/4 v0, 0x4

    .line 37
    new-array v0, v0, [Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    sget-object v5, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;->NOT_INIT:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    aput-object v5, v0, v1

    sget-object v1, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;->INIT_IN_PROGRESS:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;->INIT_FAILED:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;->INITIATED:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;->$VALUES:[Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;
    .registers 2

    .line 37
    const-class v0, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    return-object p0
.end method

.method public static values()[Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;
    .registers 1

    .line 37
    sget-object v0, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;->$VALUES:[Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    invoke-virtual {v0}, [Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    return-object v0
.end method
