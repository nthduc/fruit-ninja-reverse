.class public abstract Lcom/google/android/gms/internal/nearby/zzde;
.super Lcom/google/android/gms/internal/nearby/zzb;

# interfaces
.implements Lcom/google/android/gms/internal/nearby/zzdd;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.nearby.internal.connection.IAdvertisingCallback"

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

    if-eq p1, p3, :cond_14

    const/4 p3, 0x3

    if-eq p1, p3, :cond_8

    const/4 p1, 0x0

    return p1

    :cond_8
    sget-object p1, Lcom/google/android/gms/internal/nearby/zzfb;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/nearby/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/nearby/zzfb;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/nearby/zzde;->zza(Lcom/google/android/gms/internal/nearby/zzfb;)V

    goto :goto_1f

    :cond_14
    sget-object p1, Lcom/google/android/gms/internal/nearby/zzej;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/nearby/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/nearby/zzej;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/nearby/zzde;->zza(Lcom/google/android/gms/internal/nearby/zzej;)V

    :goto_1f
    const/4 p1, 0x1

    return p1
.end method
