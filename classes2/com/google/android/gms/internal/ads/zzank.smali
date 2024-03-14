.class public abstract Lcom/google/android/gms/internal/ads/zzank;
.super Lcom/google/android/gms/internal/ads/zzgt;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzanh;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgt;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static zzad(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzanh;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener"

    .line 5
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 6
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzanh;

    if-eqz v1, :cond_11

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/ads/zzanh;

    return-object v0

    .line 8
    :cond_11
    new-instance v0, Lcom/google/android/gms/internal/ads/zzanj;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzanj;-><init>(Landroid/os/IBinder;)V

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

    packed-switch p1, :pswitch_data_e6

    const/4 p1, 0x0

    return p1

    .line 78
    :pswitch_5
    sget-object p1, Lcom/google/android/gms/internal/ads/zzva;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzgw;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzva;

    .line 79
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzank;->zze(Lcom/google/android/gms/internal/ads/zzva;)V

    goto/16 :goto_e0

    .line 75
    :pswitch_12
    sget-object p1, Lcom/google/android/gms/internal/ads/zzva;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzgw;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzva;

    .line 76
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzank;->zzc(Lcom/google/android/gms/internal/ads/zzva;)V

    goto/16 :goto_e0

    .line 71
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 73
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzank;->zzc(ILjava/lang/String;)V

    goto/16 :goto_e0

    .line 68
    :pswitch_2c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 69
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzank;->zzdo(Ljava/lang/String;)V

    goto/16 :goto_e0

    .line 66
    :pswitch_35
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzank;->onVideoPlay()V

    goto/16 :goto_e0

    .line 63
    :pswitch_3a
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzgw;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 64
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzank;->zzb(Landroid/os/Bundle;)V

    goto/16 :goto_e0

    .line 61
    :pswitch_47
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzank;->zzud()V

    goto/16 :goto_e0

    .line 58
    :pswitch_4c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 59
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzank;->zzdd(I)V

    goto/16 :goto_e0

    .line 55
    :pswitch_55
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzauw;->zzaq(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzaux;

    move-result-object p1

    .line 56
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzank;->zza(Lcom/google/android/gms/internal/ads/zzaux;)V

    goto/16 :goto_e0

    .line 53
    :pswitch_62
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzank;->onVideoPause()V

    goto/16 :goto_e0

    .line 50
    :pswitch_67
    sget-object p1, Lcom/google/android/gms/internal/ads/zzauv;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzgw;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzauv;

    .line 51
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzank;->zzb(Lcom/google/android/gms/internal/ads/zzauv;)V

    goto/16 :goto_e0

    .line 48
    :pswitch_74
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzank;->zzuc()V

    goto/16 :goto_e0

    .line 45
    :pswitch_79
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 46
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzank;->zzdn(Ljava/lang/String;)V

    goto :goto_e0

    .line 43
    :pswitch_81
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzank;->onVideoEnd()V

    goto :goto_e0

    .line 39
    :pswitch_85
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaez;->zzr(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzafa;

    move-result-object p1

    .line 40
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzank;->zza(Lcom/google/android/gms/internal/ads/zzafa;Ljava/lang/String;)V

    goto :goto_e0

    .line 35
    :pswitch_95
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 36
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 37
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzank;->onAppEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e0

    .line 33
    :pswitch_a1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzank;->onAdImpression()V

    goto :goto_e0

    .line 23
    :pswitch_a5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_ad

    const/4 p1, 0x0

    goto :goto_c1

    :cond_ad
    const-string p2, "com.google.android.gms.ads.internal.mediation.client.IMediationResponseMetadata"

    .line 26
    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 27
    instance-of p4, p2, Lcom/google/android/gms/internal/ads/zzanm;

    if-eqz p4, :cond_bb

    .line 28
    move-object p1, p2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzanm;

    goto :goto_c1

    .line 29
    :cond_bb
    new-instance p2, Lcom/google/android/gms/internal/ads/zzanl;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzanl;-><init>(Landroid/os/IBinder;)V

    move-object p1, p2

    .line 31
    :goto_c1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzank;->zza(Lcom/google/android/gms/internal/ads/zzanm;)V

    goto :goto_e0

    .line 21
    :pswitch_c5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzank;->onAdLoaded()V

    goto :goto_e0

    .line 19
    :pswitch_c9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzank;->onAdOpened()V

    goto :goto_e0

    .line 17
    :pswitch_cd
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzank;->onAdLeftApplication()V

    goto :goto_e0

    .line 14
    :pswitch_d1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 15
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzank;->onAdFailedToLoad(I)V

    goto :goto_e0

    .line 12
    :pswitch_d9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzank;->onAdClosed()V

    goto :goto_e0

    .line 10
    :pswitch_dd
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzank;->onAdClicked()V

    .line 82
    :goto_e0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_e6
    .packed-switch 0x1
        :pswitch_dd
        :pswitch_d9
        :pswitch_d1
        :pswitch_cd
        :pswitch_c9
        :pswitch_c5
        :pswitch_a5
        :pswitch_a1
        :pswitch_95
        :pswitch_85
        :pswitch_81
        :pswitch_79
        :pswitch_74
        :pswitch_67
        :pswitch_62
        :pswitch_55
        :pswitch_4c
        :pswitch_47
        :pswitch_3a
        :pswitch_35
        :pswitch_2c
        :pswitch_1f
        :pswitch_12
        :pswitch_5
    .end packed-switch
.end method
