.class public abstract Lcom/google/android/gms/internal/ads/zzwx;
.super Lcom/google/android/gms/internal/ads/zzgt;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzwu;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.internal.client.IAdLoader"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgt;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final zza(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p4, 0x1

    if-eq p1, p4, :cond_45

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3a

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2f

    const/4 v0, 0x4

    if-eq p1, v0, :cond_24

    const/4 v0, 0x5

    if-eq p1, v0, :cond_11

    const/4 p1, 0x0

    return p1

    .line 20
    :cond_11
    sget-object p1, Lcom/google/android/gms/internal/ads/zzvg;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzgw;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzvg;

    .line 21
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzwx;->zza(Lcom/google/android/gms/internal/ads/zzvg;I)V

    .line 23
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_53

    .line 16
    :cond_24
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzwx;->zzkh()Ljava/lang/String;

    move-result-object p1

    .line 17
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 18
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_53

    .line 12
    :cond_2f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzwx;->isLoading()Z

    move-result p1

    .line 13
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 14
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzgw;->writeBoolean(Landroid/os/Parcel;Z)V

    goto :goto_53

    .line 8
    :cond_3a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzwx;->getMediationAdapterClassName()Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 10
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_53

    .line 4
    :cond_45
    sget-object p1, Lcom/google/android/gms/internal/ads/zzvg;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzgw;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzvg;

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzwx;->zzb(Lcom/google/android/gms/internal/ads/zzvg;)V

    .line 6
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_53
    return p4
.end method
