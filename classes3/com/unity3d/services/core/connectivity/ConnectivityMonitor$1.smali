.class synthetic Lcom/unity3d/services/core/connectivity/ConnectivityMonitor$1;
.super Ljava/lang/Object;
.source "ConnectivityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/services/core/connectivity/ConnectivityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$unity3d$services$core$connectivity$ConnectivityEvent:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 200
    invoke-static {}, Lcom/unity3d/services/core/connectivity/ConnectivityEvent;->values()[Lcom/unity3d/services/core/connectivity/ConnectivityEvent;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/unity3d/services/core/connectivity/ConnectivityMonitor$1;->$SwitchMap$com$unity3d$services$core$connectivity$ConnectivityEvent:[I

    :try_start_9
    sget-object v0, Lcom/unity3d/services/core/connectivity/ConnectivityMonitor$1;->$SwitchMap$com$unity3d$services$core$connectivity$ConnectivityEvent:[I

    sget-object v1, Lcom/unity3d/services/core/connectivity/ConnectivityEvent;->CONNECTED:Lcom/unity3d/services/core/connectivity/ConnectivityEvent;

    invoke-virtual {v1}, Lcom/unity3d/services/core/connectivity/ConnectivityEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_14

    :catch_14
    :try_start_14
    sget-object v0, Lcom/unity3d/services/core/connectivity/ConnectivityMonitor$1;->$SwitchMap$com$unity3d$services$core$connectivity$ConnectivityEvent:[I

    sget-object v1, Lcom/unity3d/services/core/connectivity/ConnectivityEvent;->DISCONNECTED:Lcom/unity3d/services/core/connectivity/ConnectivityEvent;

    invoke-virtual {v1}, Lcom/unity3d/services/core/connectivity/ConnectivityEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_1f

    :catch_1f
    :try_start_1f
    sget-object v0, Lcom/unity3d/services/core/connectivity/ConnectivityMonitor$1;->$SwitchMap$com$unity3d$services$core$connectivity$ConnectivityEvent:[I

    sget-object v1, Lcom/unity3d/services/core/connectivity/ConnectivityEvent;->NETWORK_CHANGE:Lcom/unity3d/services/core/connectivity/ConnectivityEvent;

    invoke-virtual {v1}, Lcom/unity3d/services/core/connectivity/ConnectivityEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_2a

    :catch_2a
    return-void
.end method
