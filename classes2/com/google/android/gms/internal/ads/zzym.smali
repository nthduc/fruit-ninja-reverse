.class public abstract Lcom/google/android/gms/internal/ads/zzym;
.super Lcom/google/android/gms/internal/ads/zzgt;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzyn;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.internal.client.IResponseInfo"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgt;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static zzj(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzyn;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.google.android.gms.ads.internal.client.IResponseInfo"

    .line 5
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 6
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzyn;

    if-eqz v1, :cond_11

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/ads/zzyn;

    return-object v0

    .line 8
    :cond_11
    new-instance v0, Lcom/google/android/gms/internal/ads/zzyp;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzyp;-><init>(Landroid/os/IBinder;)V

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

    if-eq p1, p2, :cond_21

    const/4 p4, 0x2

    if-eq p1, p4, :cond_16

    const/4 p4, 0x3

    if-eq p1, p4, :cond_b

    const/4 p1, 0x0

    return p1

    .line 18
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzym;->getAdapterResponses()Ljava/util/List;

    move-result-object p1

    .line 19
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 20
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_2b

    .line 14
    :cond_16
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzym;->getResponseId()Ljava/lang/String;

    move-result-object p1

    .line 15
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 16
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_2b

    .line 10
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzym;->getMediationAdapterClassName()Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 12
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_2b
    return p2
.end method
