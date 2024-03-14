.class public final enum Lcom/helpshift/common/domain/PollingInterval;
.super Ljava/lang/Enum;
.source "PollingInterval.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/helpshift/common/domain/PollingInterval;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/helpshift/common/domain/PollingInterval;

.field public static final enum AGGRESSIVE:Lcom/helpshift/common/domain/PollingInterval;

.field public static final enum CONSERVATIVE:Lcom/helpshift/common/domain/PollingInterval;

.field public static final enum PASSIVE:Lcom/helpshift/common/domain/PollingInterval;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 7
    new-instance v0, Lcom/helpshift/common/domain/PollingInterval;

    const/4 v1, 0x0

    const-string v2, "AGGRESSIVE"

    invoke-direct {v0, v2, v1}, Lcom/helpshift/common/domain/PollingInterval;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/common/domain/PollingInterval;->AGGRESSIVE:Lcom/helpshift/common/domain/PollingInterval;

    .line 8
    new-instance v0, Lcom/helpshift/common/domain/PollingInterval;

    const/4 v2, 0x1

    const-string v3, "CONSERVATIVE"

    invoke-direct {v0, v3, v2}, Lcom/helpshift/common/domain/PollingInterval;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/common/domain/PollingInterval;->CONSERVATIVE:Lcom/helpshift/common/domain/PollingInterval;

    .line 9
    new-instance v0, Lcom/helpshift/common/domain/PollingInterval;

    const/4 v3, 0x2

    const-string v4, "PASSIVE"

    invoke-direct {v0, v4, v3}, Lcom/helpshift/common/domain/PollingInterval;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/common/domain/PollingInterval;->PASSIVE:Lcom/helpshift/common/domain/PollingInterval;

    const/4 v0, 0x3

    .line 6
    new-array v0, v0, [Lcom/helpshift/common/domain/PollingInterval;

    sget-object v4, Lcom/helpshift/common/domain/PollingInterval;->AGGRESSIVE:Lcom/helpshift/common/domain/PollingInterval;

    aput-object v4, v0, v1

    sget-object v1, Lcom/helpshift/common/domain/PollingInterval;->CONSERVATIVE:Lcom/helpshift/common/domain/PollingInterval;

    aput-object v1, v0, v2

    sget-object v1, Lcom/helpshift/common/domain/PollingInterval;->PASSIVE:Lcom/helpshift/common/domain/PollingInterval;

    aput-object v1, v0, v3

    sput-object v0, Lcom/helpshift/common/domain/PollingInterval;->$VALUES:[Lcom/helpshift/common/domain/PollingInterval;

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

.method public static valueOf(Ljava/lang/String;)Lcom/helpshift/common/domain/PollingInterval;
    .registers 2

    .line 6
    const-class v0, Lcom/helpshift/common/domain/PollingInterval;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/helpshift/common/domain/PollingInterval;

    return-object p0
.end method

.method public static values()[Lcom/helpshift/common/domain/PollingInterval;
    .registers 1

    .line 6
    sget-object v0, Lcom/helpshift/common/domain/PollingInterval;->$VALUES:[Lcom/helpshift/common/domain/PollingInterval;

    invoke-virtual {v0}, [Lcom/helpshift/common/domain/PollingInterval;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/helpshift/common/domain/PollingInterval;

    return-object v0
.end method
