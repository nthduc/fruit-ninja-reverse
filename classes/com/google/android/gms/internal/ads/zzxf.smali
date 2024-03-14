.class public abstract Lcom/google/android/gms/internal/ads/zzxf;
.super Lcom/google/android/gms/internal/ads/zzgt;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzxc;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.internal.client.IAdManager"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgt;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static zzc(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzxc;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.google.android.gms.ads.internal.client.IAdManager"

    .line 5
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 6
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzxc;

    if-eqz v1, :cond_11

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/ads/zzxc;

    return-object v0

    .line 8
    :cond_11
    new-instance v0, Lcom/google/android/gms/internal/ads/zzxe;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzxe;-><init>(Landroid/os/IBinder;)V

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

    const/4 p4, 0x0

    packed-switch p1, :pswitch_data_264

    :pswitch_4
    const/4 p1, 0x0

    return p1

    .line 189
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_d

    goto :goto_20

    :cond_d
    const-string p2, "com.google.android.gms.ads.internal.client.IOnPaidEventListener"

    .line 192
    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 193
    instance-of p4, p2, Lcom/google/android/gms/internal/ads/zzyi;

    if-eqz p4, :cond_1b

    .line 194
    move-object p4, p2

    check-cast p4, Lcom/google/android/gms/internal/ads/zzyi;

    goto :goto_20

    .line 195
    :cond_1b
    new-instance p4, Lcom/google/android/gms/internal/ads/zzyk;

    invoke-direct {p4, p1}, Lcom/google/android/gms/internal/ads/zzyk;-><init>(Landroid/os/IBinder;)V

    .line 197
    :goto_20
    invoke-virtual {p0, p4}, Lcom/google/android/gms/internal/ads/zzxf;->zza(Lcom/google/android/gms/internal/ads/zzyi;)V

    .line 198
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_261

    .line 185
    :pswitch_28
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzxf;->zzki()Lcom/google/android/gms/internal/ads/zzyn;

    move-result-object p1

    .line 186
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzgw;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_261

    .line 181
    :pswitch_34
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzsk;->zzb(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzsh;

    move-result-object p1

    .line 182
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzxf;->zza(Lcom/google/android/gms/internal/ads/zzsh;)V

    .line 183
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_261

    .line 177
    :pswitch_44
    sget-object p1, Lcom/google/android/gms/internal/ads/zzvs;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzgw;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzvs;

    .line 178
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzxf;->zza(Lcom/google/android/gms/internal/ads/zzvs;)V

    .line 179
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_261

    .line 173
    :pswitch_54
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 174
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzxf;->zzbp(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_261

    .line 169
    :pswitch_60
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzxf;->getAdMetadata()Landroid/os/Bundle;

    move-result-object p1

    .line 170
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzgw;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto/16 :goto_261

    .line 158
    :pswitch_6c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_73

    goto :goto_86

    :cond_73
    const-string p2, "com.google.android.gms.ads.internal.client.IAdMetadataListener"

    .line 161
    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 162
    instance-of p4, p2, Lcom/google/android/gms/internal/ads/zzxj;

    if-eqz p4, :cond_81

    .line 163
    move-object p4, p2

    check-cast p4, Lcom/google/android/gms/internal/ads/zzxj;

    goto :goto_86

    .line 164
    :cond_81
    new-instance p4, Lcom/google/android/gms/internal/ads/zzxl;

    invoke-direct {p4, p1}, Lcom/google/android/gms/internal/ads/zzxl;-><init>(Landroid/os/IBinder;)V

    .line 166
    :goto_86
    invoke-virtual {p0, p4}, Lcom/google/android/gms/internal/ads/zzxf;->zza(Lcom/google/android/gms/internal/ads/zzxj;)V

    .line 167
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_261

    .line 154
    :pswitch_8e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzxf;->zzkh()Ljava/lang/String;

    move-result-object p1

    .line 155
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_261

    .line 150
    :pswitch_9a
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzgw;->zza(Landroid/os/Parcel;)Z

    move-result p1

    .line 151
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzxf;->setImmersiveMode(Z)V

    .line 152
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_261

    .line 146
    :pswitch_a6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzxf;->zzkk()Lcom/google/android/gms/internal/ads/zzwt;

    move-result-object p1

    .line 147
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzgw;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_261

    .line 142
    :pswitch_b2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzxf;->zzkj()Lcom/google/android/gms/internal/ads/zzxk;

    move-result-object p1

    .line 143
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzgw;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_261

    .line 138
    :pswitch_be
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzxf;->getAdUnitId()Ljava/lang/String;

    move-result-object p1

    .line 139
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_261

    .line 134
    :pswitch_ca
    sget-object p1, Lcom/google/android/gms/internal/ads/zzyu;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzgw;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzyu;

    .line 135
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzxf;->zza(Lcom/google/android/gms/internal/ads/zzyu;)V

    .line 136
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_261

    .line 130
    :pswitch_da
    sget-object p1, Lcom/google/android/gms/internal/ads/zzaak;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzgw;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzaak;

    .line 131
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzxf;->zza(Lcom/google/android/gms/internal/ads/zzaak;)V

    .line 132
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_261

    .line 126
    :pswitch_ea
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzxf;->getVideoController()Lcom/google/android/gms/internal/ads/zzyo;

    move-result-object p1

    .line 127
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzgw;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_261

    .line 122
    :pswitch_f6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 123
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzxf;->setUserId(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_261

    .line 118
    :pswitch_102
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzauj;->zzao(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzaug;

    move-result-object p1

    .line 119
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzxf;->zza(Lcom/google/android/gms/internal/ads/zzaug;)V

    .line 120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_261

    .line 114
    :pswitch_112
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzxf;->isLoading()Z

    move-result p1

    .line 115
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzgw;->writeBoolean(Landroid/os/Parcel;Z)V

    goto/16 :goto_261

    .line 110
    :pswitch_11e
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzgw;->zza(Landroid/os/Parcel;)Z

    move-result p1

    .line 111
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzxf;->setManualImpressionsEnabled(Z)V

    .line 112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_261

    .line 99
    :pswitch_12a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_131

    goto :goto_144

    :cond_131
    const-string p2, "com.google.android.gms.ads.internal.client.ICorrelationIdProvider"

    .line 102
    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 103
    instance-of p4, p2, Lcom/google/android/gms/internal/ads/zzxq;

    if-eqz p4, :cond_13f

    .line 104
    move-object p4, p2

    check-cast p4, Lcom/google/android/gms/internal/ads/zzxq;

    goto :goto_144

    .line 105
    :cond_13f
    new-instance p4, Lcom/google/android/gms/internal/ads/zzxt;

    invoke-direct {p4, p1}, Lcom/google/android/gms/internal/ads/zzxt;-><init>(Landroid/os/IBinder;)V

    .line 107
    :goto_144
    invoke-virtual {p0, p4}, Lcom/google/android/gms/internal/ads/zzxf;->zza(Lcom/google/android/gms/internal/ads/zzxq;)V

    .line 108
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_261

    .line 88
    :pswitch_14c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_153

    goto :goto_166

    :cond_153
    const-string p2, "com.google.android.gms.ads.internal.client.IAdClickListener"

    .line 91
    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 92
    instance-of p4, p2, Lcom/google/android/gms/internal/ads/zzwo;

    if-eqz p4, :cond_161

    .line 93
    move-object p4, p2

    check-cast p4, Lcom/google/android/gms/internal/ads/zzwo;

    goto :goto_166

    .line 94
    :cond_161
    new-instance p4, Lcom/google/android/gms/internal/ads/zzwq;

    invoke-direct {p4, p1}, Lcom/google/android/gms/internal/ads/zzwq;-><init>(Landroid/os/IBinder;)V

    .line 96
    :goto_166
    invoke-virtual {p0, p4}, Lcom/google/android/gms/internal/ads/zzxf;->zza(Lcom/google/android/gms/internal/ads/zzwo;)V

    .line 97
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_261

    .line 84
    :pswitch_16e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzabx;->zzl(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzaby;

    move-result-object p1

    .line 85
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzxf;->zza(Lcom/google/android/gms/internal/ads/zzaby;)V

    .line 86
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_261

    .line 80
    :pswitch_17e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzxf;->getMediationAdapterClassName()Ljava/lang/String;

    move-result-object p1

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_261

    .line 75
    :pswitch_18a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzarr;->zzal(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzaro;

    move-result-object p1

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 77
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzxf;->zza(Lcom/google/android/gms/internal/ads/zzaro;Ljava/lang/String;)V

    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_261

    .line 71
    :pswitch_19e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzarl;->zzaj(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzari;

    move-result-object p1

    .line 72
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzxf;->zza(Lcom/google/android/gms/internal/ads/zzari;)V

    .line 73
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_261

    .line 67
    :pswitch_1ae
    sget-object p1, Lcom/google/android/gms/internal/ads/zzvn;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzgw;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzvn;

    .line 68
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzxf;->zza(Lcom/google/android/gms/internal/ads/zzvn;)V

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_261

    .line 63
    :pswitch_1be
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzxf;->zzkg()Lcom/google/android/gms/internal/ads/zzvn;

    move-result-object p1

    .line 64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzgw;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto/16 :goto_261

    .line 60
    :pswitch_1ca
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzxf;->zzkf()V

    .line 61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_261

    .line 57
    :pswitch_1d2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzxf;->stopLoading()V

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_261

    .line 54
    :pswitch_1da
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzxf;->showInterstitial()V

    .line 55
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_261

    .line 43
    :pswitch_1e2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_1e9

    goto :goto_1fc

    :cond_1e9
    const-string p2, "com.google.android.gms.ads.internal.client.IAppEventListener"

    .line 46
    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 47
    instance-of p4, p2, Lcom/google/android/gms/internal/ads/zzxk;

    if-eqz p4, :cond_1f7

    .line 48
    move-object p4, p2

    check-cast p4, Lcom/google/android/gms/internal/ads/zzxk;

    goto :goto_1fc

    .line 49
    :cond_1f7
    new-instance p4, Lcom/google/android/gms/internal/ads/zzxm;

    invoke-direct {p4, p1}, Lcom/google/android/gms/internal/ads/zzxm;-><init>(Landroid/os/IBinder;)V

    .line 51
    :goto_1fc
    invoke-virtual {p0, p4}, Lcom/google/android/gms/internal/ads/zzxf;->zza(Lcom/google/android/gms/internal/ads/zzxk;)V

    .line 52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_261

    .line 32
    :pswitch_203
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_20a

    goto :goto_21d

    :cond_20a
    const-string p2, "com.google.android.gms.ads.internal.client.IAdListener"

    .line 35
    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 36
    instance-of p4, p2, Lcom/google/android/gms/internal/ads/zzwt;

    if-eqz p4, :cond_218

    .line 37
    move-object p4, p2

    check-cast p4, Lcom/google/android/gms/internal/ads/zzwt;

    goto :goto_21d

    .line 38
    :cond_218
    new-instance p4, Lcom/google/android/gms/internal/ads/zzwv;

    invoke-direct {p4, p1}, Lcom/google/android/gms/internal/ads/zzwv;-><init>(Landroid/os/IBinder;)V

    .line 40
    :goto_21d
    invoke-virtual {p0, p4}, Lcom/google/android/gms/internal/ads/zzxf;->zza(Lcom/google/android/gms/internal/ads/zzwt;)V

    .line 41
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_261

    .line 29
    :pswitch_224
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzxf;->resume()V

    .line 30
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_261

    .line 26
    :pswitch_22b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzxf;->pause()V

    .line 27
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_261

    .line 21
    :pswitch_232
    sget-object p1, Lcom/google/android/gms/internal/ads/zzvg;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzgw;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzvg;

    .line 22
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzxf;->zza(Lcom/google/android/gms/internal/ads/zzvg;)Z

    move-result p1

    .line 23
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 24
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzgw;->writeBoolean(Landroid/os/Parcel;Z)V

    goto :goto_261

    .line 17
    :pswitch_245
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzxf;->isReady()Z

    move-result p1

    .line 18
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 19
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzgw;->writeBoolean(Landroid/os/Parcel;Z)V

    goto :goto_261

    .line 14
    :pswitch_250
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzxf;->destroy()V

    .line 15
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_261

    .line 10
    :pswitch_257
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzxf;->zzke()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    .line 11
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 12
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzgw;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    :goto_261
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_264
    .packed-switch 0x1
        :pswitch_257
        :pswitch_250
        :pswitch_245
        :pswitch_232
        :pswitch_22b
        :pswitch_224
        :pswitch_203
        :pswitch_1e2
        :pswitch_1da
        :pswitch_1d2
        :pswitch_1ca
        :pswitch_1be
        :pswitch_1ae
        :pswitch_19e
        :pswitch_18a
        :pswitch_4
        :pswitch_4
        :pswitch_17e
        :pswitch_16e
        :pswitch_14c
        :pswitch_12a
        :pswitch_11e
        :pswitch_112
        :pswitch_102
        :pswitch_f6
        :pswitch_ea
        :pswitch_4
        :pswitch_4
        :pswitch_da
        :pswitch_ca
        :pswitch_be
        :pswitch_b2
        :pswitch_a6
        :pswitch_9a
        :pswitch_8e
        :pswitch_6c
        :pswitch_60
        :pswitch_54
        :pswitch_44
        :pswitch_34
        :pswitch_28
        :pswitch_6
    .end packed-switch
.end method
