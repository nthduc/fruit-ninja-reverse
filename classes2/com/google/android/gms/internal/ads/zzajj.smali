.class public abstract Lcom/google/android/gms/internal/ads/zzajj;
.super Lcom/google/android/gms/internal/ads/zzgt;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzajk;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.internal.instream.client.IInstreamAdLoadCallback"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgt;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static zzab(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzajk;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.google.android.gms.ads.internal.instream.client.IInstreamAdLoadCallback"

    .line 5
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 6
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzajk;

    if-eqz v1, :cond_11

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/ads/zzajk;

    return-object v0

    .line 8
    :cond_11
    new-instance v0, Lcom/google/android/gms/internal/ads/zzajm;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzajm;-><init>(Landroid/os/IBinder;)V

    return-object v0
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

    if-eq p1, p4, :cond_1f

    const/4 v0, 0x2

    if-eq p1, v0, :cond_17

    const/4 v0, 0x3

    if-eq p1, v0, :cond_b

    const/4 p1, 0x0

    return p1

    .line 23
    :cond_b
    sget-object p1, Lcom/google/android/gms/internal/ads/zzva;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzgw;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzva;

    .line 24
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzajj;->zzd(Lcom/google/android/gms/internal/ads/zzva;)V

    goto :goto_3e

    .line 20
    :cond_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 21
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzajj;->onInstreamAdFailedToLoad(I)V

    goto :goto_3e

    .line 10
    :cond_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_27

    const/4 p1, 0x0

    goto :goto_3b

    :cond_27
    const-string p2, "com.google.android.gms.ads.internal.instream.client.IInstreamAd"

    .line 13
    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 14
    instance-of v0, p2, Lcom/google/android/gms/internal/ads/zzaje;

    if-eqz v0, :cond_35

    .line 15
    move-object p1, p2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzaje;

    goto :goto_3b

    .line 16
    :cond_35
    new-instance p2, Lcom/google/android/gms/internal/ads/zzajg;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzajg;-><init>(Landroid/os/IBinder;)V

    move-object p1, p2

    .line 18
    :goto_3b
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzajj;->zza(Lcom/google/android/gms/internal/ads/zzaje;)V

    .line 27
    :goto_3e
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return p4
.end method
