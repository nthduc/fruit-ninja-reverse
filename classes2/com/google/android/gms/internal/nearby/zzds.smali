.class public abstract Lcom/google/android/gms/internal/nearby/zzds;
.super Lcom/google/android/gms/internal/nearby/zzb;

# interfaces
.implements Lcom/google/android/gms/internal/nearby/zzdr;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.nearby.internal.connection.IDiscoveryListener"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/nearby/zzb;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p3, 0x2

    if-eq p1, p3, :cond_23

    const/4 p3, 0x3

    if-eq p1, p3, :cond_17

    const/4 p3, 0x4

    if-eq p1, p3, :cond_b

    const/4 p1, 0x0

    return p1

    :cond_b
    sget-object p1, Lcom/google/android/gms/internal/nearby/zzfd;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/nearby/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/nearby/zzfd;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/nearby/zzds;->zza(Lcom/google/android/gms/internal/nearby/zzfd;)V

    goto :goto_2e

    :cond_17
    sget-object p1, Lcom/google/android/gms/internal/nearby/zzet;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/nearby/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/nearby/zzet;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/nearby/zzds;->zza(Lcom/google/android/gms/internal/nearby/zzet;)V

    goto :goto_2e

    :cond_23
    sget-object p1, Lcom/google/android/gms/internal/nearby/zzer;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/nearby/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/nearby/zzer;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/nearby/zzds;->zza(Lcom/google/android/gms/internal/nearby/zzer;)V

    :goto_2e
    const/4 p1, 0x1

    return p1
.end method
