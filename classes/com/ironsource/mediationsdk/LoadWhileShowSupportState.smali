.class public final enum Lcom/ironsource/mediationsdk/LoadWhileShowSupportState;
.super Ljava/lang/Enum;
.source "LoadWhileShowSupportState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ironsource/mediationsdk/LoadWhileShowSupportState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ironsource/mediationsdk/LoadWhileShowSupportState;

.field public static final enum LOAD_WHILE_SHOW_BY_INSTANCE:Lcom/ironsource/mediationsdk/LoadWhileShowSupportState;

.field public static final enum LOAD_WHILE_SHOW_BY_NETWORK:Lcom/ironsource/mediationsdk/LoadWhileShowSupportState;

.field public static final enum NONE:Lcom/ironsource/mediationsdk/LoadWhileShowSupportState;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 11
    new-instance v0, Lcom/ironsource/mediationsdk/LoadWhileShowSupportState;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1}, Lcom/ironsource/mediationsdk/LoadWhileShowSupportState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/mediationsdk/LoadWhileShowSupportState;->NONE:Lcom/ironsource/mediationsdk/LoadWhileShowSupportState;

    .line 12
    new-instance v0, Lcom/ironsource/mediationsdk/LoadWhileShowSupportState;

    const/4 v2, 0x1

    const-string v3, "LOAD_WHILE_SHOW_BY_INSTANCE"

    invoke-direct {v0, v3, v2}, Lcom/ironsource/mediationsdk/LoadWhileShowSupportState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/mediationsdk/LoadWhileShowSupportState;->LOAD_WHILE_SHOW_BY_INSTANCE:Lcom/ironsource/mediationsdk/LoadWhileShowSupportState;

    .line 13
    new-instance v0, Lcom/ironsource/mediationsdk/LoadWhileShowSupportState;

    const/4 v3, 0x2

    const-string v4, "LOAD_WHILE_SHOW_BY_NETWORK"

    invoke-direct {v0, v4, v3}, Lcom/ironsource/mediationsdk/LoadWhileShowSupportState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/mediationsdk/LoadWhileShowSupportState;->LOAD_WHILE_SHOW_BY_NETWORK:Lcom/ironsource/mediationsdk/LoadWhileShowSupportState;

    const/4 v0, 0x3

    .line 10
    new-array v0, v0, [Lcom/ironsource/mediationsdk/LoadWhileShowSupportState;

    sget-object v4, Lcom/ironsource/mediationsdk/LoadWhileShowSupportState;->NONE:Lcom/ironsource/mediationsdk/LoadWhileShowSupportState;

    aput-object v4, v0, v1

    sget-object v1, Lcom/ironsource/mediationsdk/LoadWhileShowSupportState;->LOAD_WHILE_SHOW_BY_INSTANCE:Lcom/ironsource/mediationsdk/LoadWhileShowSupportState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ironsource/mediationsdk/LoadWhileShowSupportState;->LOAD_WHILE_SHOW_BY_NETWORK:Lcom/ironsource/mediationsdk/LoadWhileShowSupportState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/ironsource/mediationsdk/LoadWhileShowSupportState;->$VALUES:[Lcom/ironsource/mediationsdk/LoadWhileShowSupportState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ironsource/mediationsdk/LoadWhileShowSupportState;
    .registers 2

    .line 10
    const-class v0, Lcom/ironsource/mediationsdk/LoadWhileShowSupportState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ironsource/mediationsdk/LoadWhileShowSupportState;

    return-object p0
.end method

.method public static values()[Lcom/ironsource/mediationsdk/LoadWhileShowSupportState;
    .registers 1

    .line 10
    sget-object v0, Lcom/ironsource/mediationsdk/LoadWhileShowSupportState;->$VALUES:[Lcom/ironsource/mediationsdk/LoadWhileShowSupportState;

    invoke-virtual {v0}, [Lcom/ironsource/mediationsdk/LoadWhileShowSupportState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ironsource/mediationsdk/LoadWhileShowSupportState;

    return-object v0
.end method
