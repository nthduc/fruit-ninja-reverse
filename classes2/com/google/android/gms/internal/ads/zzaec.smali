.class public abstract Lcom/google/android/gms/internal/ads/zzaec;
.super Lcom/google/android/gms/internal/ads/zzgt;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzadz;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.internal.formats.client.IMediaContent"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgt;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static zzn(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzadz;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.google.android.gms.ads.internal.formats.client.IMediaContent"

    .line 5
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 6
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzadz;

    if-eqz v1, :cond_11

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/ads/zzadz;

    return-object v0

    .line 8
    :cond_11
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaeb;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzaeb;-><init>(Landroid/os/IBinder;)V

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

    packed-switch p1, :pswitch_data_7a

    const/4 p1, 0x0

    return p1

    .line 38
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_d

    const/4 p1, 0x0

    goto :goto_21

    :cond_d
    const-string p2, "com.google.android.gms.ads.internal.formats.client.IOnMediaContentChangedListener"

    .line 41
    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 42
    instance-of p4, p2, Lcom/google/android/gms/internal/ads/zzafq;

    if-eqz p4, :cond_1b

    .line 43
    move-object p1, p2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzafq;

    goto :goto_21

    .line 44
    :cond_1b
    new-instance p2, Lcom/google/android/gms/internal/ads/zzafp;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzafp;-><init>(Landroid/os/IBinder;)V

    move-object p1, p2

    .line 46
    :goto_21
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzaec;->zza(Lcom/google/android/gms/internal/ads/zzafq;)V

    .line 47
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_78

    .line 34
    :pswitch_28
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaec;->hasVideoContent()Z

    move-result p1

    .line 35
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 36
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzgw;->writeBoolean(Landroid/os/Parcel;Z)V

    goto :goto_78

    .line 30
    :pswitch_33
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaec;->getVideoController()Lcom/google/android/gms/internal/ads/zzyo;

    move-result-object p1

    .line 31
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 32
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzgw;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto :goto_78

    .line 26
    :pswitch_3e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaec;->getCurrentTime()F

    move-result p1

    .line 27
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 28
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeFloat(F)V

    goto :goto_78

    .line 22
    :pswitch_49
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaec;->getDuration()F

    move-result p1

    .line 23
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 24
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeFloat(F)V

    goto :goto_78

    .line 18
    :pswitch_54
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaec;->zzsj()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    .line 19
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 20
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzgw;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto :goto_78

    .line 14
    :pswitch_5f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    .line 15
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzaec;->zzo(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    .line 16
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_78

    .line 10
    :pswitch_6e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaec;->getAspectRatio()F

    move-result p1

    .line 11
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 12
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeFloat(F)V

    :goto_78
    const/4 p1, 0x1

    return p1

    :pswitch_data_7a
    .packed-switch 0x2
        :pswitch_6e
        :pswitch_5f
        :pswitch_54
        :pswitch_49
        :pswitch_3e
        :pswitch_33
        :pswitch_28
        :pswitch_5
    .end packed-switch
.end method
