.class public final Lcom/google/android/gms/games/leaderboard/LeaderboardRef;
.super Lcom/google/android/gms/common/data/DataBufferRef;
.source "com.google.android.gms:play-services-games@@20.0.1"

# interfaces
.implements Lcom/google/android/gms/games/leaderboard/Leaderboard;


# instance fields
.field private final zznw:I

.field private final zznx:Lcom/google/android/gms/games/Game;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;II)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/DataBufferRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    .line 2
    iput p3, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardRef;->zznw:I

    .line 3
    new-instance p3, Lcom/google/android/gms/games/GameRef;

    invoke-direct {p3, p1, p2}, Lcom/google/android/gms/games/GameRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    iput-object p3, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardRef;->zznx:Lcom/google/android/gms/games/Game;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 2

    .line 19
    invoke-static {p0, p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardEntity;->zza(Lcom/google/android/gms/games/leaderboard/Leaderboard;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic freeze()Ljava/lang/Object;
    .registers 2

    .line 22
    new-instance v0, Lcom/google/android/gms/games/leaderboard/LeaderboardEntity;

    invoke-direct {v0, p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardEntity;-><init>(Lcom/google/android/gms/games/leaderboard/Leaderboard;)V

    return-object v0
.end method

.method public final getDisplayName()Ljava/lang/String;
    .registers 2

    const-string v0, "name"

    .line 6
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDisplayName(Landroid/database/CharArrayBuffer;)V
    .registers 3

    const-string v0, "name"

    .line 7
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardRef;->copyToBuffer(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V

    return-void
.end method

.method public final getGame()Lcom/google/android/gms/games/Game;
    .registers 2

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardRef;->zznx:Lcom/google/android/gms/games/Game;

    return-object v0
.end method

.method public final getIconImageUri()Landroid/net/Uri;
    .registers 2

    const-string v0, "board_icon_image_uri"

    .line 9
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardRef;->parseUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final getIconImageUrl()Ljava/lang/String;
    .registers 2

    const-string v0, "board_icon_image_url"

    .line 10
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getLeaderboardId()Ljava/lang/String;
    .registers 2

    const-string v0, "external_leaderboard_id"

    .line 5
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getScoreOrder()I
    .registers 2

    const-string v0, "score_order"

    .line 11
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardRef;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final getVariants()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;",
            ">;"
        }
    .end annotation

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardRef;->zznw:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 13
    :goto_8
    iget v2, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardRef;->zznw:I

    if-ge v1, v2, :cond_1c

    .line 14
    new-instance v2, Lcom/google/android/gms/games/leaderboard/zzb;

    iget-object v3, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardRef;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    iget v4, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardRef;->mDataRow:I

    add-int/2addr v4, v1

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/games/leaderboard/zzb;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_1c
    return-object v0
.end method

.method public final hashCode()I
    .registers 2

    .line 18
    invoke-static {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardEntity;->zza(Lcom/google/android/gms/games/leaderboard/Leaderboard;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .line 20
    invoke-static {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardEntity;->zzb(Lcom/google/android/gms/games/leaderboard/Leaderboard;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
