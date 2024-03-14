.class public abstract Lcom/google/android/gms/nearby/messages/internal/zzn;
.super Lcom/google/android/gms/internal/nearby/zzb;

# interfaces
.implements Lcom/google/android/gms/nearby/messages/internal/zzm;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.nearby.messages.internal.IMessageListener"

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

    const/4 p3, 0x1

    if-eq p1, p3, :cond_21

    const/4 p4, 0x2

    if-eq p1, p4, :cond_15

    const/4 p4, 0x4

    if-eq p1, p4, :cond_b

    const/4 p1, 0x0

    return p1

    :cond_b
    sget-object p1, Lcom/google/android/gms/nearby/messages/internal/Update;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/nearby/messages/internal/zzn;->zza(Ljava/util/List;)V

    goto :goto_2c

    :cond_15
    sget-object p1, Lcom/google/android/gms/nearby/messages/internal/zzaf;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/nearby/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/nearby/messages/internal/zzaf;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/nearby/messages/internal/zzn;->zzb(Lcom/google/android/gms/nearby/messages/internal/zzaf;)V

    goto :goto_2c

    :cond_21
    sget-object p1, Lcom/google/android/gms/nearby/messages/internal/zzaf;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/nearby/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/nearby/messages/internal/zzaf;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/nearby/messages/internal/zzn;->zza(Lcom/google/android/gms/nearby/messages/internal/zzaf;)V

    :goto_2c
    return p3
.end method
