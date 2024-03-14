.class public abstract Lcom/google/android/gms/internal/ads/zzaer;
.super Lcom/google/android/gms/internal/ads/zzgt;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaes;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.internal.formats.client.INativeAppInstallAd"

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

    packed-switch p1, :pswitch_data_e0

    const/4 p1, 0x0

    return p1

    .line 72
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaer;->getMediationAdapterClassName()Ljava/lang/String;

    move-result-object p1

    .line 73
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_de

    .line 68
    :pswitch_11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaer;->zzsn()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzgw;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_de

    .line 64
    :pswitch_1d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaer;->zzsm()Lcom/google/android/gms/internal/ads/zzadw;

    move-result-object p1

    .line 65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzgw;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_de

    .line 60
    :pswitch_29
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzgw;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 61
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzaer;->reportTouchEvent(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_de

    .line 55
    :pswitch_39
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzgw;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 56
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzaer;->recordImpression(Landroid/os/Bundle;)Z

    move-result p1

    .line 57
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzgw;->writeBoolean(Landroid/os/Parcel;Z)V

    goto/16 :goto_de

    .line 51
    :pswitch_4d
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzgw;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 52
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzaer;->performClick(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_de

    .line 47
    :pswitch_5d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaer;->getVideoController()Lcom/google/android/gms/internal/ads/zzyo;

    move-result-object p1

    .line 48
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 49
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzgw;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_de

    .line 44
    :pswitch_69
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaer;->destroy()V

    .line 45
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_de

    .line 40
    :pswitch_71
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaer;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 41
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 42
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzgw;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto :goto_de

    .line 36
    :pswitch_7c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaer;->getPrice()Ljava/lang/String;

    move-result-object p1

    .line 37
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 38
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_de

    .line 32
    :pswitch_87
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaer;->getStore()Ljava/lang/String;

    move-result-object p1

    .line 33
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 34
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_de

    .line 28
    :pswitch_92
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaer;->getStarRating()D

    move-result-wide p1

    .line 29
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 30
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeDouble(D)V

    goto :goto_de

    .line 24
    :pswitch_9d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaer;->getCallToAction()Ljava/lang/String;

    move-result-object p1

    .line 25
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 26
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_de

    .line 20
    :pswitch_a8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaer;->zzsl()Lcom/google/android/gms/internal/ads/zzaee;

    move-result-object p1

    .line 21
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 22
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzgw;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto :goto_de

    .line 16
    :pswitch_b3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaer;->getBody()Ljava/lang/String;

    move-result-object p1

    .line 17
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 18
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_de

    .line 12
    :pswitch_be
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaer;->getImages()Ljava/util/List;

    move-result-object p1

    .line 13
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 14
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto :goto_de

    .line 8
    :pswitch_c9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaer;->getHeadline()Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 10
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_de

    .line 4
    :pswitch_d4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaer;->zzsk()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    .line 5
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzgw;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    :goto_de
    const/4 p1, 0x1

    return p1

    :pswitch_data_e0
    .packed-switch 0x2
        :pswitch_d4
        :pswitch_c9
        :pswitch_be
        :pswitch_b3
        :pswitch_a8
        :pswitch_9d
        :pswitch_92
        :pswitch_87
        :pswitch_7c
        :pswitch_71
        :pswitch_69
        :pswitch_5d
        :pswitch_4d
        :pswitch_39
        :pswitch_29
        :pswitch_1d
        :pswitch_11
        :pswitch_5
    .end packed-switch
.end method
