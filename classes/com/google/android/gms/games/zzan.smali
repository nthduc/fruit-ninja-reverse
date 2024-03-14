.class public Lcom/google/android/gms/games/zzan;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@20.0.1"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/android/gms/games/PlayerEntity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 107
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/zzan;->zzc(Landroid/os/Parcel;)Lcom/google/android/gms/games/PlayerEntity;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 105
    new-array p1, p1, [Lcom/google/android/gms/games/PlayerEntity;

    return-object p1
.end method

.method public zzc(Landroid/os/Parcel;)Lcom/google/android/gms/games/PlayerEntity;
    .registers 37

    move-object/from16 v0, p1

    .line 3
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, -0x1

    move-wide v13, v2

    move-wide/from16 v16, v13

    move-object v9, v5

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object/from16 v18, v12

    move-object/from16 v19, v18

    move-object/from16 v20, v19

    move-object/from16 v21, v20

    move-object/from16 v22, v21

    move-object/from16 v25, v22

    move-object/from16 v26, v25

    move-object/from16 v27, v26

    move-object/from16 v28, v27

    move-object/from16 v29, v28

    move-object/from16 v30, v29

    move-object/from16 v33, v30

    move-object/from16 v34, v33

    move-wide/from16 v31, v6

    const/4 v15, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    .line 27
    :goto_34
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v1, :cond_106

    .line 28
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readHeader(Landroid/os/Parcel;)I

    move-result v2

    .line 29
    invoke-static {v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->getFieldId(I)I

    move-result v3

    const/16 v4, 0x1d

    if-eq v3, v4, :cond_100

    const/16 v4, 0x21

    if-eq v3, v4, :cond_f4

    const/16 v4, 0x23

    if-eq v3, v4, :cond_e8

    packed-switch v3, :pswitch_data_110

    packed-switch v3, :pswitch_data_126

    packed-switch v3, :pswitch_data_130

    .line 99
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->skipUnknownField(Landroid/os/Parcel;I)V

    goto :goto_34

    .line 88
    :pswitch_5b
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v30

    goto :goto_34

    .line 84
    :pswitch_60
    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 85
    invoke-static {v0, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object/from16 v29, v2

    check-cast v29, Landroid/net/Uri;

    goto :goto_34

    .line 82
    :pswitch_6b
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v28

    goto :goto_34

    .line 78
    :pswitch_70
    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 79
    invoke-static {v0, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object/from16 v27, v2

    check-cast v27, Landroid/net/Uri;

    goto :goto_34

    .line 76
    :pswitch_7b
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v26

    goto :goto_34

    .line 73
    :pswitch_80
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v25

    goto :goto_34

    .line 70
    :pswitch_85
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readBoolean(Landroid/os/Parcel;I)Z

    move-result v24

    goto :goto_34

    .line 67
    :pswitch_8a
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readBoolean(Landroid/os/Parcel;I)Z

    move-result v23

    goto :goto_34

    .line 63
    :pswitch_8f
    sget-object v3, Lcom/google/android/gms/games/PlayerLevelInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 64
    invoke-static {v0, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object/from16 v22, v2

    check-cast v22, Lcom/google/android/gms/games/PlayerLevelInfo;

    goto :goto_34

    .line 60
    :pswitch_9a
    sget-object v3, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 61
    invoke-static {v0, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;

    goto :goto_34

    .line 58
    :pswitch_a5
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v20

    goto :goto_34

    .line 55
    :pswitch_aa
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v19

    goto :goto_34

    .line 52
    :pswitch_af
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v18

    goto :goto_34

    .line 49
    :pswitch_b4
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readLong(Landroid/os/Parcel;I)J

    move-result-wide v16

    goto/16 :goto_34

    .line 46
    :pswitch_ba
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    move-result v15

    goto/16 :goto_34

    .line 43
    :pswitch_c0
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readLong(Landroid/os/Parcel;I)J

    move-result-wide v13

    goto/16 :goto_34

    .line 39
    :pswitch_c6
    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 40
    invoke-static {v0, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/net/Uri;

    goto/16 :goto_34

    .line 36
    :pswitch_d1
    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 37
    invoke-static {v0, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/net/Uri;

    goto/16 :goto_34

    .line 34
    :pswitch_dc
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_34

    .line 31
    :pswitch_e2
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_34

    .line 96
    :cond_e8
    sget-object v3, Lcom/google/android/gms/games/zza;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 97
    invoke-static {v0, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object/from16 v34, v2

    check-cast v34, Lcom/google/android/gms/games/zza;

    goto/16 :goto_34

    .line 93
    :cond_f4
    sget-object v3, Lcom/google/android/gms/games/zzar;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 94
    invoke-static {v0, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object/from16 v33, v2

    check-cast v33, Lcom/google/android/gms/games/zzar;

    goto/16 :goto_34

    .line 91
    :cond_100
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readLong(Landroid/os/Parcel;I)J

    move-result-wide v31

    goto/16 :goto_34

    .line 101
    :cond_106
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->ensureAtEnd(Landroid/os/Parcel;I)V

    .line 102
    new-instance v0, Lcom/google/android/gms/games/PlayerEntity;

    move-object v8, v0

    invoke-direct/range {v8 .. v34}, Lcom/google/android/gms/games/PlayerEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;JIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;Lcom/google/android/gms/games/PlayerLevelInfo;ZZLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JLcom/google/android/gms/games/zzar;Lcom/google/android/gms/games/zza;)V

    return-object v0

    :pswitch_data_110
    .packed-switch 0x1
        :pswitch_e2
        :pswitch_dc
        :pswitch_d1
        :pswitch_c6
        :pswitch_c0
        :pswitch_ba
        :pswitch_b4
        :pswitch_af
        :pswitch_aa
    .end packed-switch

    :pswitch_data_126
    .packed-switch 0xe
        :pswitch_a5
        :pswitch_9a
        :pswitch_8f
    .end packed-switch

    :pswitch_data_130
    .packed-switch 0x12
        :pswitch_8a
        :pswitch_85
        :pswitch_80
        :pswitch_7b
        :pswitch_70
        :pswitch_6b
        :pswitch_60
        :pswitch_5b
    .end packed-switch
.end method
