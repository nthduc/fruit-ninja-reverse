.class public abstract Lcom/google/android/gms/internal/ads/zzwy;
.super Lcom/google/android/gms/internal/ads/zzgt;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzwz;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.internal.client.IAdLoaderBuilder"

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

    const/4 p4, 0x0

    packed-switch p1, :pswitch_data_f6

    :pswitch_4
    const/4 p1, 0x0

    return p1

    .line 65
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzajj;->zzab(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzajk;

    move-result-object p1

    .line 66
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzwy;->zza(Lcom/google/android/gms/internal/ads/zzajk;)V

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_f3

    .line 61
    :pswitch_16
    sget-object p1, Lcom/google/android/gms/internal/ads/zzajc;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzgw;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzajc;

    .line 62
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzwy;->zza(Lcom/google/android/gms/internal/ads/zzajc;)V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_f3

    .line 57
    :pswitch_26
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzafw;->zzx(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzaft;

    move-result-object p1

    .line 58
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzwy;->zza(Lcom/google/android/gms/internal/ads/zzaft;)V

    .line 59
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_f3

    .line 53
    :pswitch_36
    sget-object p1, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzgw;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

    .line 54
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzwy;->zza(Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;)V

    .line 55
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_f3

    .line 48
    :pswitch_46
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzafr;->zzw(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzafs;

    move-result-object p1

    .line 49
    sget-object p4, Lcom/google/android/gms/internal/ads/zzvn;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, Lcom/google/android/gms/internal/ads/zzgw;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzvn;

    .line 50
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzwy;->zza(Lcom/google/android/gms/internal/ads/zzafs;Lcom/google/android/gms/internal/ads/zzvn;)V

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_f3

    .line 37
    :pswitch_5e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_65

    goto :goto_78

    :cond_65
    const-string p2, "com.google.android.gms.ads.internal.client.ICorrelationIdProvider"

    .line 40
    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 41
    instance-of p4, p2, Lcom/google/android/gms/internal/ads/zzxq;

    if-eqz p4, :cond_73

    .line 42
    move-object p4, p2

    check-cast p4, Lcom/google/android/gms/internal/ads/zzxq;

    goto :goto_78

    .line 43
    :cond_73
    new-instance p4, Lcom/google/android/gms/internal/ads/zzxt;

    invoke-direct {p4, p1}, Lcom/google/android/gms/internal/ads/zzxt;-><init>(Landroid/os/IBinder;)V

    .line 45
    :goto_78
    invoke-virtual {p0, p4}, Lcom/google/android/gms/internal/ads/zzwy;->zzb(Lcom/google/android/gms/internal/ads/zzxq;)V

    .line 46
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_f3

    .line 33
    :pswitch_80
    sget-object p1, Lcom/google/android/gms/internal/ads/zzadu;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzgw;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzadu;

    .line 34
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzwy;->zza(Lcom/google/android/gms/internal/ads/zzadu;)V

    .line 35
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_f3

    .line 27
    :pswitch_8f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 28
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Lcom/google/android/gms/internal/ads/zzafo;->zzv(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzafl;

    move-result-object p4

    .line 29
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzafj;->zzu(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzafk;

    move-result-object p2

    .line 30
    invoke-virtual {p0, p1, p4, p2}, Lcom/google/android/gms/internal/ads/zzwy;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzafl;Lcom/google/android/gms/internal/ads/zzafk;)V

    .line 31
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_f3

    .line 23
    :pswitch_aa
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzafi;->zzt(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzaff;

    move-result-object p1

    .line 24
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzwy;->zza(Lcom/google/android/gms/internal/ads/zzaff;)V

    .line 25
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_f3

    .line 19
    :pswitch_b9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzafd;->zzs(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzafe;

    move-result-object p1

    .line 20
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzwy;->zza(Lcom/google/android/gms/internal/ads/zzafe;)V

    .line 21
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_f3

    .line 8
    :pswitch_c8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_cf

    goto :goto_e2

    :cond_cf
    const-string p2, "com.google.android.gms.ads.internal.client.IAdListener"

    .line 11
    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 12
    instance-of p4, p2, Lcom/google/android/gms/internal/ads/zzwt;

    if-eqz p4, :cond_dd

    .line 13
    move-object p4, p2

    check-cast p4, Lcom/google/android/gms/internal/ads/zzwt;

    goto :goto_e2

    .line 14
    :cond_dd
    new-instance p4, Lcom/google/android/gms/internal/ads/zzwv;

    invoke-direct {p4, p1}, Lcom/google/android/gms/internal/ads/zzwv;-><init>(Landroid/os/IBinder;)V

    .line 16
    :goto_e2
    invoke-virtual {p0, p4}, Lcom/google/android/gms/internal/ads/zzwy;->zzb(Lcom/google/android/gms/internal/ads/zzwt;)V

    .line 17
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_f3

    .line 4
    :pswitch_e9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzwy;->zzqf()Lcom/google/android/gms/internal/ads/zzwu;

    move-result-object p1

    .line 5
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzgw;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    :goto_f3
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_f6
    .packed-switch 0x1
        :pswitch_e9
        :pswitch_c8
        :pswitch_b9
        :pswitch_aa
        :pswitch_8f
        :pswitch_80
        :pswitch_5e
        :pswitch_46
        :pswitch_36
        :pswitch_26
        :pswitch_4
        :pswitch_4
        :pswitch_16
        :pswitch_6
    .end packed-switch
.end method
