.class public abstract Lcom/google/android/gms/internal/ads/zzagc;
.super Lcom/google/android/gms/internal/ads/zzgt;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzafz;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.internal.formats.client.IUnconfirmedClickListener"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgt;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final zza(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p4, 0x1

    if-eq p1, p4, :cond_c

    const/4 p2, 0x2

    if-eq p1, p2, :cond_8

    const/4 p1, 0x0

    return p1

    .line 7
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzagc;->onUnconfirmedClickCancelled()V

    goto :goto_13

    .line 4
    :cond_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzagc;->onUnconfirmedClickReceived(Ljava/lang/String;)V

    .line 10
    :goto_13
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return p4
.end method
