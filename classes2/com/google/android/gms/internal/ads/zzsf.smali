.class public abstract Lcom/google/android/gms/internal/ads/zzsf;
.super Lcom/google/android/gms/internal/ads/zzgt;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzsg;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.internal.appopen.client.IAppOpenAd"

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

    const/4 p4, 0x2

    if-eq p1, p4, :cond_64

    const/4 p4, 0x3

    const/4 v0, 0x0

    if-eq p1, p4, :cond_43

    const/4 p4, 0x4

    if-eq p1, p4, :cond_1a

    const/4 p2, 0x5

    if-eq p1, p2, :cond_f

    const/4 p1, 0x0

    return p1

    .line 31
    :cond_f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzsf;->zzki()Lcom/google/android/gms/internal/ads/zzyn;

    move-result-object p1

    .line 32
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 33
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzgw;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto :goto_6e

    .line 19
    :cond_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    .line 20
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_29

    goto :goto_3c

    :cond_29
    const-string p4, "com.google.android.gms.ads.internal.appopen.client.IAppOpenFullScreenContentCallback"

    .line 23
    invoke-interface {p2, p4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 24
    instance-of v0, p4, Lcom/google/android/gms/internal/ads/zzsq;

    if-eqz v0, :cond_37

    .line 25
    move-object v0, p4

    check-cast v0, Lcom/google/android/gms/internal/ads/zzsq;

    goto :goto_3c

    .line 26
    :cond_37
    new-instance v0, Lcom/google/android/gms/internal/ads/zzss;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/zzss;-><init>(Landroid/os/IBinder;)V

    .line 28
    :goto_3c
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzsf;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzsq;)V

    .line 29
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_6e

    .line 8
    :cond_43
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_4a

    goto :goto_5d

    :cond_4a
    const-string p2, "com.google.android.gms.ads.internal.appopen.client.IAppOpenAdPresentationCallback"

    .line 11
    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 12
    instance-of p4, p2, Lcom/google/android/gms/internal/ads/zzsm;

    if-eqz p4, :cond_58

    .line 13
    move-object v0, p2

    check-cast v0, Lcom/google/android/gms/internal/ads/zzsm;

    goto :goto_5d

    .line 14
    :cond_58
    new-instance v0, Lcom/google/android/gms/internal/ads/zzso;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzso;-><init>(Landroid/os/IBinder;)V

    .line 16
    :goto_5d
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzsf;->zza(Lcom/google/android/gms/internal/ads/zzsm;)V

    .line 17
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_6e

    .line 4
    :cond_64
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzsf;->zzdw()Lcom/google/android/gms/internal/ads/zzxc;

    move-result-object p1

    .line 5
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzgw;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    :goto_6e
    const/4 p1, 0x1

    return p1
.end method
