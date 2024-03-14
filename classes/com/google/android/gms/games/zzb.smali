.class public final Lcom/google/android/gms/games/zzb;
.super Lcom/google/android/gms/games/zzs;
.source "com.google.android.gms:play-services-games@@20.0.1"

# interfaces
.implements Lcom/google/android/gms/games/CurrentPlayerInfo;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ParcelCreator"
    }
.end annotation


# instance fields
.field private final zzg:Lcom/google/android/gms/games/internal/player/zzc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;ILcom/google/android/gms/games/internal/player/zzc;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/games/zzs;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    .line 2
    iput-object p3, p0, Lcom/google/android/gms/games/zzb;->zzg:Lcom/google/android/gms/games/internal/player/zzc;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 2

    .line 6
    invoke-static {p0, p1}, Lcom/google/android/gms/games/zza;->zza(Lcom/google/android/gms/games/CurrentPlayerInfo;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic freeze()Ljava/lang/Object;
    .registers 2

    .line 15
    new-instance v0, Lcom/google/android/gms/games/zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/games/zza;-><init>(Lcom/google/android/gms/games/CurrentPlayerInfo;)V

    return-object v0
.end method

.method public final getFriendsListVisibilityStatus()I
    .registers 3

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/games/zzb;->zzg:Lcom/google/android/gms/games/internal/player/zzc;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zzc;->zznk:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/games/zzs;->zza(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .registers 2

    .line 5
    invoke-static {p0}, Lcom/google/android/gms/games/zza;->zza(Lcom/google/android/gms/games/CurrentPlayerInfo;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .line 7
    invoke-static {p0}, Lcom/google/android/gms/games/zza;->zzb(Lcom/google/android/gms/games/CurrentPlayerInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 9
    new-instance v0, Lcom/google/android/gms/games/zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/games/zza;-><init>(Lcom/google/android/gms/games/CurrentPlayerInfo;)V

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/games/zza;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zzb()Z
    .registers 2

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/games/zzb;->zzg:Lcom/google/android/gms/games/internal/player/zzc;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zzc;->zznk:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/zzb;->hasColumn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/android/gms/games/zzb;->zzg:Lcom/google/android/gms/games/internal/player/zzc;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zzc;->zznk:Ljava/lang/String;

    .line 12
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/zzb;->hasNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x1

    return v0

    :cond_16
    const/4 v0, 0x0

    return v0
.end method
