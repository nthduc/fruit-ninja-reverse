.class public abstract Lcom/google/android/gms/internal/ads/zzaez;
.super Lcom/google/android/gms/internal/ads/zzgt;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzafa;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.internal.formats.client.INativeCustomTemplateAd"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgt;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static zzr(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzafa;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.google.android.gms.ads.internal.formats.client.INativeCustomTemplateAd"

    .line 5
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 6
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzafa;

    if-eqz v1, :cond_11

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/ads/zzafa;

    return-object v0

    .line 8
    :cond_11
    new-instance v0, Lcom/google/android/gms/internal/ads/zzafc;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzafc;-><init>(Landroid/os/IBinder;)V

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

    packed-switch p1, :pswitch_data_b8

    const/4 p1, 0x0

    return p1

    .line 67
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaez;->zzss()V

    .line 68
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_b6

    .line 63
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    .line 64
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzaez;->zzq(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    .line 65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_b6

    .line 59
    :pswitch_1d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaez;->zzsr()Z

    move-result p1

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzgw;->writeBoolean(Landroid/os/Parcel;Z)V

    goto/16 :goto_b6

    .line 55
    :pswitch_29
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaez;->zzsq()Z

    move-result p1

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzgw;->writeBoolean(Landroid/os/Parcel;Z)V

    goto/16 :goto_b6

    .line 51
    :pswitch_35
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaez;->zzsk()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    .line 52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzgw;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_b6

    .line 46
    :pswitch_41
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    .line 47
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzaez;->zzp(Lcom/google/android/gms/dynamic/IObjectWrapper;)Z

    move-result p1

    .line 48
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 49
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzgw;->writeBoolean(Landroid/os/Parcel;Z)V

    goto :goto_b6

    .line 42
    :pswitch_54
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaez;->zzsp()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    .line 43
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 44
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzgw;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto :goto_b6

    .line 39
    :pswitch_5f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaez;->destroy()V

    .line 40
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_b6

    .line 35
    :pswitch_66
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaez;->getVideoController()Lcom/google/android/gms/internal/ads/zzyo;

    move-result-object p1

    .line 36
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 37
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzgw;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto :goto_b6

    .line 32
    :pswitch_71
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaez;->recordImpression()V

    .line 33
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_b6

    .line 28
    :pswitch_78
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 29
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzaez;->performClick(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_b6

    .line 24
    :pswitch_83
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaez;->getCustomTemplateId()Ljava/lang/String;

    move-result-object p1

    .line 25
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 26
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_b6

    .line 20
    :pswitch_8e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaez;->getAvailableAssetNames()Ljava/util/List;

    move-result-object p1

    .line 21
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 22
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto :goto_b6

    .line 15
    :pswitch_99
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 16
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzaez;->zzcy(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaee;

    move-result-object p1

    .line 17
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 18
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzgw;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto :goto_b6

    .line 10
    :pswitch_a8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzaez;->zzcx(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 13
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_b6
    const/4 p1, 0x1

    return p1

    :pswitch_data_b8
    .packed-switch 0x1
        :pswitch_a8
        :pswitch_99
        :pswitch_8e
        :pswitch_83
        :pswitch_78
        :pswitch_71
        :pswitch_66
        :pswitch_5f
        :pswitch_54
        :pswitch_41
        :pswitch_35
        :pswitch_29
        :pswitch_1d
        :pswitch_d
        :pswitch_5
    .end packed-switch
.end method
