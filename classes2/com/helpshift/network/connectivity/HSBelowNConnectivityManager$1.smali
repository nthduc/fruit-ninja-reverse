.class synthetic Lcom/helpshift/network/connectivity/HSBelowNConnectivityManager$1;
.super Ljava/lang/Object;
.source "HSBelowNConnectivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpshift/network/connectivity/HSBelowNConnectivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$helpshift$network$connectivity$HSConnectivityStatus:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 34
    invoke-static {}, Lcom/helpshift/network/connectivity/HSConnectivityStatus;->values()[Lcom/helpshift/network/connectivity/HSConnectivityStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/helpshift/network/connectivity/HSBelowNConnectivityManager$1;->$SwitchMap$com$helpshift$network$connectivity$HSConnectivityStatus:[I

    :try_start_9
    sget-object v0, Lcom/helpshift/network/connectivity/HSBelowNConnectivityManager$1;->$SwitchMap$com$helpshift$network$connectivity$HSConnectivityStatus:[I

    sget-object v1, Lcom/helpshift/network/connectivity/HSConnectivityStatus;->CONNECTED:Lcom/helpshift/network/connectivity/HSConnectivityStatus;

    invoke-virtual {v1}, Lcom/helpshift/network/connectivity/HSConnectivityStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_14

    :catch_14
    :try_start_14
    sget-object v0, Lcom/helpshift/network/connectivity/HSBelowNConnectivityManager$1;->$SwitchMap$com$helpshift$network$connectivity$HSConnectivityStatus:[I

    sget-object v1, Lcom/helpshift/network/connectivity/HSConnectivityStatus;->NOT_CONNECTED:Lcom/helpshift/network/connectivity/HSConnectivityStatus;

    invoke-virtual {v1}, Lcom/helpshift/network/connectivity/HSConnectivityStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_1f

    :catch_1f
    return-void
.end method
