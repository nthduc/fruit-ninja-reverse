.class final Lcom/google/android/gms/internal/nearby/zzcx;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/nearby/connection/Connections$StartAdvertisingResult;


# instance fields
.field private final synthetic zzbj:Lcom/google/android/gms/common/api/Status;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/nearby/zzcw;Lcom/google/android/gms/common/api/Status;)V
    .registers 3

    iput-object p2, p0, Lcom/google/android/gms/internal/nearby/zzcx;->zzbj:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLocalEndpointName()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getStatus()Lcom/google/android/gms/common/api/Status;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzcx;->zzbj:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method