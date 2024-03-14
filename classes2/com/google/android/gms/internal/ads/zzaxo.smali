.class public final Lcom/google/android/gms/internal/ads/zzaxo;
.super Lcom/google/android/gms/internal/ads/zzgu;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaxm;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 3

    const-string v0, "com.google.android.gms.ads.internal.signals.ISignalGeneratorCreator"

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzgu;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final zze(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzanb;I)Lcom/google/android/gms/internal/ads/zzaxl;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgu;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    .line 4
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzgw;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 5
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/ads/zzgw;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 6
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x2

    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzgu;->transactAndReadException(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_1a

    const/4 p2, 0x0

    goto :goto_2e

    :cond_1a
    const-string p3, "com.google.android.gms.ads.internal.signals.ISignalGenerator"

    .line 11
    invoke-interface {p2, p3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p3

    .line 12
    instance-of v0, p3, Lcom/google/android/gms/internal/ads/zzaxl;

    if-eqz v0, :cond_28

    .line 13
    move-object p2, p3

    check-cast p2, Lcom/google/android/gms/internal/ads/zzaxl;

    goto :goto_2e

    .line 14
    :cond_28
    new-instance p3, Lcom/google/android/gms/internal/ads/zzaxn;

    invoke-direct {p3, p2}, Lcom/google/android/gms/internal/ads/zzaxn;-><init>(Landroid/os/IBinder;)V

    move-object p2, p3

    .line 16
    :goto_2e
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p2
.end method
