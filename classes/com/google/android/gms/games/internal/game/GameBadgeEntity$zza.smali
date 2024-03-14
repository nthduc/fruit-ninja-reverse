.class final Lcom/google/android/gms/games/internal/game/GameBadgeEntity$zza;
.super Lcom/google/android/gms/games/internal/game/zzb;
.source "com.google.android.gms:play-services-games@@20.0.1"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/game/GameBadgeEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "zza"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/games/internal/game/zzb;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 11
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/game/zzb;->zzd(Landroid/os/Parcel;)Lcom/google/android/gms/games/internal/game/GameBadgeEntity;

    move-result-object p1

    return-object p1
.end method

.method public final zzd(Landroid/os/Parcel;)Lcom/google/android/gms/games/internal/game/GameBadgeEntity;
    .registers 6

    .line 2
    invoke-static {}, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;->zzg()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;->zza(Ljava/lang/Integer;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 3
    const-class v0, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;->zza(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_35

    .line 5
    :cond_17
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2b

    const/4 p1, 0x0

    goto :goto_2f

    .line 9
    :cond_2b
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 10
    :goto_2f
    new-instance v3, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;

    invoke-direct {v3, v0, v1, v2, p1}, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    return-object v3

    .line 4
    :cond_35
    :goto_35
    invoke-super {p0, p1}, Lcom/google/android/gms/games/internal/game/zzb;->zzd(Landroid/os/Parcel;)Lcom/google/android/gms/games/internal/game/GameBadgeEntity;

    move-result-object p1

    return-object p1
.end method
