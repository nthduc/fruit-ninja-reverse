.class final Lcom/google/android/gms/internal/games/zzcr;
.super Lcom/google/android/gms/internal/games/zzdb;
.source "com.google.android.gms:play-services-games@@20.0.1"


# instance fields
.field private final synthetic zzkp:Ljava/lang/String;

.field private final synthetic zzkq:Z

.field private final synthetic zzkr:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/games/zzcp;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;ZI)V
    .registers 6

    .line 1
    iput-object p3, p0, Lcom/google/android/gms/internal/games/zzcr;->zzkp:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/games/zzcr;->zzkq:Z

    iput p5, p0, Lcom/google/android/gms/internal/games/zzcr;->zzkr:I

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/google/android/gms/internal/games/zzdb;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/games/zzco;)V

    return-void
.end method


# virtual methods
.method protected final synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2
    check-cast p1, Lcom/google/android/gms/games/internal/zzf;

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/games/zzcr;->zzkp:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/games/zzcr;->zzkq:Z

    iget v2, p0, Lcom/google/android/gms/internal/games/zzcr;->zzkr:I

    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/google/android/gms/games/internal/zzf;->zza(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/String;ZI)V

    return-void
.end method
