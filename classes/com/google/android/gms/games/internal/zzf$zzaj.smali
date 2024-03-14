.class final Lcom/google/android/gms/games/internal/zzf$zzaj;
.super Lcom/google/android/gms/games/internal/zzf$zzl;
.source "com.google.android.gms:play-services-games@@20.0.1"

# interfaces
.implements Lcom/google/android/gms/games/leaderboard/Leaderboards$LoadScoresResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/zzf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "zzaj"
.end annotation


# instance fields
.field private final zzij:Lcom/google/android/gms/games/leaderboard/LeaderboardEntity;

.field private final zzik:Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 4

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/games/internal/zzf$zzl;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    .line 2
    new-instance v0, Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;

    invoke-direct {v0, p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    .line 3
    :try_start_8
    invoke-virtual {v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;->getCount()I

    move-result p1

    if-lez p1, :cond_1e

    const/4 p1, 0x0

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/games/leaderboard/Leaderboard;

    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/Leaderboard;->freeze()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/games/leaderboard/LeaderboardEntity;

    iput-object p1, p0, Lcom/google/android/gms/games/internal/zzf$zzaj;->zzij:Lcom/google/android/gms/games/leaderboard/LeaderboardEntity;

    goto :goto_21

    :cond_1e
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/games/internal/zzf$zzaj;->zzij:Lcom/google/android/gms/games/leaderboard/LeaderboardEntity;
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_2c

    .line 6
    :goto_21
    invoke-virtual {v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;->release()V

    .line 10
    new-instance p1, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;

    invoke-direct {p1, p2}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    iput-object p1, p0, Lcom/google/android/gms/games/internal/zzf$zzaj;->zzik:Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;

    return-void

    :catchall_2c
    move-exception p1

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;->release()V

    .line 9
    throw p1
.end method


# virtual methods
.method public final getLeaderboard()Lcom/google/android/gms/games/leaderboard/Leaderboard;
    .registers 2

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzf$zzaj;->zzij:Lcom/google/android/gms/games/leaderboard/LeaderboardEntity;

    return-object v0
.end method

.method public final getScores()Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;
    .registers 2

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzf$zzaj;->zzik:Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;

    return-object v0
.end method
