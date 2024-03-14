.class public final Lcom/google/android/gms/games/leaderboard/zzb;
.super Lcom/google/android/gms/common/data/DataBufferRef;
.source "com.google.android.gms:play-services-games@@20.0.1"

# interfaces
.implements Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/DataBufferRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 2

    .line 22
    invoke-static {p0, p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->zza(Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic freeze()Ljava/lang/Object;
    .registers 2

    .line 25
    new-instance v0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;

    invoke-direct {v0, p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;-><init>(Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;)V

    return-object v0
.end method

.method public final getCollection()I
    .registers 2

    const-string v0, "collection"

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/zzb;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final getDisplayPlayerRank()Ljava/lang/String;
    .registers 2

    const-string v0, "player_display_rank"

    .line 13
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/zzb;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDisplayPlayerScore()Ljava/lang/String;
    .registers 2

    const-string v0, "player_display_score"

    .line 9
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/zzb;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getNumScores()J
    .registers 3

    const-string v0, "total_scores"

    .line 15
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/zzb;->hasNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-wide/16 v0, -0x1

    return-wide v0

    .line 17
    :cond_b
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/zzb;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getPlayerRank()J
    .registers 3

    const-string v0, "player_rank"

    .line 10
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/zzb;->hasNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-wide/16 v0, -0x1

    return-wide v0

    .line 12
    :cond_b
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/zzb;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getPlayerScoreTag()Ljava/lang/String;
    .registers 2

    const-string v0, "player_score_tag"

    .line 14
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/zzb;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getRawPlayerScore()J
    .registers 3

    const-string v0, "player_raw_score"

    .line 6
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/zzb;->hasNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-wide/16 v0, -0x1

    return-wide v0

    .line 8
    :cond_b
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/zzb;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getTimeSpan()I
    .registers 2

    const-string v0, "timespan"

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/zzb;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final hasPlayerInfo()Z
    .registers 2

    const-string v0, "player_raw_score"

    .line 5
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/zzb;->hasNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public final hashCode()I
    .registers 2

    .line 21
    invoke-static {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->zza(Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .line 23
    invoke-static {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->zzb(Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzdk()Ljava/lang/String;
    .registers 2

    const-string v0, "top_page_token_next"

    .line 18
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/zzb;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzdl()Ljava/lang/String;
    .registers 2

    const-string v0, "window_page_token_prev"

    .line 19
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/zzb;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzdm()Ljava/lang/String;
    .registers 2

    const-string v0, "window_page_token_next"

    .line 20
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/zzb;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
