.class public abstract Lcom/google/android/gms/games/internal/zzbn;
.super Lcom/google/android/gms/internal/games/zza;
.source "com.google.android.gms:play-services-games@@20.0.1"

# interfaces
.implements Lcom/google/android/gms/games/internal/zzbk;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/games/zza;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final zza(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/16 p4, 0x1771

    if-eq p1, p4, :cond_517

    const/16 p4, 0x1772

    if-eq p1, p4, :cond_50f

    const/16 p4, 0x2eeb

    if-eq p1, p4, :cond_503

    const/16 p4, 0x2eec

    if-eq p1, p4, :cond_4f7

    const/16 p4, 0x32c9

    if-eq p1, p4, :cond_4eb

    const/16 p4, 0x32ca

    if-eq p1, p4, :cond_4e3

    const/16 p4, 0x4a39

    if-eq p1, p4, :cond_4d3

    const/16 p4, 0x4a3a

    if-eq p1, p4, :cond_4c7

    packed-switch p1, :pswitch_data_524

    sparse-switch p1, :sswitch_data_53e

    packed-switch p1, :pswitch_data_610

    packed-switch p1, :pswitch_data_628

    packed-switch p1, :pswitch_data_638

    packed-switch p1, :pswitch_data_646

    const/4 p1, 0x0

    return p1

    .line 196
    :pswitch_34
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/common/data/DataHolder;

    .line 197
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 198
    sget-object p1, Lcom/google/android/gms/drive/Contents;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/google/android/gms/drive/Contents;

    .line 199
    sget-object p1, Lcom/google/android/gms/drive/Contents;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lcom/google/android/gms/drive/Contents;

    .line 200
    sget-object p1, Lcom/google/android/gms/drive/Contents;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Lcom/google/android/gms/drive/Contents;

    move-object v0, p0

    .line 201
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/games/internal/zzbn;->zza(Lcom/google/android/gms/common/data/DataHolder;Ljava/lang/String;Lcom/google/android/gms/drive/Contents;Lcom/google/android/gms/drive/Contents;Lcom/google/android/gms/drive/Contents;)V

    goto/16 :goto_51e

    .line 222
    :pswitch_62
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 223
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/zzbn;->zzal(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_51e

    .line 228
    :pswitch_6f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 229
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, Lcom/google/android/gms/internal/games/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    .line 230
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/games/internal/zzbn;->zzd(ILandroid/os/Bundle;)V

    goto/16 :goto_51e

    .line 219
    :pswitch_80
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 220
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/zzbn;->zzak(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_51e

    .line 225
    :pswitch_8d
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 226
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/zzbn;->zzam(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_51e

    .line 216
    :pswitch_9a
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 217
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/zzbn;->zzaj(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_51e

    .line 213
    :pswitch_a7
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 214
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/zzbn;->zzai(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_51e

    .line 203
    :pswitch_b4
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 204
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/zzbn;->zzah(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_51e

    .line 192
    :pswitch_c1
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 193
    sget-object p4, Lcom/google/android/gms/drive/Contents;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, Lcom/google/android/gms/internal/games/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/drive/Contents;

    .line 194
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/games/internal/zzbn;->zza(Lcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/drive/Contents;)V

    goto/16 :goto_51e

    .line 182
    :pswitch_d6
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 183
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/zzbn;->zzaf(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_51e

    .line 178
    :pswitch_e3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 179
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, Lcom/google/android/gms/internal/games/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    .line 180
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/games/internal/zzbn;->zzb(ILandroid/os/Bundle;)V

    goto/16 :goto_51e

    .line 175
    :pswitch_f4
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 176
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/zzbn;->zzae(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_51e

    .line 172
    :pswitch_101
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 173
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/zzbn;->zzad(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_51e

    .line 169
    :pswitch_10e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 170
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/zzbn;->zzb(Ljava/lang/String;)V

    goto/16 :goto_51e

    .line 166
    :pswitch_117
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 167
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/zzbn;->zzm(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_51e

    .line 160
    :pswitch_124
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 161
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/zzbn;->onInvitationRemoved(Ljava/lang/String;)V

    goto/16 :goto_51e

    .line 157
    :pswitch_12d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 158
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/zzbn;->onTurnBasedMatchRemoved(Ljava/lang/String;)V

    goto/16 :goto_51e

    .line 154
    :pswitch_136
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 155
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/zzbn;->zzr(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_51e

    .line 150
    :pswitch_143
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 152
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/games/internal/zzbn;->zzc(ILjava/lang/String;)V

    goto/16 :goto_51e

    .line 147
    :pswitch_150
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 148
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/zzbn;->zzq(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_51e

    .line 144
    :pswitch_15d
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 145
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/zzbn;->zzp(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_51e

    .line 141
    :pswitch_16a
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 142
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/zzbn;->zzo(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_51e

    .line 138
    :pswitch_177
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 139
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/zzbn;->zzn(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_51e

    .line 134
    :pswitch_184
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 135
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, Lcom/google/android/gms/internal/games/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    .line 136
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/games/internal/zzbn;->zza(ILandroid/os/Bundle;)V

    goto/16 :goto_51e

    .line 131
    :pswitch_195
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 132
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/zzbn;->zzac(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_51e

    .line 316
    :sswitch_1a2
    invoke-static {p2}, Lcom/google/android/gms/internal/games/zzd;->zza(Landroid/os/Parcel;)Z

    move-result p1

    .line 317
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/zzbn;->zza(Z)V

    goto/16 :goto_51e

    .line 313
    :sswitch_1ab
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 314
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/zzbn;->zzm(I)V

    goto/16 :goto_51e

    .line 310
    :sswitch_1b4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 311
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/zzbn;->zzl(I)V

    goto/16 :goto_51e

    .line 307
    :sswitch_1bd
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 308
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/zzbn;->zzk(I)V

    goto/16 :goto_51e

    .line 304
    :sswitch_1c6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 305
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/zzbn;->zzj(I)V

    goto/16 :goto_51e

    .line 301
    :sswitch_1cf
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 302
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/zzbn;->zzn(I)V

    goto/16 :goto_51e

    .line 297
    :sswitch_1d8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 298
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, Lcom/google/android/gms/internal/games/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    .line 299
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/games/internal/zzbn;->zze(ILandroid/os/Bundle;)V

    goto/16 :goto_51e

    .line 294
    :sswitch_1e9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 295
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/zzbn;->onCaptureOverlayStateChanged(I)V

    goto/16 :goto_51e

    .line 291
    :sswitch_1f2
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    .line 292
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/zzbn;->zzd(Lcom/google/android/gms/common/api/Status;)V

    goto/16 :goto_51e

    .line 288
    :sswitch_1ff
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 289
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/zzbn;->zzax(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_51e

    .line 285
    :sswitch_20c
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 286
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/zzbn;->zzaw(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_51e

    .line 282
    :sswitch_219
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 283
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/zzbn;->zzav(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_51e

    .line 279
    :sswitch_226
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 280
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/zzbn;->zzau(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_51e

    .line 276
    :sswitch_233
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 277
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/zzbn;->zzat(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_51e

    .line 273
    :sswitch_240
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 274
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/zzbn;->zzas(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_51e

    .line 270
    :sswitch_24d
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 271
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/zzbn;->zzar(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_51e

    .line 267
    :sswitch_25a
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 268
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/zzbn;->zzaq(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_51e

    .line 264
    :sswitch_267
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 265
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/zzbn;->zzap(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_51e

    .line 261
    :sswitch_274
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 262
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/zzbn;->zzi(I)V

    goto/16 :goto_51e

    .line 258
    :sswitch_27d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 259
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/zzbn;->zzh(I)V

    goto/16 :goto_51e

    .line 255
    :sswitch_286
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 256
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/zzbn;->zzg(I)V

    goto/16 :goto_51e

    .line 244
    :sswitch_28f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 245
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/zzbn;->zzf(I)V

    goto/16 :goto_51e

    .line 241
    :sswitch_298
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 242
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/zzbn;->zzao(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_51e

    .line 238
    :sswitch_2a5
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/android/gms/common/data/DataHolder;

    .line 239
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/zzbn;->zza([Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_51e

    .line 189
    :sswitch_2b2
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 190
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/zzbn;->zzag(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_51e

    .line 185
    :sswitch_2bf
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 186
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, Lcom/google/android/gms/internal/games/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    .line 187
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/games/internal/zzbn;->zzc(ILandroid/os/Bundle;)V

    goto/16 :goto_51e

    .line 163
    :sswitch_2d0
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 164
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/zzbn;->zzj(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_51e

    .line 122
    :sswitch_2dd
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 123
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/zzbn;->zzd(I)V

    goto/16 :goto_51e

    .line 119
    :sswitch_2e6
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 120
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/zzbn;->zzab(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_51e

    .line 110
    :sswitch_2f3
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 111
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/zzbn;->zzz(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_51e

    .line 45
    :sswitch_300
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 46
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/zzbn;->zzl(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_51e

    .line 116
    :sswitch_30d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 117
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/zzbn;->zzc(I)V

    goto/16 :goto_51e

    .line 113
    :sswitch_316
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 114
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/zzbn;->zzaa(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_51e

    .line 105
    :sswitch_323
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 107
    invoke-static {p2}, Lcom/google/android/gms/internal/games/zzd;->zza(Landroid/os/Parcel;)Z

    move-result p2

    .line 108
    invoke-virtual {p0, p1, p4, p2}, Lcom/google/android/gms/games/internal/zzbn;->zza(ILjava/lang/String;Z)V

    goto/16 :goto_51e

    .line 100
    :sswitch_334
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 103
    invoke-virtual {p0, p1, p4, p2}, Lcom/google/android/gms/games/internal/zzbn;->zza(IILjava/lang/String;)V

    goto/16 :goto_51e

    .line 97
    :sswitch_345
    sget-object p1, Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessage;

    .line 98
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/zzbn;->onRealTimeMessageReceived(Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessage;)V

    goto/16 :goto_51e

    .line 93
    :sswitch_352
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p2

    .line 95
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/games/internal/zzbn;->zzf(Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V

    goto/16 :goto_51e

    .line 89
    :sswitch_363
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p2

    .line 91
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/games/internal/zzbn;->zze(Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V

    goto/16 :goto_51e

    .line 85
    :sswitch_374
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p2

    .line 87
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/games/internal/zzbn;->zzd(Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V

    goto/16 :goto_51e

    .line 81
    :sswitch_385
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p2

    .line 83
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/games/internal/zzbn;->zzc(Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V

    goto/16 :goto_51e

    .line 77
    :sswitch_396
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p2

    .line 79
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/games/internal/zzbn;->zzb(Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V

    goto/16 :goto_51e

    .line 73
    :sswitch_3a7
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p2

    .line 75
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/games/internal/zzbn;->zza(Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V

    goto/16 :goto_51e

    .line 70
    :sswitch_3b8
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 71
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/zzbn;->zzy(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_51e

    .line 67
    :sswitch_3c5
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 68
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/zzbn;->zzx(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_51e

    .line 64
    :sswitch_3d2
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 65
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/zzbn;->zzw(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_51e

    .line 61
    :sswitch_3df
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 62
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/zzbn;->zzv(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_51e

    .line 58
    :sswitch_3ec
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 59
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/zzbn;->zzu(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_51e

    .line 54
    :sswitch_3f9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 56
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/games/internal/zzbn;->onLeftRoom(ILjava/lang/String;)V

    goto/16 :goto_51e

    .line 51
    :sswitch_406
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 52
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/zzbn;->zzt(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_51e

    .line 48
    :sswitch_413
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 49
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/zzbn;->zzs(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_51e

    .line 42
    :sswitch_420
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 43
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/zzbn;->zzk(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_51e

    .line 40
    :sswitch_42d
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzbn;->onSignOutComplete()V

    goto/16 :goto_51e

    .line 37
    :pswitch_432
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 38
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/zzbn;->zzi(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_51e

    .line 34
    :pswitch_43f
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 35
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/zzbn;->zzh(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_51e

    .line 31
    :pswitch_44c
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 32
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/zzbn;->zzg(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_51e

    .line 28
    :pswitch_459
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 29
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/zzbn;->zzf(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_51e

    .line 25
    :pswitch_466
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 26
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/zzbn;->zze(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_51e

    .line 22
    :pswitch_473
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 23
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/zzbn;->zzd(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_51e

    .line 18
    :pswitch_480
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 19
    sget-object p4, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, Lcom/google/android/gms/internal/games/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/common/data/DataHolder;

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/games/internal/zzbn;->zza(Lcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_51e

    .line 15
    :pswitch_495
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 16
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/zzbn;->zzc(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_51e

    .line 11
    :pswitch_4a2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 12
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 13
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/games/internal/zzbn;->zzb(ILjava/lang/String;)V

    goto/16 :goto_51e

    .line 8
    :pswitch_4af
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 9
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/zzbn;->zza(Lcom/google/android/gms/common/data/DataHolder;)V

    goto :goto_51e

    .line 4
    :pswitch_4bb
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/games/internal/zzbn;->zza(ILjava/lang/String;)V

    goto :goto_51e

    .line 251
    :cond_4c7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 252
    invoke-static {p2}, Lcom/google/android/gms/internal/games/zzd;->zza(Landroid/os/Parcel;)Z

    move-result p2

    .line 253
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/games/internal/zzbn;->zza(IZ)V

    goto :goto_51e

    .line 247
    :cond_4d3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 248
    sget-object p4, Lcom/google/android/gms/games/video/VideoCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, Lcom/google/android/gms/internal/games/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/games/video/VideoCapabilities;

    .line 249
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/games/internal/zzbn;->zza(ILcom/google/android/gms/games/video/VideoCapabilities;)V

    goto :goto_51e

    .line 235
    :cond_4e3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 236
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/zzbn;->zze(I)V

    goto :goto_51e

    .line 232
    :cond_4eb
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 233
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/zzbn;->zzan(Lcom/google/android/gms/common/data/DataHolder;)V

    goto :goto_51e

    .line 206
    :cond_4f7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 207
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 208
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/games/internal/zzbn;->zzd(ILjava/lang/String;)V

    goto :goto_51e

    .line 210
    :cond_503
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 211
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/zzbn;->zzb(Lcom/google/android/gms/common/data/DataHolder;)V

    goto :goto_51e

    .line 128
    :cond_50f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 129
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/zzbn;->onP2PDisconnected(Ljava/lang/String;)V

    goto :goto_51e

    .line 125
    :cond_517
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 126
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/zzbn;->onP2PConnected(Ljava/lang/String;)V

    .line 320
    :goto_51e
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_524
    .packed-switch 0x1389
        :pswitch_4bb
        :pswitch_4af
        :pswitch_4a2
        :pswitch_495
        :pswitch_480
        :pswitch_473
        :pswitch_466
        :pswitch_459
        :pswitch_44c
        :pswitch_43f
        :pswitch_432
    .end packed-switch

    :sswitch_data_53e
    .sparse-switch
        0x1398 -> :sswitch_42d
        0x1399 -> :sswitch_420
        0x139a -> :sswitch_413
        0x139b -> :sswitch_406
        0x139c -> :sswitch_3f9
        0x139d -> :sswitch_3ec
        0x139e -> :sswitch_3df
        0x139f -> :sswitch_3d2
        0x13a0 -> :sswitch_3c5
        0x13a1 -> :sswitch_3b8
        0x13a2 -> :sswitch_3a7
        0x13a3 -> :sswitch_396
        0x13a4 -> :sswitch_385
        0x13a5 -> :sswitch_374
        0x13a6 -> :sswitch_363
        0x13a7 -> :sswitch_352
        0x13a8 -> :sswitch_345
        0x13a9 -> :sswitch_334
        0x13aa -> :sswitch_323
        0x13ab -> :sswitch_316
        0x13ac -> :sswitch_30d
        0x13ad -> :sswitch_300
        0x13ae -> :sswitch_2f3
        0x13af -> :sswitch_2e6
        0x13b0 -> :sswitch_2dd
        0x2329 -> :sswitch_2d0
        0x2af9 -> :sswitch_2bf
        0x2ee1 -> :sswitch_2b2
        0x36b1 -> :sswitch_2a5
        0x3a99 -> :sswitch_298
        0x426a -> :sswitch_28f
        0x4a40 -> :sswitch_286
        0x4a41 -> :sswitch_27d
        0x4a42 -> :sswitch_274
        0x4e21 -> :sswitch_267
        0x4e22 -> :sswitch_25a
        0x4e23 -> :sswitch_24d
        0x4e24 -> :sswitch_240
        0x4e25 -> :sswitch_233
        0x4e26 -> :sswitch_226
        0x4e27 -> :sswitch_219
        0x4e28 -> :sswitch_20c
        0x4e29 -> :sswitch_1ff
        0x4e2c -> :sswitch_1f2
        0x4e33 -> :sswitch_1e9
        0x4e34 -> :sswitch_1d8
        0x59d9 -> :sswitch_1cf
        0x59da -> :sswitch_1c6
        0x59db -> :sswitch_1bd
        0x59dc -> :sswitch_1b4
        0x59dd -> :sswitch_1ab
        0x5dc2 -> :sswitch_1a2
    .end sparse-switch

    :pswitch_data_610
    .packed-switch 0x1f41
        :pswitch_195
        :pswitch_184
        :pswitch_177
        :pswitch_16a
        :pswitch_15d
        :pswitch_150
        :pswitch_143
        :pswitch_136
        :pswitch_12d
        :pswitch_124
    .end packed-switch

    :pswitch_data_628
    .packed-switch 0x2711
        :pswitch_117
        :pswitch_10e
        :pswitch_101
        :pswitch_f4
        :pswitch_e3
        :pswitch_d6
    .end packed-switch

    :pswitch_data_638
    .packed-switch 0x2ee4
        :pswitch_c1
        :pswitch_b4
        :pswitch_a7
        :pswitch_9a
        :pswitch_8d
    .end packed-switch

    :pswitch_data_646
    .packed-switch 0x2eee
        :pswitch_80
        :pswitch_6f
        :pswitch_62
        :pswitch_34
    .end packed-switch
.end method
