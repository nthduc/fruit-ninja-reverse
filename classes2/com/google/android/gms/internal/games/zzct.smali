.class final Lcom/google/android/gms/internal/games/zzct;
.super Lcom/google/android/gms/internal/games/zzcx;
.source "com.google.android.gms:play-services-games@@20.0.1"


# instance fields
.field private final synthetic zzkv:Lcom/google/android/gms/games/snapshot/SnapshotMetadata;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/games/zzcp;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/snapshot/SnapshotMetadata;)V
    .registers 4

    .line 1
    iput-object p3, p0, Lcom/google/android/gms/internal/games/zzct;->zzkv:Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/google/android/gms/internal/games/zzcx;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/games/zzco;)V

    return-void
.end method


# virtual methods
.method protected final synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2
    check-cast p1, Lcom/google/android/gms/games/internal/zzf;

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/games/zzct;->zzkv:Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    invoke-interface {v0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getSnapshotId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/games/internal/zzf;->zzh(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/String;)V

    return-void
.end method
