.class public final enum Lcom/helpshift/network/connectivity/HSConnectivityStatus;
.super Ljava/lang/Enum;
.source "HSConnectivityStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/helpshift/network/connectivity/HSConnectivityStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/helpshift/network/connectivity/HSConnectivityStatus;

.field public static final enum CONNECTED:Lcom/helpshift/network/connectivity/HSConnectivityStatus;

.field public static final enum NOT_CONNECTED:Lcom/helpshift/network/connectivity/HSConnectivityStatus;

.field public static final enum UNKNOWN:Lcom/helpshift/network/connectivity/HSConnectivityStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 7
    new-instance v0, Lcom/helpshift/network/connectivity/HSConnectivityStatus;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN"

    invoke-direct {v0, v2, v1}, Lcom/helpshift/network/connectivity/HSConnectivityStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/network/connectivity/HSConnectivityStatus;->UNKNOWN:Lcom/helpshift/network/connectivity/HSConnectivityStatus;

    .line 8
    new-instance v0, Lcom/helpshift/network/connectivity/HSConnectivityStatus;

    const/4 v2, 0x1

    const-string v3, "CONNECTED"

    invoke-direct {v0, v3, v2}, Lcom/helpshift/network/connectivity/HSConnectivityStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/network/connectivity/HSConnectivityStatus;->CONNECTED:Lcom/helpshift/network/connectivity/HSConnectivityStatus;

    .line 9
    new-instance v0, Lcom/helpshift/network/connectivity/HSConnectivityStatus;

    const/4 v3, 0x2

    const-string v4, "NOT_CONNECTED"

    invoke-direct {v0, v4, v3}, Lcom/helpshift/network/connectivity/HSConnectivityStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/network/connectivity/HSConnectivityStatus;->NOT_CONNECTED:Lcom/helpshift/network/connectivity/HSConnectivityStatus;

    const/4 v0, 0x3

    .line 6
    new-array v0, v0, [Lcom/helpshift/network/connectivity/HSConnectivityStatus;

    sget-object v4, Lcom/helpshift/network/connectivity/HSConnectivityStatus;->UNKNOWN:Lcom/helpshift/network/connectivity/HSConnectivityStatus;

    aput-object v4, v0, v1

    sget-object v1, Lcom/helpshift/network/connectivity/HSConnectivityStatus;->CONNECTED:Lcom/helpshift/network/connectivity/HSConnectivityStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/helpshift/network/connectivity/HSConnectivityStatus;->NOT_CONNECTED:Lcom/helpshift/network/connectivity/HSConnectivityStatus;

    aput-object v1, v0, v3

    sput-object v0, Lcom/helpshift/network/connectivity/HSConnectivityStatus;->$VALUES:[Lcom/helpshift/network/connectivity/HSConnectivityStatus;

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

.method public static valueOf(Ljava/lang/String;)Lcom/helpshift/network/connectivity/HSConnectivityStatus;
    .registers 2

    .line 6
    const-class v0, Lcom/helpshift/network/connectivity/HSConnectivityStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/helpshift/network/connectivity/HSConnectivityStatus;

    return-object p0
.end method

.method public static values()[Lcom/helpshift/network/connectivity/HSConnectivityStatus;
    .registers 1

    .line 6
    sget-object v0, Lcom/helpshift/network/connectivity/HSConnectivityStatus;->$VALUES:[Lcom/helpshift/network/connectivity/HSConnectivityStatus;

    invoke-virtual {v0}, [Lcom/helpshift/network/connectivity/HSConnectivityStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/helpshift/network/connectivity/HSConnectivityStatus;

    return-object v0
.end method
