.class public abstract Lcom/google/firebase/auth/api/internal/zzes;
.super Lcom/google/android/gms/internal/firebase_auth/zza;
.source "com.google.firebase:firebase-auth@@19.3.1"

# interfaces
.implements Lcom/google/firebase/auth/api/internal/zzep;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.firebase.auth.api.internal.IFirebaseAuthService"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase_auth/zza;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final zza(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p4, 0x0

    const-string v0, "com.google.firebase.auth.api.internal.IFirebaseAuthCallbacks"

    packed-switch p1, :pswitch_data_892

    packed-switch p1, :pswitch_data_8d0

    packed-switch p1, :pswitch_data_8e6

    packed-switch p1, :pswitch_data_8f8

    packed-switch p1, :pswitch_data_908

    const/4 p1, 0x0

    return p1

    .line 677
    :pswitch_14
    sget-object p1, Lcom/google/android/gms/internal/firebase_auth/zzef;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/firebase_auth/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzef;

    .line 678
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_23

    goto :goto_33

    .line 681
    :cond_23
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 682
    instance-of v0, p4, Lcom/google/firebase/auth/api/internal/zzeo;

    if-eqz v0, :cond_2e

    .line 683
    check-cast p4, Lcom/google/firebase/auth/api/internal/zzeo;

    goto :goto_33

    .line 684
    :cond_2e
    new-instance p4, Lcom/google/firebase/auth/api/internal/zzeq;

    invoke-direct {p4, p2}, Lcom/google/firebase/auth/api/internal/zzeq;-><init>(Landroid/os/IBinder;)V

    .line 686
    :goto_33
    invoke-virtual {p0, p1, p4}, Lcom/google/firebase/auth/api/internal/zzes;->zza(Lcom/google/android/gms/internal/firebase_auth/zzef;Lcom/google/firebase/auth/api/internal/zzeo;)V

    goto/16 :goto_88c

    .line 666
    :pswitch_38
    sget-object p1, Lcom/google/android/gms/internal/firebase_auth/zzcl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/firebase_auth/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzcl;

    .line 667
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_47

    goto :goto_57

    .line 670
    :cond_47
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 671
    instance-of v0, p4, Lcom/google/firebase/auth/api/internal/zzeo;

    if-eqz v0, :cond_52

    .line 672
    check-cast p4, Lcom/google/firebase/auth/api/internal/zzeo;

    goto :goto_57

    .line 673
    :cond_52
    new-instance p4, Lcom/google/firebase/auth/api/internal/zzeq;

    invoke-direct {p4, p2}, Lcom/google/firebase/auth/api/internal/zzeq;-><init>(Landroid/os/IBinder;)V

    .line 675
    :goto_57
    invoke-virtual {p0, p1, p4}, Lcom/google/firebase/auth/api/internal/zzes;->zza(Lcom/google/android/gms/internal/firebase_auth/zzcl;Lcom/google/firebase/auth/api/internal/zzeo;)V

    goto/16 :goto_88c

    .line 655
    :pswitch_5c
    sget-object p1, Lcom/google/android/gms/internal/firebase_auth/zzdv;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/firebase_auth/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzdv;

    .line 656
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_6b

    goto :goto_7b

    .line 659
    :cond_6b
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 660
    instance-of v0, p4, Lcom/google/firebase/auth/api/internal/zzeo;

    if-eqz v0, :cond_76

    .line 661
    check-cast p4, Lcom/google/firebase/auth/api/internal/zzeo;

    goto :goto_7b

    .line 662
    :cond_76
    new-instance p4, Lcom/google/firebase/auth/api/internal/zzeq;

    invoke-direct {p4, p2}, Lcom/google/firebase/auth/api/internal/zzeq;-><init>(Landroid/os/IBinder;)V

    .line 664
    :goto_7b
    invoke-virtual {p0, p1, p4}, Lcom/google/firebase/auth/api/internal/zzes;->zza(Lcom/google/android/gms/internal/firebase_auth/zzdv;Lcom/google/firebase/auth/api/internal/zzeo;)V

    goto/16 :goto_88c

    .line 644
    :pswitch_80
    sget-object p1, Lcom/google/android/gms/internal/firebase_auth/zzcj;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/firebase_auth/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzcj;

    .line 645
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_8f

    goto :goto_9f

    .line 648
    :cond_8f
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 649
    instance-of v0, p4, Lcom/google/firebase/auth/api/internal/zzeo;

    if-eqz v0, :cond_9a

    .line 650
    check-cast p4, Lcom/google/firebase/auth/api/internal/zzeo;

    goto :goto_9f

    .line 651
    :cond_9a
    new-instance p4, Lcom/google/firebase/auth/api/internal/zzeq;

    invoke-direct {p4, p2}, Lcom/google/firebase/auth/api/internal/zzeq;-><init>(Landroid/os/IBinder;)V

    .line 653
    :goto_9f
    invoke-virtual {p0, p1, p4}, Lcom/google/firebase/auth/api/internal/zzes;->zza(Lcom/google/android/gms/internal/firebase_auth/zzcj;Lcom/google/firebase/auth/api/internal/zzeo;)V

    goto/16 :goto_88c

    .line 633
    :pswitch_a4
    sget-object p1, Lcom/google/android/gms/internal/firebase_auth/zzdx;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/firebase_auth/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzdx;

    .line 634
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_b3

    goto :goto_c3

    .line 637
    :cond_b3
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 638
    instance-of v0, p4, Lcom/google/firebase/auth/api/internal/zzeo;

    if-eqz v0, :cond_be

    .line 639
    check-cast p4, Lcom/google/firebase/auth/api/internal/zzeo;

    goto :goto_c3

    .line 640
    :cond_be
    new-instance p4, Lcom/google/firebase/auth/api/internal/zzeq;

    invoke-direct {p4, p2}, Lcom/google/firebase/auth/api/internal/zzeq;-><init>(Landroid/os/IBinder;)V

    .line 642
    :goto_c3
    invoke-virtual {p0, p1, p4}, Lcom/google/firebase/auth/api/internal/zzes;->zza(Lcom/google/android/gms/internal/firebase_auth/zzdx;Lcom/google/firebase/auth/api/internal/zzeo;)V

    goto/16 :goto_88c

    .line 622
    :pswitch_c8
    sget-object p1, Lcom/google/android/gms/internal/firebase_auth/zzdt;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/firebase_auth/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzdt;

    .line 623
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_d7

    goto :goto_e7

    .line 626
    :cond_d7
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 627
    instance-of v0, p4, Lcom/google/firebase/auth/api/internal/zzeo;

    if-eqz v0, :cond_e2

    .line 628
    check-cast p4, Lcom/google/firebase/auth/api/internal/zzeo;

    goto :goto_e7

    .line 629
    :cond_e2
    new-instance p4, Lcom/google/firebase/auth/api/internal/zzeq;

    invoke-direct {p4, p2}, Lcom/google/firebase/auth/api/internal/zzeq;-><init>(Landroid/os/IBinder;)V

    .line 631
    :goto_e7
    invoke-virtual {p0, p1, p4}, Lcom/google/firebase/auth/api/internal/zzes;->zza(Lcom/google/android/gms/internal/firebase_auth/zzdt;Lcom/google/firebase/auth/api/internal/zzeo;)V

    goto/16 :goto_88c

    .line 611
    :pswitch_ec
    sget-object p1, Lcom/google/android/gms/internal/firebase_auth/zzdp;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/firebase_auth/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzdp;

    .line 612
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_fb

    goto :goto_10b

    .line 615
    :cond_fb
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 616
    instance-of v0, p4, Lcom/google/firebase/auth/api/internal/zzeo;

    if-eqz v0, :cond_106

    .line 617
    check-cast p4, Lcom/google/firebase/auth/api/internal/zzeo;

    goto :goto_10b

    .line 618
    :cond_106
    new-instance p4, Lcom/google/firebase/auth/api/internal/zzeq;

    invoke-direct {p4, p2}, Lcom/google/firebase/auth/api/internal/zzeq;-><init>(Landroid/os/IBinder;)V

    .line 620
    :goto_10b
    invoke-virtual {p0, p1, p4}, Lcom/google/firebase/auth/api/internal/zzes;->zza(Lcom/google/android/gms/internal/firebase_auth/zzdp;Lcom/google/firebase/auth/api/internal/zzeo;)V

    goto/16 :goto_88c

    .line 600
    :pswitch_110
    sget-object p1, Lcom/google/android/gms/internal/firebase_auth/zzdb;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/firebase_auth/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzdb;

    .line 601
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_11f

    goto :goto_12f

    .line 604
    :cond_11f
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 605
    instance-of v0, p4, Lcom/google/firebase/auth/api/internal/zzeo;

    if-eqz v0, :cond_12a

    .line 606
    check-cast p4, Lcom/google/firebase/auth/api/internal/zzeo;

    goto :goto_12f

    .line 607
    :cond_12a
    new-instance p4, Lcom/google/firebase/auth/api/internal/zzeq;

    invoke-direct {p4, p2}, Lcom/google/firebase/auth/api/internal/zzeq;-><init>(Landroid/os/IBinder;)V

    .line 609
    :goto_12f
    invoke-virtual {p0, p1, p4}, Lcom/google/firebase/auth/api/internal/zzes;->zza(Lcom/google/android/gms/internal/firebase_auth/zzdb;Lcom/google/firebase/auth/api/internal/zzeo;)V

    goto/16 :goto_88c

    .line 589
    :pswitch_134
    sget-object p1, Lcom/google/android/gms/internal/firebase_auth/zzdf;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/firebase_auth/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzdf;

    .line 590
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_143

    goto :goto_153

    .line 593
    :cond_143
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 594
    instance-of v0, p4, Lcom/google/firebase/auth/api/internal/zzeo;

    if-eqz v0, :cond_14e

    .line 595
    check-cast p4, Lcom/google/firebase/auth/api/internal/zzeo;

    goto :goto_153

    .line 596
    :cond_14e
    new-instance p4, Lcom/google/firebase/auth/api/internal/zzeq;

    invoke-direct {p4, p2}, Lcom/google/firebase/auth/api/internal/zzeq;-><init>(Landroid/os/IBinder;)V

    .line 598
    :goto_153
    invoke-virtual {p0, p1, p4}, Lcom/google/firebase/auth/api/internal/zzes;->zza(Lcom/google/android/gms/internal/firebase_auth/zzdf;Lcom/google/firebase/auth/api/internal/zzeo;)V

    goto/16 :goto_88c

    .line 578
    :pswitch_158
    sget-object p1, Lcom/google/android/gms/internal/firebase_auth/zzcz;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/firebase_auth/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzcz;

    .line 579
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_167

    goto :goto_177

    .line 582
    :cond_167
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 583
    instance-of v0, p4, Lcom/google/firebase/auth/api/internal/zzeo;

    if-eqz v0, :cond_172

    .line 584
    check-cast p4, Lcom/google/firebase/auth/api/internal/zzeo;

    goto :goto_177

    .line 585
    :cond_172
    new-instance p4, Lcom/google/firebase/auth/api/internal/zzeq;

    invoke-direct {p4, p2}, Lcom/google/firebase/auth/api/internal/zzeq;-><init>(Landroid/os/IBinder;)V

    .line 587
    :goto_177
    invoke-virtual {p0, p1, p4}, Lcom/google/firebase/auth/api/internal/zzes;->zza(Lcom/google/android/gms/internal/firebase_auth/zzcz;Lcom/google/firebase/auth/api/internal/zzeo;)V

    goto/16 :goto_88c

    .line 567
    :pswitch_17c
    sget-object p1, Lcom/google/android/gms/internal/firebase_auth/zzcv;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/firebase_auth/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzcv;

    .line 568
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_18b

    goto :goto_19b

    .line 571
    :cond_18b
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 572
    instance-of v0, p4, Lcom/google/firebase/auth/api/internal/zzeo;

    if-eqz v0, :cond_196

    .line 573
    check-cast p4, Lcom/google/firebase/auth/api/internal/zzeo;

    goto :goto_19b

    .line 574
    :cond_196
    new-instance p4, Lcom/google/firebase/auth/api/internal/zzeq;

    invoke-direct {p4, p2}, Lcom/google/firebase/auth/api/internal/zzeq;-><init>(Landroid/os/IBinder;)V

    .line 576
    :goto_19b
    invoke-virtual {p0, p1, p4}, Lcom/google/firebase/auth/api/internal/zzes;->zza(Lcom/google/android/gms/internal/firebase_auth/zzcv;Lcom/google/firebase/auth/api/internal/zzeo;)V

    goto/16 :goto_88c

    .line 556
    :pswitch_1a0
    sget-object p1, Lcom/google/android/gms/internal/firebase_auth/zzdr;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/firebase_auth/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzdr;

    .line 557
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_1af

    goto :goto_1bf

    .line 560
    :cond_1af
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 561
    instance-of v0, p4, Lcom/google/firebase/auth/api/internal/zzeo;

    if-eqz v0, :cond_1ba

    .line 562
    check-cast p4, Lcom/google/firebase/auth/api/internal/zzeo;

    goto :goto_1bf

    .line 563
    :cond_1ba
    new-instance p4, Lcom/google/firebase/auth/api/internal/zzeq;

    invoke-direct {p4, p2}, Lcom/google/firebase/auth/api/internal/zzeq;-><init>(Landroid/os/IBinder;)V

    .line 565
    :goto_1bf
    invoke-virtual {p0, p1, p4}, Lcom/google/firebase/auth/api/internal/zzes;->zza(Lcom/google/android/gms/internal/firebase_auth/zzdr;Lcom/google/firebase/auth/api/internal/zzeo;)V

    goto/16 :goto_88c

    .line 545
    :pswitch_1c4
    sget-object p1, Lcom/google/android/gms/internal/firebase_auth/zzdd;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/firebase_auth/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzdd;

    .line 546
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_1d3

    goto :goto_1e3

    .line 549
    :cond_1d3
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 550
    instance-of v0, p4, Lcom/google/firebase/auth/api/internal/zzeo;

    if-eqz v0, :cond_1de

    .line 551
    check-cast p4, Lcom/google/firebase/auth/api/internal/zzeo;

    goto :goto_1e3

    .line 552
    :cond_1de
    new-instance p4, Lcom/google/firebase/auth/api/internal/zzeq;

    invoke-direct {p4, p2}, Lcom/google/firebase/auth/api/internal/zzeq;-><init>(Landroid/os/IBinder;)V

    .line 554
    :goto_1e3
    invoke-virtual {p0, p1, p4}, Lcom/google/firebase/auth/api/internal/zzes;->zza(Lcom/google/android/gms/internal/firebase_auth/zzdd;Lcom/google/firebase/auth/api/internal/zzeo;)V

    goto/16 :goto_88c

    .line 534
    :pswitch_1e8
    sget-object p1, Lcom/google/android/gms/internal/firebase_auth/zzcd;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/firebase_auth/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzcd;

    .line 535
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_1f7

    goto :goto_207

    .line 538
    :cond_1f7
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 539
    instance-of v0, p4, Lcom/google/firebase/auth/api/internal/zzeo;

    if-eqz v0, :cond_202

    .line 540
    check-cast p4, Lcom/google/firebase/auth/api/internal/zzeo;

    goto :goto_207

    .line 541
    :cond_202
    new-instance p4, Lcom/google/firebase/auth/api/internal/zzeq;

    invoke-direct {p4, p2}, Lcom/google/firebase/auth/api/internal/zzeq;-><init>(Landroid/os/IBinder;)V

    .line 543
    :goto_207
    invoke-virtual {p0, p1, p4}, Lcom/google/firebase/auth/api/internal/zzes;->zza(Lcom/google/android/gms/internal/firebase_auth/zzcd;Lcom/google/firebase/auth/api/internal/zzeo;)V

    goto/16 :goto_88c

    .line 523
    :pswitch_20c
    sget-object p1, Lcom/google/android/gms/internal/firebase_auth/zzbw;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/firebase_auth/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzbw;

    .line 524
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_21b

    goto :goto_22b

    .line 527
    :cond_21b
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 528
    instance-of v0, p4, Lcom/google/firebase/auth/api/internal/zzeo;

    if-eqz v0, :cond_226

    .line 529
    check-cast p4, Lcom/google/firebase/auth/api/internal/zzeo;

    goto :goto_22b

    .line 530
    :cond_226
    new-instance p4, Lcom/google/firebase/auth/api/internal/zzeq;

    invoke-direct {p4, p2}, Lcom/google/firebase/auth/api/internal/zzeq;-><init>(Landroid/os/IBinder;)V

    .line 532
    :goto_22b
    invoke-virtual {p0, p1, p4}, Lcom/google/firebase/auth/api/internal/zzes;->zza(Lcom/google/android/gms/internal/firebase_auth/zzbw;Lcom/google/firebase/auth/api/internal/zzeo;)V

    goto/16 :goto_88c

    .line 512
    :pswitch_230
    sget-object p1, Lcom/google/android/gms/internal/firebase_auth/zzcb;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/firebase_auth/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzcb;

    .line 513
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_23f

    goto :goto_24f

    .line 516
    :cond_23f
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 517
    instance-of v0, p4, Lcom/google/firebase/auth/api/internal/zzeo;

    if-eqz v0, :cond_24a

    .line 518
    check-cast p4, Lcom/google/firebase/auth/api/internal/zzeo;

    goto :goto_24f

    .line 519
    :cond_24a
    new-instance p4, Lcom/google/firebase/auth/api/internal/zzeq;

    invoke-direct {p4, p2}, Lcom/google/firebase/auth/api/internal/zzeq;-><init>(Landroid/os/IBinder;)V

    .line 521
    :goto_24f
    invoke-virtual {p0, p1, p4}, Lcom/google/firebase/auth/api/internal/zzes;->zza(Lcom/google/android/gms/internal/firebase_auth/zzcb;Lcom/google/firebase/auth/api/internal/zzeo;)V

    goto/16 :goto_88c

    .line 501
    :pswitch_254
    sget-object p1, Lcom/google/android/gms/internal/firebase_auth/zzch;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/firebase_auth/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzch;

    .line 502
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_263

    goto :goto_273

    .line 505
    :cond_263
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 506
    instance-of v0, p4, Lcom/google/firebase/auth/api/internal/zzeo;

    if-eqz v0, :cond_26e

    .line 507
    check-cast p4, Lcom/google/firebase/auth/api/internal/zzeo;

    goto :goto_273

    .line 508
    :cond_26e
    new-instance p4, Lcom/google/firebase/auth/api/internal/zzeq;

    invoke-direct {p4, p2}, Lcom/google/firebase/auth/api/internal/zzeq;-><init>(Landroid/os/IBinder;)V

    .line 510
    :goto_273
    invoke-virtual {p0, p1, p4}, Lcom/google/firebase/auth/api/internal/zzes;->zza(Lcom/google/android/gms/internal/firebase_auth/zzch;Lcom/google/firebase/auth/api/internal/zzeo;)V

    goto/16 :goto_88c

    .line 490
    :pswitch_278
    sget-object p1, Lcom/google/android/gms/internal/firebase_auth/zzdh;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/firebase_auth/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzdh;

    .line 491
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_287

    goto :goto_297

    .line 494
    :cond_287
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 495
    instance-of v0, p4, Lcom/google/firebase/auth/api/internal/zzeo;

    if-eqz v0, :cond_292

    .line 496
    check-cast p4, Lcom/google/firebase/auth/api/internal/zzeo;

    goto :goto_297

    .line 497
    :cond_292
    new-instance p4, Lcom/google/firebase/auth/api/internal/zzeq;

    invoke-direct {p4, p2}, Lcom/google/firebase/auth/api/internal/zzeq;-><init>(Landroid/os/IBinder;)V

    .line 499
    :goto_297
    invoke-virtual {p0, p1, p4}, Lcom/google/firebase/auth/api/internal/zzes;->zza(Lcom/google/android/gms/internal/firebase_auth/zzdh;Lcom/google/firebase/auth/api/internal/zzeo;)V

    goto/16 :goto_88c

    .line 479
    :pswitch_29c
    sget-object p1, Lcom/google/android/gms/internal/firebase_auth/zzcx;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/firebase_auth/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzcx;

    .line 480
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_2ab

    goto :goto_2bb

    .line 483
    :cond_2ab
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 484
    instance-of v0, p4, Lcom/google/firebase/auth/api/internal/zzeo;

    if-eqz v0, :cond_2b6

    .line 485
    check-cast p4, Lcom/google/firebase/auth/api/internal/zzeo;

    goto :goto_2bb

    .line 486
    :cond_2b6
    new-instance p4, Lcom/google/firebase/auth/api/internal/zzeq;

    invoke-direct {p4, p2}, Lcom/google/firebase/auth/api/internal/zzeq;-><init>(Landroid/os/IBinder;)V

    .line 488
    :goto_2bb
    invoke-virtual {p0, p1, p4}, Lcom/google/firebase/auth/api/internal/zzes;->zza(Lcom/google/android/gms/internal/firebase_auth/zzcx;Lcom/google/firebase/auth/api/internal/zzeo;)V

    goto/16 :goto_88c

    .line 468
    :pswitch_2c0
    sget-object p1, Lcom/google/android/gms/internal/firebase_auth/zzeb;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/firebase_auth/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzeb;

    .line 469
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_2cf

    goto :goto_2df

    .line 472
    :cond_2cf
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 473
    instance-of v0, p4, Lcom/google/firebase/auth/api/internal/zzeo;

    if-eqz v0, :cond_2da

    .line 474
    check-cast p4, Lcom/google/firebase/auth/api/internal/zzeo;

    goto :goto_2df

    .line 475
    :cond_2da
    new-instance p4, Lcom/google/firebase/auth/api/internal/zzeq;

    invoke-direct {p4, p2}, Lcom/google/firebase/auth/api/internal/zzeq;-><init>(Landroid/os/IBinder;)V

    .line 477
    :goto_2df
    invoke-virtual {p0, p1, p4}, Lcom/google/firebase/auth/api/internal/zzes;->zza(Lcom/google/android/gms/internal/firebase_auth/zzeb;Lcom/google/firebase/auth/api/internal/zzeo;)V

    goto/16 :goto_88c

    .line 457
    :pswitch_2e4
    sget-object p1, Lcom/google/android/gms/internal/firebase_auth/zzdz;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/firebase_auth/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzdz;

    .line 458
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_2f3

    goto :goto_303

    .line 461
    :cond_2f3
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 462
    instance-of v0, p4, Lcom/google/firebase/auth/api/internal/zzeo;

    if-eqz v0, :cond_2fe

    .line 463
    check-cast p4, Lcom/google/firebase/auth/api/internal/zzeo;

    goto :goto_303

    .line 464
    :cond_2fe
    new-instance p4, Lcom/google/firebase/auth/api/internal/zzeq;

    invoke-direct {p4, p2}, Lcom/google/firebase/auth/api/internal/zzeq;-><init>(Landroid/os/IBinder;)V

    .line 466
    :goto_303
    invoke-virtual {p0, p1, p4}, Lcom/google/firebase/auth/api/internal/zzes;->zza(Lcom/google/android/gms/internal/firebase_auth/zzdz;Lcom/google/firebase/auth/api/internal/zzeo;)V

    goto/16 :goto_88c

    .line 446
    :pswitch_308
    sget-object p1, Lcom/google/android/gms/internal/firebase_auth/zzct;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/firebase_auth/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzct;

    .line 447
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_317

    goto :goto_327

    .line 450
    :cond_317
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 451
    instance-of v0, p4, Lcom/google/firebase/auth/api/internal/zzeo;

    if-eqz v0, :cond_322

    .line 452
    check-cast p4, Lcom/google/firebase/auth/api/internal/zzeo;

    goto :goto_327

    .line 453
    :cond_322
    new-instance p4, Lcom/google/firebase/auth/api/internal/zzeq;

    invoke-direct {p4, p2}, Lcom/google/firebase/auth/api/internal/zzeq;-><init>(Landroid/os/IBinder;)V

    .line 455
    :goto_327
    invoke-virtual {p0, p1, p4}, Lcom/google/firebase/auth/api/internal/zzes;->zza(Lcom/google/android/gms/internal/firebase_auth/zzct;Lcom/google/firebase/auth/api/internal/zzeo;)V

    goto/16 :goto_88c

    .line 435
    :pswitch_32c
    sget-object p1, Lcom/google/android/gms/internal/firebase_auth/zzcr;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/firebase_auth/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzcr;

    .line 436
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_33b

    goto :goto_34b

    .line 439
    :cond_33b
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 440
    instance-of v0, p4, Lcom/google/firebase/auth/api/internal/zzeo;

    if-eqz v0, :cond_346

    .line 441
    check-cast p4, Lcom/google/firebase/auth/api/internal/zzeo;

    goto :goto_34b

    .line 442
    :cond_346
    new-instance p4, Lcom/google/firebase/auth/api/internal/zzeq;

    invoke-direct {p4, p2}, Lcom/google/firebase/auth/api/internal/zzeq;-><init>(Landroid/os/IBinder;)V

    .line 444
    :goto_34b
    invoke-virtual {p0, p1, p4}, Lcom/google/firebase/auth/api/internal/zzes;->zza(Lcom/google/android/gms/internal/firebase_auth/zzcr;Lcom/google/firebase/auth/api/internal/zzeo;)V

    goto/16 :goto_88c

    .line 424
    :pswitch_350
    sget-object p1, Lcom/google/android/gms/internal/firebase_auth/zzcp;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/firebase_auth/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzcp;

    .line 425
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_35f

    goto :goto_36f

    .line 428
    :cond_35f
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 429
    instance-of v0, p4, Lcom/google/firebase/auth/api/internal/zzeo;

    if-eqz v0, :cond_36a

    .line 430
    check-cast p4, Lcom/google/firebase/auth/api/internal/zzeo;

    goto :goto_36f

    .line 431
    :cond_36a
    new-instance p4, Lcom/google/firebase/auth/api/internal/zzeq;

    invoke-direct {p4, p2}, Lcom/google/firebase/auth/api/internal/zzeq;-><init>(Landroid/os/IBinder;)V

    .line 433
    :goto_36f
    invoke-virtual {p0, p1, p4}, Lcom/google/firebase/auth/api/internal/zzes;->zza(Lcom/google/android/gms/internal/firebase_auth/zzcp;Lcom/google/firebase/auth/api/internal/zzeo;)V

    goto/16 :goto_88c

    .line 413
    :pswitch_374
    sget-object p1, Lcom/google/android/gms/internal/firebase_auth/zzdn;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/firebase_auth/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzdn;

    .line 414
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_383

    goto :goto_393

    .line 417
    :cond_383
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 418
    instance-of v0, p4, Lcom/google/firebase/auth/api/internal/zzeo;

    if-eqz v0, :cond_38e

    .line 419
    check-cast p4, Lcom/google/firebase/auth/api/internal/zzeo;

    goto :goto_393

    .line 420
    :cond_38e
    new-instance p4, Lcom/google/firebase/auth/api/internal/zzeq;

    invoke-direct {p4, p2}, Lcom/google/firebase/auth/api/internal/zzeq;-><init>(Landroid/os/IBinder;)V

    .line 422
    :goto_393
    invoke-virtual {p0, p1, p4}, Lcom/google/firebase/auth/api/internal/zzes;->zza(Lcom/google/android/gms/internal/firebase_auth/zzdn;Lcom/google/firebase/auth/api/internal/zzeo;)V

    goto/16 :goto_88c

    .line 402
    :pswitch_398
    sget-object p1, Lcom/google/android/gms/internal/firebase_auth/zzcf;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/firebase_auth/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzcf;

    .line 403
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_3a7

    goto :goto_3b7

    .line 406
    :cond_3a7
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 407
    instance-of v0, p4, Lcom/google/firebase/auth/api/internal/zzeo;

    if-eqz v0, :cond_3b2

    .line 408
    check-cast p4, Lcom/google/firebase/auth/api/internal/zzeo;

    goto :goto_3b7

    .line 409
    :cond_3b2
    new-instance p4, Lcom/google/firebase/auth/api/internal/zzeq;

    invoke-direct {p4, p2}, Lcom/google/firebase/auth/api/internal/zzeq;-><init>(Landroid/os/IBinder;)V

    .line 411
    :goto_3b7
    invoke-virtual {p0, p1, p4}, Lcom/google/firebase/auth/api/internal/zzes;->zza(Lcom/google/android/gms/internal/firebase_auth/zzcf;Lcom/google/firebase/auth/api/internal/zzeo;)V

    goto/16 :goto_88c

    .line 391
    :pswitch_3bc
    sget-object p1, Lcom/google/android/gms/internal/firebase_auth/zzbz;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/firebase_auth/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzbz;

    .line 392
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_3cb

    goto :goto_3db

    .line 395
    :cond_3cb
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 396
    instance-of v0, p4, Lcom/google/firebase/auth/api/internal/zzeo;

    if-eqz v0, :cond_3d6

    .line 397
    check-cast p4, Lcom/google/firebase/auth/api/internal/zzeo;

    goto :goto_3db

    .line 398
    :cond_3d6
    new-instance p4, Lcom/google/firebase/auth/api/internal/zzeq;

    invoke-direct {p4, p2}, Lcom/google/firebase/auth/api/internal/zzeq;-><init>(Landroid/os/IBinder;)V

    .line 400
    :goto_3db
    invoke-virtual {p0, p1, p4}, Lcom/google/firebase/auth/api/internal/zzes;->zza(Lcom/google/android/gms/internal/firebase_auth/zzbz;Lcom/google/firebase/auth/api/internal/zzeo;)V

    goto/16 :goto_88c

    .line 380
    :pswitch_3e0
    sget-object p1, Lcom/google/android/gms/internal/firebase_auth/zzbx;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/firebase_auth/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzbx;

    .line 381
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_3ef

    goto :goto_3ff

    .line 384
    :cond_3ef
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 385
    instance-of v0, p4, Lcom/google/firebase/auth/api/internal/zzeo;

    if-eqz v0, :cond_3fa

    .line 386
    check-cast p4, Lcom/google/firebase/auth/api/internal/zzeo;

    goto :goto_3ff

    .line 387
    :cond_3fa
    new-instance p4, Lcom/google/firebase/auth/api/internal/zzeq;

    invoke-direct {p4, p2}, Lcom/google/firebase/auth/api/internal/zzeq;-><init>(Landroid/os/IBinder;)V

    .line 389
    :goto_3ff
    invoke-virtual {p0, p1, p4}, Lcom/google/firebase/auth/api/internal/zzes;->zza(Lcom/google/android/gms/internal/firebase_auth/zzbx;Lcom/google/firebase/auth/api/internal/zzeo;)V

    goto/16 :goto_88c

    .line 369
    :pswitch_404
    sget-object p1, Lcom/google/android/gms/internal/firebase_auth/zzed;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/firebase_auth/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzed;

    .line 370
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_413

    goto :goto_423

    .line 373
    :cond_413
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 374
    instance-of v0, p4, Lcom/google/firebase/auth/api/internal/zzeo;

    if-eqz v0, :cond_41e

    .line 375
    check-cast p4, Lcom/google/firebase/auth/api/internal/zzeo;

    goto :goto_423

    .line 376
    :cond_41e
    new-instance p4, Lcom/google/firebase/auth/api/internal/zzeq;

    invoke-direct {p4, p2}, Lcom/google/firebase/auth/api/internal/zzeq;-><init>(Landroid/os/IBinder;)V

    .line 378
    :goto_423
    invoke-virtual {p0, p1, p4}, Lcom/google/firebase/auth/api/internal/zzes;->zza(Lcom/google/android/gms/internal/firebase_auth/zzed;Lcom/google/firebase/auth/api/internal/zzeo;)V

    goto/16 :goto_88c

    .line 358
    :pswitch_428
    sget-object p1, Lcom/google/android/gms/internal/firebase_auth/zzdj;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/firebase_auth/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzdj;

    .line 359
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_437

    goto :goto_447

    .line 362
    :cond_437
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 363
    instance-of v0, p4, Lcom/google/firebase/auth/api/internal/zzeo;

    if-eqz v0, :cond_442

    .line 364
    check-cast p4, Lcom/google/firebase/auth/api/internal/zzeo;

    goto :goto_447

    .line 365
    :cond_442
    new-instance p4, Lcom/google/firebase/auth/api/internal/zzeq;

    invoke-direct {p4, p2}, Lcom/google/firebase/auth/api/internal/zzeq;-><init>(Landroid/os/IBinder;)V

    .line 367
    :goto_447
    invoke-virtual {p0, p1, p4}, Lcom/google/firebase/auth/api/internal/zzes;->zza(Lcom/google/android/gms/internal/firebase_auth/zzdj;Lcom/google/firebase/auth/api/internal/zzeo;)V

    goto/16 :goto_88c

    .line 347
    :pswitch_44c
    sget-object p1, Lcom/google/android/gms/internal/firebase_auth/zzdl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/firebase_auth/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzdl;

    .line 348
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_45b

    goto :goto_46b

    .line 351
    :cond_45b
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 352
    instance-of v0, p4, Lcom/google/firebase/auth/api/internal/zzeo;

    if-eqz v0, :cond_466

    .line 353
    check-cast p4, Lcom/google/firebase/auth/api/internal/zzeo;

    goto :goto_46b

    .line 354
    :cond_466
    new-instance p4, Lcom/google/firebase/auth/api/internal/zzeq;

    invoke-direct {p4, p2}, Lcom/google/firebase/auth/api/internal/zzeq;-><init>(Landroid/os/IBinder;)V

    .line 356
    :goto_46b
    invoke-virtual {p0, p1, p4}, Lcom/google/firebase/auth/api/internal/zzes;->zza(Lcom/google/android/gms/internal/firebase_auth/zzdl;Lcom/google/firebase/auth/api/internal/zzeo;)V

    goto/16 :goto_88c

    .line 336
    :pswitch_470
    sget-object p1, Lcom/google/android/gms/internal/firebase_auth/zzcn;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/firebase_auth/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzcn;

    .line 337
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_47f

    goto :goto_48f

    .line 340
    :cond_47f
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 341
    instance-of v0, p4, Lcom/google/firebase/auth/api/internal/zzeo;

    if-eqz v0, :cond_48a

    .line 342
    check-cast p4, Lcom/google/firebase/auth/api/internal/zzeo;

    goto :goto_48f

    .line 343
    :cond_48a
    new-instance p4, Lcom/google/firebase/auth/api/internal/zzeq;

    invoke-direct {p4, p2}, Lcom/google/firebase/auth/api/internal/zzeq;-><init>(Landroid/os/IBinder;)V

    .line 345
    :goto_48f
    invoke-virtual {p0, p1, p4}, Lcom/google/firebase/auth/api/internal/zzes;->zza(Lcom/google/android/gms/internal/firebase_auth/zzcn;Lcom/google/firebase/auth/api/internal/zzeo;)V

    goto/16 :goto_88c

    .line 325
    :pswitch_494
    sget-object p1, Lcom/google/firebase/auth/EmailAuthCredential;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/firebase_auth/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/auth/EmailAuthCredential;

    .line 326
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_4a3

    goto :goto_4b3

    .line 329
    :cond_4a3
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 330
    instance-of v0, p4, Lcom/google/firebase/auth/api/internal/zzeo;

    if-eqz v0, :cond_4ae

    .line 331
    check-cast p4, Lcom/google/firebase/auth/api/internal/zzeo;

    goto :goto_4b3

    .line 332
    :cond_4ae
    new-instance p4, Lcom/google/firebase/auth/api/internal/zzeq;

    invoke-direct {p4, p2}, Lcom/google/firebase/auth/api/internal/zzeq;-><init>(Landroid/os/IBinder;)V

    .line 334
    :goto_4b3
    invoke-virtual {p0, p1, p4}, Lcom/google/firebase/auth/api/internal/zzes;->zza(Lcom/google/firebase/auth/EmailAuthCredential;Lcom/google/firebase/auth/api/internal/zzeo;)V

    goto/16 :goto_88c

    .line 313
    :pswitch_4b8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 314
    sget-object v1, Lcom/google/firebase/auth/ActionCodeSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v1}, Lcom/google/android/gms/internal/firebase_auth/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/auth/ActionCodeSettings;

    .line 315
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_4cb

    goto :goto_4db

    .line 318
    :cond_4cb
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 319
    instance-of v0, p4, Lcom/google/firebase/auth/api/internal/zzeo;

    if-eqz v0, :cond_4d6

    .line 320
    check-cast p4, Lcom/google/firebase/auth/api/internal/zzeo;

    goto :goto_4db

    .line 321
    :cond_4d6
    new-instance p4, Lcom/google/firebase/auth/api/internal/zzeq;

    invoke-direct {p4, p2}, Lcom/google/firebase/auth/api/internal/zzeq;-><init>(Landroid/os/IBinder;)V

    .line 323
    :goto_4db
    invoke-virtual {p0, p1, v1, p4}, Lcom/google/firebase/auth/api/internal/zzes;->zzc(Ljava/lang/String;Lcom/google/firebase/auth/ActionCodeSettings;Lcom/google/firebase/auth/api/internal/zzeo;)V

    goto/16 :goto_88c

    .line 302
    :pswitch_4e0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 303
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_4eb

    goto :goto_4fb

    .line 306
    :cond_4eb
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 307
    instance-of v0, p4, Lcom/google/firebase/auth/api/internal/zzeo;

    if-eqz v0, :cond_4f6

    .line 308
    check-cast p4, Lcom/google/firebase/auth/api/internal/zzeo;

    goto :goto_4fb

    .line 309
    :cond_4f6
    new-instance p4, Lcom/google/firebase/auth/api/internal/zzeq;

    invoke-direct {p4, p2}, Lcom/google/firebase/auth/api/internal/zzeq;-><init>(Landroid/os/IBinder;)V

    .line 311
    :goto_4fb
    invoke-virtual {p0, p1, p4}, Lcom/google/firebase/auth/api/internal/zzes;->zzk(Ljava/lang/String;Lcom/google/firebase/auth/api/internal/zzeo;)V

    goto/16 :goto_88c

    .line 290
    :pswitch_500
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 291
    sget-object v1, Lcom/google/firebase/auth/ActionCodeSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v1}, Lcom/google/android/gms/internal/firebase_auth/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/auth/ActionCodeSettings;

    .line 292
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_513

    goto :goto_523

    .line 295
    :cond_513
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 296
    instance-of v0, p4, Lcom/google/firebase/auth/api/internal/zzeo;

    if-eqz v0, :cond_51e

    .line 297
    check-cast p4, Lcom/google/firebase/auth/api/internal/zzeo;

    goto :goto_523

    .line 298
    :cond_51e
    new-instance p4, Lcom/google/firebase/auth/api/internal/zzeq;

    invoke-direct {p4, p2}, Lcom/google/firebase/auth/api/internal/zzeq;-><init>(Landroid/os/IBinder;)V

    .line 300
    :goto_523
    invoke-virtual {p0, p1, v1, p4}, Lcom/google/firebase/auth/api/internal/zzes;->zzb(Ljava/lang/String;Lcom/google/firebase/auth/ActionCodeSettings;Lcom/google/firebase/auth/api/internal/zzeo;)V

    goto/16 :goto_88c

    .line 278
    :pswitch_528
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 279
    sget-object v1, Lcom/google/firebase/auth/ActionCodeSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v1}, Lcom/google/android/gms/internal/firebase_auth/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/auth/ActionCodeSettings;

    .line 280
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_53b

    goto :goto_54b

    .line 283
    :cond_53b
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 284
    instance-of v0, p4, Lcom/google/firebase/auth/api/internal/zzeo;

    if-eqz v0, :cond_546

    .line 285
    check-cast p4, Lcom/google/firebase/auth/api/internal/zzeo;

    goto :goto_54b

    .line 286
    :cond_546
    new-instance p4, Lcom/google/firebase/auth/api/internal/zzeq;

    invoke-direct {p4, p2}, Lcom/google/firebase/auth/api/internal/zzeq;-><init>(Landroid/os/IBinder;)V

    .line 288
    :goto_54b
    invoke-virtual {p0, p1, v1, p4}, Lcom/google/firebase/auth/api/internal/zzes;->zza(Ljava/lang/String;Lcom/google/firebase/auth/ActionCodeSettings;Lcom/google/firebase/auth/api/internal/zzeo;)V

    goto/16 :goto_88c

    .line 266
    :pswitch_550
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 267
    sget-object v1, Lcom/google/firebase/auth/PhoneAuthCredential;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v1}, Lcom/google/android/gms/internal/firebase_auth/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/auth/PhoneAuthCredential;

    .line 268
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_563

    goto :goto_573

    .line 271
    :cond_563
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 272
    instance-of v0, p4, Lcom/google/firebase/auth/api/internal/zzeo;

    if-eqz v0, :cond_56e

    .line 273
    check-cast p4, Lcom/google/firebase/auth/api/internal/zzeo;

    goto :goto_573

    .line 274
    :cond_56e
    new-instance p4, Lcom/google/firebase/auth/api/internal/zzeq;

    invoke-direct {p4, p2}, Lcom/google/firebase/auth/api/internal/zzeq;-><init>(Landroid/os/IBinder;)V

    .line 276
    :goto_573
    invoke-virtual {p0, p1, v1, p4}, Lcom/google/firebase/auth/api/internal/zzes;->zza(Ljava/lang/String;Lcom/google/firebase/auth/PhoneAuthCredential;Lcom/google/firebase/auth/api/internal/zzeo;)V

    goto/16 :goto_88c

    .line 255
    :pswitch_578
    sget-object p1, Lcom/google/firebase/auth/PhoneAuthCredential;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/firebase_auth/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/auth/PhoneAuthCredential;

    .line 256
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_587

    goto :goto_597

    .line 259
    :cond_587
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 260
    instance-of v0, p4, Lcom/google/firebase/auth/api/internal/zzeo;

    if-eqz v0, :cond_592

    .line 261
    check-cast p4, Lcom/google/firebase/auth/api/internal/zzeo;

    goto :goto_597

    .line 262
    :cond_592
    new-instance p4, Lcom/google/firebase/auth/api/internal/zzeq;

    invoke-direct {p4, p2}, Lcom/google/firebase/auth/api/internal/zzeq;-><init>(Landroid/os/IBinder;)V

    .line 264
    :goto_597
    invoke-virtual {p0, p1, p4}, Lcom/google/firebase/auth/api/internal/zzes;->zza(Lcom/google/firebase/auth/PhoneAuthCredential;Lcom/google/firebase/auth/api/internal/zzeo;)V

    goto/16 :goto_88c

    .line 244
    :pswitch_59c
    sget-object p1, Lcom/google/android/gms/internal/firebase_auth/zzfr;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/firebase_auth/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzfr;

    .line 245
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_5ab

    goto :goto_5bb

    .line 248
    :cond_5ab
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 249
    instance-of v0, p4, Lcom/google/firebase/auth/api/internal/zzeo;

    if-eqz v0, :cond_5b6

    .line 250
    check-cast p4, Lcom/google/firebase/auth/api/internal/zzeo;

    goto :goto_5bb

    .line 251
    :cond_5b6
    new-instance p4, Lcom/google/firebase/auth/api/internal/zzeq;

    invoke-direct {p4, p2}, Lcom/google/firebase/auth/api/internal/zzeq;-><init>(Landroid/os/IBinder;)V

    .line 253
    :goto_5bb
    invoke-virtual {p0, p1, p4}, Lcom/google/firebase/auth/api/internal/zzes;->zza(Lcom/google/android/gms/internal/firebase_auth/zzfr;Lcom/google/firebase/auth/api/internal/zzeo;)V

    goto/16 :goto_88c

    .line 232
    :pswitch_5c0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 233
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 234
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_5cf

    goto :goto_5df

    .line 237
    :cond_5cf
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 238
    instance-of v0, p4, Lcom/google/firebase/auth/api/internal/zzeo;

    if-eqz v0, :cond_5da

    .line 239
    check-cast p4, Lcom/google/firebase/auth/api/internal/zzeo;

    goto :goto_5df

    .line 240
    :cond_5da
    new-instance p4, Lcom/google/firebase/auth/api/internal/zzeq;

    invoke-direct {p4, p2}, Lcom/google/firebase/auth/api/internal/zzeq;-><init>(Landroid/os/IBinder;)V

    .line 242
    :goto_5df
    invoke-virtual {p0, p1, v1, p4}, Lcom/google/firebase/auth/api/internal/zzes;->zzf(Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/auth/api/internal/zzeo;)V

    goto/16 :goto_88c

    .line 221
    :pswitch_5e4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 222
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_5ef

    goto :goto_5ff

    .line 225
    :cond_5ef
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 226
    instance-of v0, p4, Lcom/google/firebase/auth/api/internal/zzeo;

    if-eqz v0, :cond_5fa

    .line 227
    check-cast p4, Lcom/google/firebase/auth/api/internal/zzeo;

    goto :goto_5ff

    .line 228
    :cond_5fa
    new-instance p4, Lcom/google/firebase/auth/api/internal/zzeq;

    invoke-direct {p4, p2}, Lcom/google/firebase/auth/api/internal/zzeq;-><init>(Landroid/os/IBinder;)V

    .line 230
    :goto_5ff
    invoke-virtual {p0, p1, p4}, Lcom/google/firebase/auth/api/internal/zzes;->zzj(Ljava/lang/String;Lcom/google/firebase/auth/api/internal/zzeo;)V

    goto/16 :goto_88c

    .line 210
    :pswitch_604
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 211
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_60f

    goto :goto_61f

    .line 214
    :cond_60f
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 215
    instance-of v0, p4, Lcom/google/firebase/auth/api/internal/zzeo;

    if-eqz v0, :cond_61a

    .line 216
    check-cast p4, Lcom/google/firebase/auth/api/internal/zzeo;

    goto :goto_61f

    .line 217
    :cond_61a
    new-instance p4, Lcom/google/firebase/auth/api/internal/zzeq;

    invoke-direct {p4, p2}, Lcom/google/firebase/auth/api/internal/zzeq;-><init>(Landroid/os/IBinder;)V

    .line 219
    :goto_61f
    invoke-virtual {p0, p1, p4}, Lcom/google/firebase/auth/api/internal/zzes;->zzi(Ljava/lang/String;Lcom/google/firebase/auth/api/internal/zzeo;)V

    goto/16 :goto_88c

    .line 199
    :pswitch_624
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 200
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_62f

    goto :goto_63f

    .line 203
    :cond_62f
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 204
    instance-of v0, p4, Lcom/google/firebase/auth/api/internal/zzeo;

    if-eqz v0, :cond_63a

    .line 205
    check-cast p4, Lcom/google/firebase/auth/api/internal/zzeo;

    goto :goto_63f

    .line 206
    :cond_63a
    new-instance p4, Lcom/google/firebase/auth/api/internal/zzeq;

    invoke-direct {p4, p2}, Lcom/google/firebase/auth/api/internal/zzeq;-><init>(Landroid/os/IBinder;)V

    .line 208
    :goto_63f
    invoke-virtual {p0, p1, p4}, Lcom/google/firebase/auth/api/internal/zzes;->zzh(Ljava/lang/String;Lcom/google/firebase/auth/api/internal/zzeo;)V

    goto/16 :goto_88c

    .line 188
    :pswitch_644
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 189
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_64f

    goto :goto_65f

    .line 192
    :cond_64f
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 193
    instance-of v0, p4, Lcom/google/firebase/auth/api/internal/zzeo;

    if-eqz v0, :cond_65a

    .line 194
    check-cast p4, Lcom/google/firebase/auth/api/internal/zzeo;

    goto :goto_65f

    .line 195
    :cond_65a
    new-instance p4, Lcom/google/firebase/auth/api/internal/zzeq;

    invoke-direct {p4, p2}, Lcom/google/firebase/auth/api/internal/zzeq;-><init>(Landroid/os/IBinder;)V

    .line 197
    :goto_65f
    invoke-virtual {p0, p1, p4}, Lcom/google/firebase/auth/api/internal/zzes;->zzg(Ljava/lang/String;Lcom/google/firebase/auth/api/internal/zzeo;)V

    goto/16 :goto_88c

    .line 178
    :pswitch_664
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_66b

    goto :goto_67c

    .line 181
    :cond_66b
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 182
    instance-of p4, p2, Lcom/google/firebase/auth/api/internal/zzeo;

    if-eqz p4, :cond_677

    .line 183
    move-object p4, p2

    check-cast p4, Lcom/google/firebase/auth/api/internal/zzeo;

    goto :goto_67c

    .line 184
    :cond_677
    new-instance p4, Lcom/google/firebase/auth/api/internal/zzeq;

    invoke-direct {p4, p1}, Lcom/google/firebase/auth/api/internal/zzeq;-><init>(Landroid/os/IBinder;)V

    .line 186
    :goto_67c
    invoke-virtual {p0, p4}, Lcom/google/firebase/auth/api/internal/zzes;->zza(Lcom/google/firebase/auth/api/internal/zzeo;)V

    goto/16 :goto_88c

    .line 167
    :pswitch_681
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 168
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_68c

    goto :goto_69c

    .line 171
    :cond_68c
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 172
    instance-of v0, p4, Lcom/google/firebase/auth/api/internal/zzeo;

    if-eqz v0, :cond_697

    .line 173
    check-cast p4, Lcom/google/firebase/auth/api/internal/zzeo;

    goto :goto_69c

    .line 174
    :cond_697
    new-instance p4, Lcom/google/firebase/auth/api/internal/zzeq;

    invoke-direct {p4, p2}, Lcom/google/firebase/auth/api/internal/zzeq;-><init>(Landroid/os/IBinder;)V

    .line 176
    :goto_69c
    invoke-virtual {p0, p1, p4}, Lcom/google/firebase/auth/api/internal/zzes;->zzf(Ljava/lang/String;Lcom/google/firebase/auth/api/internal/zzeo;)V

    goto/16 :goto_88c

    .line 155
    :pswitch_6a1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 157
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_6b0

    goto :goto_6c0

    .line 160
    :cond_6b0
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 161
    instance-of v0, p4, Lcom/google/firebase/auth/api/internal/zzeo;

    if-eqz v0, :cond_6bb

    .line 162
    check-cast p4, Lcom/google/firebase/auth/api/internal/zzeo;

    goto :goto_6c0

    .line 163
    :cond_6bb
    new-instance p4, Lcom/google/firebase/auth/api/internal/zzeq;

    invoke-direct {p4, p2}, Lcom/google/firebase/auth/api/internal/zzeq;-><init>(Landroid/os/IBinder;)V

    .line 165
    :goto_6c0
    invoke-virtual {p0, p1, v1, p4}, Lcom/google/firebase/auth/api/internal/zzes;->zze(Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/auth/api/internal/zzeo;)V

    goto/16 :goto_88c

    .line 144
    :pswitch_6c5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_6d0

    goto :goto_6e0

    .line 148
    :cond_6d0
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 149
    instance-of v0, p4, Lcom/google/firebase/auth/api/internal/zzeo;

    if-eqz v0, :cond_6db

    .line 150
    check-cast p4, Lcom/google/firebase/auth/api/internal/zzeo;

    goto :goto_6e0

    .line 151
    :cond_6db
    new-instance p4, Lcom/google/firebase/auth/api/internal/zzeq;

    invoke-direct {p4, p2}, Lcom/google/firebase/auth/api/internal/zzeq;-><init>(Landroid/os/IBinder;)V

    .line 153
    :goto_6e0
    invoke-virtual {p0, p1, p4}, Lcom/google/firebase/auth/api/internal/zzes;->zze(Ljava/lang/String;Lcom/google/firebase/auth/api/internal/zzeo;)V

    goto/16 :goto_88c

    .line 132
    :pswitch_6e5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 133
    sget-object v1, Lcom/google/android/gms/internal/firebase_auth/zzfy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v1}, Lcom/google/android/gms/internal/firebase_auth/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase_auth/zzfy;

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_6f8

    goto :goto_708

    .line 137
    :cond_6f8
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 138
    instance-of v0, p4, Lcom/google/firebase/auth/api/internal/zzeo;

    if-eqz v0, :cond_703

    .line 139
    check-cast p4, Lcom/google/firebase/auth/api/internal/zzeo;

    goto :goto_708

    .line 140
    :cond_703
    new-instance p4, Lcom/google/firebase/auth/api/internal/zzeq;

    invoke-direct {p4, p2}, Lcom/google/firebase/auth/api/internal/zzeq;-><init>(Landroid/os/IBinder;)V

    .line 142
    :goto_708
    invoke-virtual {p0, p1, v1, p4}, Lcom/google/firebase/auth/api/internal/zzes;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase_auth/zzfy;Lcom/google/firebase/auth/api/internal/zzeo;)V

    goto/16 :goto_88c

    .line 119
    :pswitch_70d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_720

    goto :goto_730

    .line 125
    :cond_720
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 126
    instance-of v0, p4, Lcom/google/firebase/auth/api/internal/zzeo;

    if-eqz v0, :cond_72b

    .line 127
    check-cast p4, Lcom/google/firebase/auth/api/internal/zzeo;

    goto :goto_730

    .line 128
    :cond_72b
    new-instance p4, Lcom/google/firebase/auth/api/internal/zzeq;

    invoke-direct {p4, p2}, Lcom/google/firebase/auth/api/internal/zzeq;-><init>(Landroid/os/IBinder;)V

    .line 130
    :goto_730
    invoke-virtual {p0, p1, v1, v2, p4}, Lcom/google/firebase/auth/api/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/auth/api/internal/zzeo;)V

    goto/16 :goto_88c

    .line 108
    :pswitch_735
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_740

    goto :goto_750

    .line 112
    :cond_740
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 113
    instance-of v0, p4, Lcom/google/firebase/auth/api/internal/zzeo;

    if-eqz v0, :cond_74b

    .line 114
    check-cast p4, Lcom/google/firebase/auth/api/internal/zzeo;

    goto :goto_750

    .line 115
    :cond_74b
    new-instance p4, Lcom/google/firebase/auth/api/internal/zzeq;

    invoke-direct {p4, p2}, Lcom/google/firebase/auth/api/internal/zzeq;-><init>(Landroid/os/IBinder;)V

    .line 117
    :goto_750
    invoke-virtual {p0, p1, p4}, Lcom/google/firebase/auth/api/internal/zzes;->zzd(Ljava/lang/String;Lcom/google/firebase/auth/api/internal/zzeo;)V

    goto/16 :goto_88c

    .line 97
    :pswitch_755
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_760

    goto :goto_770

    .line 101
    :cond_760
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 102
    instance-of v0, p4, Lcom/google/firebase/auth/api/internal/zzeo;

    if-eqz v0, :cond_76b

    .line 103
    check-cast p4, Lcom/google/firebase/auth/api/internal/zzeo;

    goto :goto_770

    .line 104
    :cond_76b
    new-instance p4, Lcom/google/firebase/auth/api/internal/zzeq;

    invoke-direct {p4, p2}, Lcom/google/firebase/auth/api/internal/zzeq;-><init>(Landroid/os/IBinder;)V

    .line 106
    :goto_770
    invoke-virtual {p0, p1, p4}, Lcom/google/firebase/auth/api/internal/zzes;->zzc(Ljava/lang/String;Lcom/google/firebase/auth/api/internal/zzeo;)V

    goto/16 :goto_88c

    .line 85
    :pswitch_775
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_784

    goto :goto_794

    .line 90
    :cond_784
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 91
    instance-of v0, p4, Lcom/google/firebase/auth/api/internal/zzeo;

    if-eqz v0, :cond_78f

    .line 92
    check-cast p4, Lcom/google/firebase/auth/api/internal/zzeo;

    goto :goto_794

    .line 93
    :cond_78f
    new-instance p4, Lcom/google/firebase/auth/api/internal/zzeq;

    invoke-direct {p4, p2}, Lcom/google/firebase/auth/api/internal/zzeq;-><init>(Landroid/os/IBinder;)V

    .line 95
    :goto_794
    invoke-virtual {p0, p1, v1, p4}, Lcom/google/firebase/auth/api/internal/zzes;->zzd(Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/auth/api/internal/zzeo;)V

    goto/16 :goto_88c

    .line 73
    :pswitch_799
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_7a8

    goto :goto_7b8

    .line 78
    :cond_7a8
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 79
    instance-of v0, p4, Lcom/google/firebase/auth/api/internal/zzeo;

    if-eqz v0, :cond_7b3

    .line 80
    check-cast p4, Lcom/google/firebase/auth/api/internal/zzeo;

    goto :goto_7b8

    .line 81
    :cond_7b3
    new-instance p4, Lcom/google/firebase/auth/api/internal/zzeq;

    invoke-direct {p4, p2}, Lcom/google/firebase/auth/api/internal/zzeq;-><init>(Landroid/os/IBinder;)V

    .line 83
    :goto_7b8
    invoke-virtual {p0, p1, v1, p4}, Lcom/google/firebase/auth/api/internal/zzes;->zzc(Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/auth/api/internal/zzeo;)V

    goto/16 :goto_88c

    .line 61
    :pswitch_7bd
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_7cc

    goto :goto_7dc

    .line 66
    :cond_7cc
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 67
    instance-of v0, p4, Lcom/google/firebase/auth/api/internal/zzeo;

    if-eqz v0, :cond_7d7

    .line 68
    check-cast p4, Lcom/google/firebase/auth/api/internal/zzeo;

    goto :goto_7dc

    .line 69
    :cond_7d7
    new-instance p4, Lcom/google/firebase/auth/api/internal/zzeq;

    invoke-direct {p4, p2}, Lcom/google/firebase/auth/api/internal/zzeq;-><init>(Landroid/os/IBinder;)V

    .line 71
    :goto_7dc
    invoke-virtual {p0, p1, v1, p4}, Lcom/google/firebase/auth/api/internal/zzes;->zzb(Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/auth/api/internal/zzeo;)V

    goto/16 :goto_88c

    .line 49
    :pswitch_7e1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_7f0

    goto :goto_800

    .line 54
    :cond_7f0
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 55
    instance-of v0, p4, Lcom/google/firebase/auth/api/internal/zzeo;

    if-eqz v0, :cond_7fb

    .line 56
    check-cast p4, Lcom/google/firebase/auth/api/internal/zzeo;

    goto :goto_800

    .line 57
    :cond_7fb
    new-instance p4, Lcom/google/firebase/auth/api/internal/zzeq;

    invoke-direct {p4, p2}, Lcom/google/firebase/auth/api/internal/zzeq;-><init>(Landroid/os/IBinder;)V

    .line 59
    :goto_800
    invoke-virtual {p0, p1, v1, p4}, Lcom/google/firebase/auth/api/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/auth/api/internal/zzeo;)V

    goto/16 :goto_88c

    .line 37
    :pswitch_805
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 38
    sget-object v1, Lcom/google/firebase/auth/UserProfileChangeRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v1}, Lcom/google/android/gms/internal/firebase_auth/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/auth/UserProfileChangeRequest;

    .line 39
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_818

    goto :goto_828

    .line 42
    :cond_818
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 43
    instance-of v0, p4, Lcom/google/firebase/auth/api/internal/zzeo;

    if-eqz v0, :cond_823

    .line 44
    check-cast p4, Lcom/google/firebase/auth/api/internal/zzeo;

    goto :goto_828

    .line 45
    :cond_823
    new-instance p4, Lcom/google/firebase/auth/api/internal/zzeq;

    invoke-direct {p4, p2}, Lcom/google/firebase/auth/api/internal/zzeq;-><init>(Landroid/os/IBinder;)V

    .line 47
    :goto_828
    invoke-virtual {p0, p1, v1, p4}, Lcom/google/firebase/auth/api/internal/zzes;->zza(Ljava/lang/String;Lcom/google/firebase/auth/UserProfileChangeRequest;Lcom/google/firebase/auth/api/internal/zzeo;)V

    goto :goto_88c

    .line 26
    :pswitch_82c
    sget-object p1, Lcom/google/android/gms/internal/firebase_auth/zzfy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/firebase_auth/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzfy;

    .line 27
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_83b

    goto :goto_84b

    .line 30
    :cond_83b
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 31
    instance-of v0, p4, Lcom/google/firebase/auth/api/internal/zzeo;

    if-eqz v0, :cond_846

    .line 32
    check-cast p4, Lcom/google/firebase/auth/api/internal/zzeo;

    goto :goto_84b

    .line 33
    :cond_846
    new-instance p4, Lcom/google/firebase/auth/api/internal/zzeq;

    invoke-direct {p4, p2}, Lcom/google/firebase/auth/api/internal/zzeq;-><init>(Landroid/os/IBinder;)V

    .line 35
    :goto_84b
    invoke-virtual {p0, p1, p4}, Lcom/google/firebase/auth/api/internal/zzes;->zza(Lcom/google/android/gms/internal/firebase_auth/zzfy;Lcom/google/firebase/auth/api/internal/zzeo;)V

    goto :goto_88c

    .line 15
    :pswitch_84f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 16
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_85a

    goto :goto_86a

    .line 19
    :cond_85a
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 20
    instance-of v0, p4, Lcom/google/firebase/auth/api/internal/zzeo;

    if-eqz v0, :cond_865

    .line 21
    check-cast p4, Lcom/google/firebase/auth/api/internal/zzeo;

    goto :goto_86a

    .line 22
    :cond_865
    new-instance p4, Lcom/google/firebase/auth/api/internal/zzeq;

    invoke-direct {p4, p2}, Lcom/google/firebase/auth/api/internal/zzeq;-><init>(Landroid/os/IBinder;)V

    .line 24
    :goto_86a
    invoke-virtual {p0, p1, p4}, Lcom/google/firebase/auth/api/internal/zzes;->zzb(Ljava/lang/String;Lcom/google/firebase/auth/api/internal/zzeo;)V

    goto :goto_88c

    .line 4
    :pswitch_86e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_879

    goto :goto_889

    .line 8
    :cond_879
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 9
    instance-of v0, p4, Lcom/google/firebase/auth/api/internal/zzeo;

    if-eqz v0, :cond_884

    .line 10
    check-cast p4, Lcom/google/firebase/auth/api/internal/zzeo;

    goto :goto_889

    .line 11
    :cond_884
    new-instance p4, Lcom/google/firebase/auth/api/internal/zzeq;

    invoke-direct {p4, p2}, Lcom/google/firebase/auth/api/internal/zzeq;-><init>(Landroid/os/IBinder;)V

    .line 13
    :goto_889
    invoke-virtual {p0, p1, p4}, Lcom/google/firebase/auth/api/internal/zzes;->zza(Ljava/lang/String;Lcom/google/firebase/auth/api/internal/zzeo;)V

    .line 689
    :goto_88c
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_892
    .packed-switch 0x1
        :pswitch_86e
        :pswitch_84f
        :pswitch_82c
        :pswitch_805
        :pswitch_7e1
        :pswitch_7bd
        :pswitch_799
        :pswitch_775
        :pswitch_755
        :pswitch_735
        :pswitch_70d
        :pswitch_6e5
        :pswitch_6c5
        :pswitch_6a1
        :pswitch_681
        :pswitch_664
        :pswitch_644
        :pswitch_624
        :pswitch_604
        :pswitch_5e4
        :pswitch_5c0
        :pswitch_59c
        :pswitch_578
        :pswitch_550
        :pswitch_528
        :pswitch_500
        :pswitch_4e0
        :pswitch_4b8
        :pswitch_494
    .end packed-switch

    :pswitch_data_8d0
    .packed-switch 0x65
        :pswitch_470
        :pswitch_44c
        :pswitch_428
        :pswitch_404
        :pswitch_3e0
        :pswitch_3bc
        :pswitch_398
        :pswitch_374
        :pswitch_350
    .end packed-switch

    :pswitch_data_8e6
    .packed-switch 0x6f
        :pswitch_32c
        :pswitch_308
        :pswitch_2e4
        :pswitch_2c0
        :pswitch_29c
        :pswitch_278
        :pswitch_254
    .end packed-switch

    :pswitch_data_8f8
    .packed-switch 0x77
        :pswitch_230
        :pswitch_20c
        :pswitch_1e8
        :pswitch_1c4
        :pswitch_1a0
        :pswitch_17c
    .end packed-switch

    :pswitch_data_908
    .packed-switch 0x7e
        :pswitch_158
        :pswitch_134
        :pswitch_110
        :pswitch_ec
        :pswitch_c8
        :pswitch_a4
        :pswitch_80
        :pswitch_5c
        :pswitch_38
        :pswitch_14
    .end packed-switch
.end method
