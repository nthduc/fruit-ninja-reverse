.class public abstract Lcom/google/android/gms/internal/ads/zzxy;
.super Lcom/google/android/gms/internal/ads/zzgt;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzxz;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.internal.client.IMuteThisAdListener"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgt;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static zzf(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzxz;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.google.android.gms.ads.internal.client.IMuteThisAdListener"

    .line 5
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 6
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzxz;

    if-eqz v1, :cond_11

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/ads/zzxz;

    return-object v0

    .line 8
    :cond_11
    new-instance v0, Lcom/google/android/gms/internal/ads/zzyb;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzyb;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method protected final zza(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p2, 0x1

    if-ne p1, p2, :cond_a

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzxy;->onAdMuted()V

    .line 11
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return p2

    :cond_a
    const/4 p1, 0x0

    return p1
.end method
