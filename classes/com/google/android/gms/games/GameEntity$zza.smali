.class final Lcom/google/android/gms/games/GameEntity$zza;
.super Lcom/google/android/gms/games/zzf;
.source "com.google.android.gms:play-services-games@@20.0.1"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/GameEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "zza"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/games/zzf;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 24
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/zzf;->zzb(Landroid/os/Parcel;)Lcom/google/android/gms/games/GameEntity;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Landroid/os/Parcel;)Lcom/google/android/gms/games/GameEntity;
    .registers 30

    .line 2
    invoke-static {}, Lcom/google/android/gms/games/GameEntity;->zzg()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/GameEntity;->zza(Ljava/lang/Integer;)Z

    move-result v0

    if-nez v0, :cond_99

    .line 3
    const-class v0, Lcom/google/android/gms/games/GameEntity;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/GameEntity;->zza(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    goto/16 :goto_99

    .line 5
    :cond_18
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 8
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 9
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 10
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 11
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_39

    move-object v8, v1

    goto :goto_3e

    .line 12
    :cond_39
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    move-object v8, v0

    .line 13
    :goto_3e
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_46

    move-object v9, v1

    goto :goto_4b

    .line 14
    :cond_46
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    move-object v9, v0

    .line 15
    :goto_4b
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_53

    move-object v10, v1

    goto :goto_58

    .line 16
    :cond_53
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    move-object v10, v0

    .line 17
    :goto_58
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    const/4 v11, 0x0

    if-lez v0, :cond_62

    const/4 v0, 0x1

    goto :goto_63

    :cond_62
    const/4 v0, 0x0

    .line 18
    :goto_63
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    if-lez v12, :cond_6b

    const/4 v12, 0x1

    goto :goto_6c

    :cond_6b
    const/4 v12, 0x0

    .line 19
    :goto_6c
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 20
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 21
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 22
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 23
    new-instance v27, Lcom/google/android/gms/games/GameEntity;

    move-object/from16 v1, v27

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move v11, v0

    invoke-direct/range {v1 .. v26}, Lcom/google/android/gms/games/GameEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;ZZLjava/lang/String;IIIZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Z)V

    return-object v27

    .line 4
    :cond_99
    :goto_99
    invoke-super/range {p0 .. p1}, Lcom/google/android/gms/games/zzf;->zzb(Landroid/os/Parcel;)Lcom/google/android/gms/games/GameEntity;

    move-result-object v0

    return-object v0
.end method
