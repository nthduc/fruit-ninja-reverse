.class final Lcom/google/android/gms/internal/games/zzai;
.super Lcom/google/android/gms/internal/games/zzan;
.source "com.google.android.gms:play-services-games@@20.0.1"


# instance fields
.field private final synthetic zzh:Ljava/lang/String;

.field private final synthetic zzi:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/games/zzah;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;I)V
    .registers 5

    .line 1
    iput-object p3, p0, Lcom/google/android/gms/internal/games/zzai;->zzh:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/gms/internal/games/zzai;->zzi:I

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/google/android/gms/internal/games/zzan;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/games/zzag;)V

    return-void
.end method


# virtual methods
.method public final synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2
    check-cast p1, Lcom/google/android/gms/games/internal/zzf;

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/games/zzai;->zzh:Ljava/lang/String;

    iget v1, p0, Lcom/google/android/gms/internal/games/zzai;->zzi:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/games/internal/zzf;->zzb(Ljava/lang/String;I)V

    return-void
.end method
