.class public final Lcom/google/android/gms/internal/nearby/zzdo;
.super Lcom/google/android/gms/internal/nearby/zza;

# interfaces
.implements Lcom/google/android/gms/internal/nearby/zzdm;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 3

    const-string v0, "com.google.android.gms.nearby.internal.connection.IConnectionResponseListener"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/nearby/zza;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/nearby/zzel;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/nearby/zza;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/nearby/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/nearby/zza;->transactOneway(ILandroid/os/Parcel;)V

    return-void
.end method
