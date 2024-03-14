.class public abstract Lcom/google/android/gms/internal/ads/zzsp;
.super Lcom/google/android/gms/internal/ads/zzgt;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzsq;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.internal.appopen.client.IAppOpenFullScreenContentCallback"

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

    if-eq p1, p4, :cond_1b

    const/4 v0, 0x2

    if-eq p1, v0, :cond_17

    const/4 v0, 0x3

    if-eq p1, v0, :cond_b

    const/4 p1, 0x0

    return p1

    .line 8
    :cond_b
    sget-object p1, Lcom/google/android/gms/internal/ads/zzva;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzgw;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzva;

    .line 9
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzsp;->zzb(Lcom/google/android/gms/internal/ads/zzva;)V

    goto :goto_1e

    .line 6
    :cond_17
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzsp;->onAdDismissedFullScreenContent()V

    goto :goto_1e

    .line 4
    :cond_1b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzsp;->onAdShowedFullScreenContent()V

    .line 12
    :goto_1e
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return p4
.end method
