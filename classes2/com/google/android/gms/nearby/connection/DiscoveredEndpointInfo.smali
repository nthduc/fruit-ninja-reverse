.class public final Lcom/google/android/gms/nearby/connection/DiscoveredEndpointInfo;
.super Ljava/lang/Object;


# instance fields
.field private final zzq:Ljava/lang/String;

.field private final zzu:Ljava/lang/String;

.field private final zzv:Landroid/bluetooth/BluetoothDevice;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/nearby/connection/DiscoveredEndpointInfo;->zzu:Ljava/lang/String;

    const-string p1, "__UNRECOGNIZED_BLUETOOTH_DEVICE__"

    iput-object p1, p0, Lcom/google/android/gms/nearby/connection/DiscoveredEndpointInfo;->zzq:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/nearby/connection/DiscoveredEndpointInfo;->zzv:Landroid/bluetooth/BluetoothDevice;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/nearby/connection/DiscoveredEndpointInfo;->zzu:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/nearby/connection/DiscoveredEndpointInfo;->zzq:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/nearby/connection/DiscoveredEndpointInfo;->zzv:Landroid/bluetooth/BluetoothDevice;

    return-void
.end method


# virtual methods
.method public final getEndpointName()Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/nearby/connection/DiscoveredEndpointInfo;->zzq:Ljava/lang/String;

    return-object v0
.end method

.method public final getServiceId()Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/nearby/connection/DiscoveredEndpointInfo;->zzu:Ljava/lang/String;

    return-object v0
.end method
