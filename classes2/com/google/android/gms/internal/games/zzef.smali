.class final Lcom/google/android/gms/internal/games/zzef;
.super Lcom/google/android/gms/internal/games/zzei;
.source "com.google.android.gms:play-services-games@@20.0.1"


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/games/zzec;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .registers 3

    const/4 p1, 0x0

    .line 1
    invoke-direct {p0, p2, p1}, Lcom/google/android/gms/internal/games/zzei;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/games/zzef;)V

    return-void
.end method


# virtual methods
.method protected final synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2
    check-cast p1, Lcom/google/android/gms/games/internal/zzf;

    .line 3
    invoke-virtual {p1, p0}, Lcom/google/android/gms/games/internal/zzf;->zzc(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    return-void
.end method
