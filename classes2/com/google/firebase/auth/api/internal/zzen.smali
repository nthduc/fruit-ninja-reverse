.class public abstract Lcom/google/firebase/auth/api/internal/zzen;
.super Lcom/google/android/gms/internal/firebase_auth/zza;
.source "com.google.firebase:firebase-auth@@19.3.1"

# interfaces
.implements Lcom/google/firebase/auth/api/internal/zzeo;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.firebase.auth.api.internal.IFirebaseAuthCallbacks"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase_auth/zza;-><init>(Ljava/lang/String;)V

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

    packed-switch p1, :pswitch_data_aa

    const/4 p1, 0x0

    return p1

    .line 45
    :pswitch_5
    sget-object p1, Lcom/google/android/gms/internal/firebase_auth/zzej;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/firebase_auth/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzej;

    .line 46
    invoke-virtual {p0, p1}, Lcom/google/firebase/auth/api/internal/zzen;->zza(Lcom/google/android/gms/internal/firebase_auth/zzej;)V

    goto/16 :goto_a8

    .line 42
    :pswitch_12
    sget-object p1, Lcom/google/android/gms/internal/firebase_auth/zzeh;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/firebase_auth/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzeh;

    .line 43
    invoke-virtual {p0, p1}, Lcom/google/firebase/auth/api/internal/zzen;->zza(Lcom/google/android/gms/internal/firebase_auth/zzeh;)V

    goto/16 :goto_a8

    .line 40
    :pswitch_1f
    invoke-virtual {p0}, Lcom/google/firebase/auth/api/internal/zzen;->zzc()V

    goto/16 :goto_a8

    .line 36
    :pswitch_24
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/firebase_auth/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    .line 37
    sget-object p3, Lcom/google/firebase/auth/PhoneAuthCredential;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p3}, Lcom/google/android/gms/internal/firebase_auth/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/google/firebase/auth/PhoneAuthCredential;

    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/auth/api/internal/zzen;->zza(Lcom/google/android/gms/common/api/Status;Lcom/google/firebase/auth/PhoneAuthCredential;)V

    goto/16 :goto_a8

    .line 33
    :pswitch_39
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 34
    invoke-virtual {p0, p1}, Lcom/google/firebase/auth/api/internal/zzen;->zzc(Ljava/lang/String;)V

    goto :goto_a8

    .line 30
    :pswitch_41
    sget-object p1, Lcom/google/firebase/auth/PhoneAuthCredential;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/firebase_auth/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/auth/PhoneAuthCredential;

    .line 31
    invoke-virtual {p0, p1}, Lcom/google/firebase/auth/api/internal/zzen;->zza(Lcom/google/firebase/auth/PhoneAuthCredential;)V

    goto :goto_a8

    .line 27
    :pswitch_4d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 28
    invoke-virtual {p0, p1}, Lcom/google/firebase/auth/api/internal/zzen;->zzb(Ljava/lang/String;)V

    goto :goto_a8

    .line 24
    :pswitch_55
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 25
    invoke-virtual {p0, p1}, Lcom/google/firebase/auth/api/internal/zzen;->zza(Ljava/lang/String;)V

    goto :goto_a8

    .line 22
    :pswitch_5d
    invoke-virtual {p0}, Lcom/google/firebase/auth/api/internal/zzen;->zzb()V

    goto :goto_a8

    .line 20
    :pswitch_61
    invoke-virtual {p0}, Lcom/google/firebase/auth/api/internal/zzen;->i_()V

    goto :goto_a8

    .line 17
    :pswitch_65
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/firebase_auth/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    .line 18
    invoke-virtual {p0, p1}, Lcom/google/firebase/auth/api/internal/zzen;->zza(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_a8

    .line 14
    :pswitch_71
    sget-object p1, Lcom/google/android/gms/internal/firebase_auth/zzfm;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/firebase_auth/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzfm;

    .line 15
    invoke-virtual {p0, p1}, Lcom/google/firebase/auth/api/internal/zzen;->zza(Lcom/google/android/gms/internal/firebase_auth/zzfm;)V

    goto :goto_a8

    .line 11
    :pswitch_7d
    sget-object p1, Lcom/google/android/gms/internal/firebase_auth/zzem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/firebase_auth/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzem;

    .line 12
    invoke-virtual {p0, p1}, Lcom/google/firebase/auth/api/internal/zzen;->zza(Lcom/google/android/gms/internal/firebase_auth/zzem;)V

    goto :goto_a8

    .line 7
    :pswitch_89
    sget-object p1, Lcom/google/android/gms/internal/firebase_auth/zzff;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/firebase_auth/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzff;

    .line 8
    sget-object p3, Lcom/google/android/gms/internal/firebase_auth/zzew;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p3}, Lcom/google/android/gms/internal/firebase_auth/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/firebase_auth/zzew;

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/auth/api/internal/zzen;->zza(Lcom/google/android/gms/internal/firebase_auth/zzff;Lcom/google/android/gms/internal/firebase_auth/zzew;)V

    goto :goto_a8

    .line 4
    :pswitch_9d
    sget-object p1, Lcom/google/android/gms/internal/firebase_auth/zzff;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/firebase_auth/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzff;

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/firebase/auth/api/internal/zzen;->zza(Lcom/google/android/gms/internal/firebase_auth/zzff;)V

    :goto_a8
    const/4 p1, 0x1

    return p1

    :pswitch_data_aa
    .packed-switch 0x1
        :pswitch_9d
        :pswitch_89
        :pswitch_7d
        :pswitch_71
        :pswitch_65
        :pswitch_61
        :pswitch_5d
        :pswitch_55
        :pswitch_4d
        :pswitch_41
        :pswitch_39
        :pswitch_24
        :pswitch_1f
        :pswitch_12
        :pswitch_5
    .end packed-switch
.end method
