.class public final Lcom/google/android/gms/games/internal/player/zzd;
.super Lcom/google/android/gms/common/data/DataBufferRef;
.source "com.google.android.gms:play-services-games@@20.0.1"

# interfaces
.implements Lcom/google/android/gms/games/internal/player/zza;


# instance fields
.field private final zzg:Lcom/google/android/gms/games/internal/player/zzc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;ILcom/google/android/gms/games/internal/player/zzc;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/DataBufferRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    .line 2
    iput-object p3, p0, Lcom/google/android/gms/games/internal/player/zzd;->zzg:Lcom/google/android/gms/games/internal/player/zzc;

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

    .line 11
    invoke-static {p0, p1}, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;->zza(Lcom/google/android/gms/games/internal/player/zza;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic freeze()Ljava/lang/Object;
    .registers 2

    .line 18
    new-instance v0, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;

    invoke-direct {v0, p0}, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;-><init>(Lcom/google/android/gms/games/internal/player/zza;)V

    return-object v0
.end method

.method public final hashCode()I
    .registers 2

    .line 10
    invoke-static {p0}, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;->zza(Lcom/google/android/gms/games/internal/player/zza;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .line 12
    invoke-static {p0}, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;->zzb(Lcom/google/android/gms/games/internal/player/zza;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/player/zzd;->freeze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/player/zza;

    check-cast v0, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;

    .line 15
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zzdc()Ljava/lang/String;
    .registers 2

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/games/internal/player/zzd;->zzg:Lcom/google/android/gms/games/internal/player/zzc;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zzc;->zzmr:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/player/zzd;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzdd()Ljava/lang/String;
    .registers 2

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/games/internal/player/zzd;->zzg:Lcom/google/android/gms/games/internal/player/zzc;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zzc;->zzms:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/player/zzd;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzde()J
    .registers 3

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/games/internal/player/zzd;->zzg:Lcom/google/android/gms/games/internal/player/zzc;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zzc;->zzmt:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/player/zzd;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzdf()Landroid/net/Uri;
    .registers 2

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/games/internal/player/zzd;->zzg:Lcom/google/android/gms/games/internal/player/zzc;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zzc;->zzmu:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/player/zzd;->parseUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final zzdg()Landroid/net/Uri;
    .registers 2

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/games/internal/player/zzd;->zzg:Lcom/google/android/gms/games/internal/player/zzc;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zzc;->zzmv:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/player/zzd;->parseUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final zzdh()Landroid/net/Uri;
    .registers 2

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/games/internal/player/zzd;->zzg:Lcom/google/android/gms/games/internal/player/zzc;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zzc;->zzmw:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/player/zzd;->parseUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
