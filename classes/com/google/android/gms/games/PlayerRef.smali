.class public final Lcom/google/android/gms/games/PlayerRef;
.super Lcom/google/android/gms/games/zzs;
.source "com.google.android.gms:play-services-games@@20.0.1"

# interfaces
.implements Lcom/google/android/gms/games/Player;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ParcelCreator"
    }
.end annotation


# instance fields
.field private final zzce:Lcom/google/android/gms/games/PlayerLevelInfo;

.field private final zzcw:Lcom/google/android/gms/games/internal/player/zzd;

.field private final zzcx:Lcom/google/android/gms/games/zzas;

.field private final zzcy:Lcom/google/android/gms/games/zzb;

.field private final zzg:Lcom/google/android/gms/games/internal/player/zzc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
    .registers 4

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/games/PlayerRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;ILjava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/common/data/DataHolder;ILjava/lang/String;)V
    .registers 11

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/games/zzs;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    .line 4
    new-instance p3, Lcom/google/android/gms/games/internal/player/zzc;

    const/4 v0, 0x0

    invoke-direct {p3, v0}, Lcom/google/android/gms/games/internal/player/zzc;-><init>(Ljava/lang/String;)V

    iput-object p3, p0, Lcom/google/android/gms/games/PlayerRef;->zzg:Lcom/google/android/gms/games/internal/player/zzc;

    .line 5
    new-instance p3, Lcom/google/android/gms/games/internal/player/zzd;

    iget-object v1, p0, Lcom/google/android/gms/games/PlayerRef;->zzg:Lcom/google/android/gms/games/internal/player/zzc;

    invoke-direct {p3, p1, p2, v1}, Lcom/google/android/gms/games/internal/player/zzd;-><init>(Lcom/google/android/gms/common/data/DataHolder;ILcom/google/android/gms/games/internal/player/zzc;)V

    iput-object p3, p0, Lcom/google/android/gms/games/PlayerRef;->zzcw:Lcom/google/android/gms/games/internal/player/zzd;

    .line 6
    new-instance p3, Lcom/google/android/gms/games/zzas;

    iget-object v1, p0, Lcom/google/android/gms/games/PlayerRef;->zzg:Lcom/google/android/gms/games/internal/player/zzc;

    invoke-direct {p3, p1, p2, v1}, Lcom/google/android/gms/games/zzas;-><init>(Lcom/google/android/gms/common/data/DataHolder;ILcom/google/android/gms/games/internal/player/zzc;)V

    iput-object p3, p0, Lcom/google/android/gms/games/PlayerRef;->zzcx:Lcom/google/android/gms/games/zzas;

    .line 7
    new-instance p3, Lcom/google/android/gms/games/zzb;

    iget-object v1, p0, Lcom/google/android/gms/games/PlayerRef;->zzg:Lcom/google/android/gms/games/internal/player/zzc;

    invoke-direct {p3, p1, p2, v1}, Lcom/google/android/gms/games/zzb;-><init>(Lcom/google/android/gms/common/data/DataHolder;ILcom/google/android/gms/games/internal/player/zzc;)V

    iput-object p3, p0, Lcom/google/android/gms/games/PlayerRef;->zzcy:Lcom/google/android/gms/games/zzb;

    .line 9
    iget-object p1, p0, Lcom/google/android/gms/games/PlayerRef;->zzg:Lcom/google/android/gms/games/internal/player/zzc;

    iget-object p1, p1, Lcom/google/android/gms/games/internal/player/zzc;->zzmi:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/PlayerRef;->hasNull(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_40

    .line 10
    iget-object p1, p0, Lcom/google/android/gms/games/PlayerRef;->zzg:Lcom/google/android/gms/games/internal/player/zzc;

    iget-object p1, p1, Lcom/google/android/gms/games/internal/player/zzc;->zzmi:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/PlayerRef;->getLong(Ljava/lang/String;)J

    move-result-wide p1

    const-wide/16 v1, -0x1

    cmp-long p3, p1, v1

    if-eqz p3, :cond_40

    const/4 p1, 0x1

    goto :goto_41

    :cond_40
    const/4 p1, 0x0

    :goto_41
    if-eqz p1, :cond_a0

    .line 12
    iget-object p1, p0, Lcom/google/android/gms/games/PlayerRef;->zzg:Lcom/google/android/gms/games/internal/player/zzc;

    iget-object p1, p1, Lcom/google/android/gms/games/internal/player/zzc;->zzmj:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/PlayerRef;->getInteger(Ljava/lang/String;)I

    move-result p1

    .line 13
    iget-object p2, p0, Lcom/google/android/gms/games/PlayerRef;->zzg:Lcom/google/android/gms/games/internal/player/zzc;

    iget-object p2, p2, Lcom/google/android/gms/games/internal/player/zzc;->zzmm:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/google/android/gms/games/PlayerRef;->getInteger(Ljava/lang/String;)I

    move-result p2

    .line 14
    new-instance p3, Lcom/google/android/gms/games/PlayerLevel;

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zzg:Lcom/google/android/gms/games/internal/player/zzc;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zzc;->zzmk:Ljava/lang/String;

    .line 15
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zzg:Lcom/google/android/gms/games/internal/player/zzc;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zzc;->zzml:Ljava/lang/String;

    .line 16
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    move-object v0, p3

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/games/PlayerLevel;-><init>(IJJ)V

    if-eq p1, p2, :cond_85

    .line 19
    new-instance p1, Lcom/google/android/gms/games/PlayerLevel;

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zzg:Lcom/google/android/gms/games/internal/player/zzc;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zzc;->zzml:Ljava/lang/String;

    .line 20
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zzg:Lcom/google/android/gms/games/internal/player/zzc;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zzc;->zzmn:Ljava/lang/String;

    .line 21
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    move-object v0, p1

    move v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/games/PlayerLevel;-><init>(IJJ)V

    move-object v6, p1

    goto :goto_86

    :cond_85
    move-object v6, p3

    .line 22
    :goto_86
    new-instance p1, Lcom/google/android/gms/games/PlayerLevelInfo;

    iget-object p2, p0, Lcom/google/android/gms/games/PlayerRef;->zzg:Lcom/google/android/gms/games/internal/player/zzc;

    iget-object p2, p2, Lcom/google/android/gms/games/internal/player/zzc;->zzmi:Ljava/lang/String;

    .line 23
    invoke-virtual {p0, p2}, Lcom/google/android/gms/games/PlayerRef;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iget-object p2, p0, Lcom/google/android/gms/games/PlayerRef;->zzg:Lcom/google/android/gms/games/internal/player/zzc;

    iget-object p2, p2, Lcom/google/android/gms/games/internal/player/zzc;->zzmo:Ljava/lang/String;

    .line 24
    invoke-virtual {p0, p2}, Lcom/google/android/gms/games/PlayerRef;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    move-object v0, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/games/PlayerLevelInfo;-><init>(JJLcom/google/android/gms/games/PlayerLevel;Lcom/google/android/gms/games/PlayerLevel;)V

    iput-object p1, p0, Lcom/google/android/gms/games/PlayerRef;->zzce:Lcom/google/android/gms/games/PlayerLevelInfo;

    return-void

    .line 26
    :cond_a0
    iput-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zzce:Lcom/google/android/gms/games/PlayerLevelInfo;

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

    .line 73
    invoke-static {p0, p1}, Lcom/google/android/gms/games/PlayerEntity;->zza(Lcom/google/android/gms/games/Player;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic freeze()Ljava/lang/Object;
    .registers 2

    .line 80
    new-instance v0, Lcom/google/android/gms/games/PlayerEntity;

    invoke-direct {v0, p0}, Lcom/google/android/gms/games/PlayerEntity;-><init>(Lcom/google/android/gms/games/Player;)V

    return-object v0
.end method

.method public final getBannerImageLandscapeUri()Landroid/net/Uri;
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zzg:Lcom/google/android/gms/games/internal/player/zzc;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zzc;->zzmy:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->parseUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final getBannerImageLandscapeUrl()Ljava/lang/String;
    .registers 2

    .line 58
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zzg:Lcom/google/android/gms/games/internal/player/zzc;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zzc;->zzmz:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getBannerImagePortraitUri()Landroid/net/Uri;
    .registers 2

    .line 59
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zzg:Lcom/google/android/gms/games/internal/player/zzc;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zzc;->zzna:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->parseUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final getBannerImagePortraitUrl()Ljava/lang/String;
    .registers 2

    .line 60
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zzg:Lcom/google/android/gms/games/internal/player/zzc;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zzc;->zznb:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getCurrentPlayerInfo()Lcom/google/android/gms/games/CurrentPlayerInfo;
    .registers 2

    .line 45
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zzcy:Lcom/google/android/gms/games/zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/games/zzb;->zzb()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 46
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zzcy:Lcom/google/android/gms/games/zzb;

    return-object v0

    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getDisplayName()Ljava/lang/String;
    .registers 2

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zzg:Lcom/google/android/gms/games/internal/player/zzc;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zzc;->zzma:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDisplayName(Landroid/database/CharArrayBuffer;)V
    .registers 3

    .line 30
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zzg:Lcom/google/android/gms/games/internal/player/zzc;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zzc;->zzma:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/games/PlayerRef;->copyToBuffer(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V

    return-void
.end method

.method public final getHiResImageUri()Landroid/net/Uri;
    .registers 2

    .line 39
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zzg:Lcom/google/android/gms/games/internal/player/zzc;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zzc;->zzmd:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->parseUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final getHiResImageUrl()Ljava/lang/String;
    .registers 2

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zzg:Lcom/google/android/gms/games/internal/player/zzc;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zzc;->zzme:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getIconImageUri()Landroid/net/Uri;
    .registers 2

    .line 36
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zzg:Lcom/google/android/gms/games/internal/player/zzc;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zzc;->zzmb:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->parseUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final getIconImageUrl()Ljava/lang/String;
    .registers 2

    .line 37
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zzg:Lcom/google/android/gms/games/internal/player/zzc;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zzc;->zzmc:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getLastPlayedWithTimestamp()J
    .registers 3

    .line 42
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zzg:Lcom/google/android/gms/games/internal/player/zzc;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zzc;->zzmh:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->hasColumn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zzg:Lcom/google/android/gms/games/internal/player/zzc;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zzc;->zzmh:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->hasNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_1e

    .line 44
    :cond_15
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zzg:Lcom/google/android/gms/games/internal/player/zzc;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zzc;->zzmh:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    :cond_1e
    :goto_1e
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final getLevelInfo()Lcom/google/android/gms/games/PlayerLevelInfo;
    .registers 2

    .line 53
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zzce:Lcom/google/android/gms/games/PlayerLevelInfo;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .registers 2

    .line 33
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zzg:Lcom/google/android/gms/games/internal/player/zzc;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zzc;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getPlayerId()Ljava/lang/String;
    .registers 2

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zzg:Lcom/google/android/gms/games/internal/player/zzc;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zzc;->zzlz:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getRelationshipInfo()Lcom/google/android/gms/games/PlayerRelationshipInfo;
    .registers 4

    .line 65
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zzcx:Lcom/google/android/gms/games/zzas;

    .line 66
    invoke-virtual {v0}, Lcom/google/android/gms/games/zzas;->getFriendStatus()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_18

    .line 67
    invoke-virtual {v0}, Lcom/google/android/gms/games/zzas;->zzo()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_18

    .line 68
    invoke-virtual {v0}, Lcom/google/android/gms/games/zzas;->zzp()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16

    goto :goto_18

    :cond_16
    const/4 v0, 0x0

    goto :goto_19

    :cond_18
    :goto_18
    const/4 v0, 0x1

    :goto_19
    if-eqz v0, :cond_1e

    .line 70
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zzcx:Lcom/google/android/gms/games/zzas;

    return-object v0

    :cond_1e
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getRetrievedTimestamp()J
    .registers 3

    .line 41
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zzg:Lcom/google/android/gms/games/internal/player/zzc;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zzc;->zzmf:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getTitle()Ljava/lang/String;
    .registers 2

    .line 50
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zzg:Lcom/google/android/gms/games/internal/player/zzc;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zzc;->zzcc:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getTitle(Landroid/database/CharArrayBuffer;)V
    .registers 3

    .line 51
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zzg:Lcom/google/android/gms/games/internal/player/zzc;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zzc;->zzcc:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/games/PlayerRef;->copyToBuffer(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V

    return-void
.end method

.method public final hasHiResImage()Z
    .registers 2

    .line 38
    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerRef;->getHiResImageUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final hasIconImage()Z
    .registers 2

    .line 35
    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerRef;->getIconImageUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final hashCode()I
    .registers 2

    .line 72
    invoke-static {p0}, Lcom/google/android/gms/games/PlayerEntity;->zza(Lcom/google/android/gms/games/Player;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .line 74
    invoke-static {p0}, Lcom/google/android/gms/games/PlayerEntity;->zzb(Lcom/google/android/gms/games/Player;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 76
    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerRef;->freeze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/Player;

    check-cast v0, Lcom/google/android/gms/games/PlayerEntity;

    .line 77
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/games/PlayerEntity;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zzi()Ljava/lang/String;
    .registers 2

    .line 32
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zzg:Lcom/google/android/gms/games/internal/player/zzc;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zzc;->zzch:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzj()Z
    .registers 2

    .line 34
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zzg:Lcom/google/android/gms/games/internal/player/zzc;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zzc;->zzmx:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final zzk()I
    .registers 2

    .line 48
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zzg:Lcom/google/android/gms/games/internal/player/zzc;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zzc;->zzmg:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final zzl()Z
    .registers 2

    .line 49
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zzg:Lcom/google/android/gms/games/internal/player/zzc;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zzc;->zzmq:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final zzm()Lcom/google/android/gms/games/internal/player/zza;
    .registers 2

    .line 54
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zzg:Lcom/google/android/gms/games/internal/player/zzc;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zzc;->zzmr:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->hasNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    return-object v0

    .line 56
    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zzcw:Lcom/google/android/gms/games/internal/player/zzd;

    return-object v0
.end method

.method public final zzn()J
    .registers 3

    .line 61
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zzg:Lcom/google/android/gms/games/internal/player/zzc;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zzc;->zznf:Ljava/lang/String;

    .line 62
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->hasColumn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->hasNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_16

    .line 64
    :cond_11
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    :cond_16
    :goto_16
    const-wide/16 v0, -0x1

    return-wide v0
.end method
