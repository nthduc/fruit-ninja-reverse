.class public abstract Lcom/google/android/gms/internal/nearby/zzdk;
.super Lcom/google/android/gms/internal/nearby/zzb;

# interfaces
.implements Lcom/google/android/gms/internal/nearby/zzdj;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.nearby.internal.connection.IConnectionLifecycleListener"

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

    if-eq p1, p3, :cond_32

    const/4 p3, 0x3

    if-eq p1, p3, :cond_26

    const/4 p3, 0x4

    if-eq p1, p3, :cond_1a

    const/4 p3, 0x5

    if-eq p1, p3, :cond_e

    const/4 p1, 0x0

    return p1

    :cond_e
    sget-object p1, Lcom/google/android/gms/internal/nearby/zzef;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/nearby/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/nearby/zzef;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/nearby/zzdk;->zza(Lcom/google/android/gms/internal/nearby/zzef;)V

    goto :goto_3d

    :cond_1a
    sget-object p1, Lcom/google/android/gms/internal/nearby/zzep;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/nearby/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/nearby/zzep;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/nearby/zzdk;->zza(Lcom/google/android/gms/internal/nearby/zzep;)V

    goto :goto_3d

    :cond_26
    sget-object p1, Lcom/google/android/gms/internal/nearby/zzen;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/nearby/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/nearby/zzen;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/nearby/zzdk;->zza(Lcom/google/android/gms/internal/nearby/zzen;)V

    goto :goto_3d

    :cond_32
    sget-object p1, Lcom/google/android/gms/internal/nearby/zzeh;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/nearby/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/nearby/zzeh;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/nearby/zzdk;->zza(Lcom/google/android/gms/internal/nearby/zzeh;)V

    :goto_3d
    const/4 p1, 0x1

    return p1
.end method
