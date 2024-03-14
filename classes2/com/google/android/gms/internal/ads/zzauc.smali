.class public abstract Lcom/google/android/gms/internal/ads/zzauc;
.super Lcom/google/android/gms/internal/ads/zzgt;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaud;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.internal.reward.client.IRewardedVideoAd"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgt;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static zzan(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzaud;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.google.android.gms.ads.internal.reward.client.IRewardedVideoAd"

    .line 5
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 6
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzaud;

    if-eqz v1, :cond_11

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/ads/zzaud;

    return-object v0

    .line 8
    :cond_11
    new-instance v0, Lcom/google/android/gms/internal/ads/zzauf;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzauf;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method protected final zza(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p4, 0x1

    if-eq p1, p4, :cond_12b

    const/4 v0, 0x2

    if-eq p1, v0, :cond_124

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-eq p1, v0, :cond_103

    const/16 v0, 0x22

    if-eq p1, v0, :cond_f8

    packed-switch p1, :pswitch_data_13a

    const/4 p1, 0x0

    return p1

    .line 100
    :pswitch_13
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzauc;->zzki()Lcom/google/android/gms/internal/ads/zzyn;

    move-result-object p1

    .line 101
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzgw;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_139

    .line 96
    :pswitch_1f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzauc;->zzra()Z

    move-result p1

    .line 97
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzgw;->writeBoolean(Landroid/os/Parcel;Z)V

    goto/16 :goto_139

    .line 88
    :pswitch_2b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 89
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzauc;->setCustomData(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_139

    .line 84
    :pswitch_37
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    .line 85
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzauc;->zzi(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    .line 86
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_139

    .line 80
    :pswitch_47
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 81
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzauc;->setAppPackageName(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_139

    .line 69
    :pswitch_53
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_5a

    goto :goto_6d

    :cond_5a
    const-string p2, "com.google.android.gms.ads.internal.reward.client.IRewardedAdSkuListener"

    .line 72
    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 73
    instance-of v0, p2, Lcom/google/android/gms/internal/ads/zzaub;

    if-eqz v0, :cond_68

    .line 74
    move-object v1, p2

    check-cast v1, Lcom/google/android/gms/internal/ads/zzaub;

    goto :goto_6d

    .line 75
    :cond_68
    new-instance v1, Lcom/google/android/gms/internal/ads/zzaua;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzaua;-><init>(Landroid/os/IBinder;)V

    .line 77
    :goto_6d
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzauc;->zza(Lcom/google/android/gms/internal/ads/zzaub;)V

    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_139

    .line 65
    :pswitch_75
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzauc;->getAdMetadata()Landroid/os/Bundle;

    move-result-object p1

    .line 66
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzgw;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto/16 :goto_139

    .line 61
    :pswitch_81
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzxi;->zzd(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzxj;

    move-result-object p1

    .line 62
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzauc;->zza(Lcom/google/android/gms/internal/ads/zzxj;)V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_139

    .line 57
    :pswitch_91
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 58
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzauc;->setUserId(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_139

    .line 53
    :pswitch_9d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzauc;->getMediationAdapterClassName()Ljava/lang/String;

    move-result-object p1

    .line 54
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_139

    .line 49
    :pswitch_a9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    .line 50
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzauc;->zzl(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_139

    .line 45
    :pswitch_b9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    .line 46
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzauc;->zzk(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    .line 47
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_139

    .line 41
    :pswitch_c9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    .line 42
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzauc;->zzj(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    .line 43
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_139

    .line 38
    :pswitch_d8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzauc;->destroy()V

    .line 39
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_139

    .line 35
    :pswitch_df
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzauc;->resume()V

    .line 36
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_139

    .line 32
    :pswitch_e6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzauc;->pause()V

    .line 33
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_139

    .line 28
    :pswitch_ed
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzauc;->isLoaded()Z

    move-result p1

    .line 29
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 30
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzgw;->writeBoolean(Landroid/os/Parcel;Z)V

    goto :goto_139

    .line 92
    :cond_f8
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzgw;->zza(Landroid/os/Parcel;)Z

    move-result p1

    .line 93
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzauc;->setImmersiveMode(Z)V

    .line 94
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_139

    .line 17
    :cond_103
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_10a

    goto :goto_11d

    :cond_10a
    const-string p2, "com.google.android.gms.ads.internal.reward.client.IRewardedVideoAdListener"

    .line 20
    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 21
    instance-of v0, p2, Lcom/google/android/gms/internal/ads/zzaug;

    if-eqz v0, :cond_118

    .line 22
    move-object v1, p2

    check-cast v1, Lcom/google/android/gms/internal/ads/zzaug;

    goto :goto_11d

    .line 23
    :cond_118
    new-instance v1, Lcom/google/android/gms/internal/ads/zzaui;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzaui;-><init>(Landroid/os/IBinder;)V

    .line 25
    :goto_11d
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzauc;->zza(Lcom/google/android/gms/internal/ads/zzaug;)V

    .line 26
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_139

    .line 14
    :cond_124
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzauc;->show()V

    .line 15
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_139

    .line 10
    :cond_12b
    sget-object p1, Lcom/google/android/gms/internal/ads/zzaum;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzgw;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzaum;

    .line 11
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzauc;->zza(Lcom/google/android/gms/internal/ads/zzaum;)V

    .line 12
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_139
    return p4

    :pswitch_data_13a
    .packed-switch 0x5
        :pswitch_ed
        :pswitch_e6
        :pswitch_df
        :pswitch_d8
        :pswitch_c9
        :pswitch_b9
        :pswitch_a9
        :pswitch_9d
        :pswitch_91
        :pswitch_81
        :pswitch_75
        :pswitch_53
        :pswitch_47
        :pswitch_37
        :pswitch_2b
        :pswitch_1f
        :pswitch_13
    .end packed-switch
.end method
