.class final Lcom/google/android/gms/games/internal/zzf$zzw;
.super Lcom/google/android/gms/games/internal/zza;
.source "com.google.android.gms:play-services-games@@20.0.1"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/zzf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "zzw"
.end annotation


# instance fields
.field private final synthetic zzhg:Lcom/google/android/gms/games/internal/zzf;

.field private final zzhq:Lcom/google/android/gms/tasks/TaskCompletionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Lcom/google/android/gms/games/AnnotatedData<",
            "Lcom/google/android/gms/games/LeaderboardsClient$LeaderboardScores;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/zzf;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Lcom/google/android/gms/games/AnnotatedData<",
            "Lcom/google/android/gms/games/LeaderboardsClient$LeaderboardScores;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/games/internal/zzf$zzw;->zzhg:Lcom/google/android/gms/games/internal/zzf;

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/zza;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/games/internal/zzf$zzw;->zzhq:Lcom/google/android/gms/tasks/TaskCompletionSource;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 8

    .line 4
    invoke-virtual {p2}, Lcom/google/android/gms/common/data/DataHolder;->getStatusCode()I

    move-result v0

    const/16 v1, 0x2713

    if-ne v0, v1, :cond_16

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzf$zzw;->zzhg:Lcom/google/android/gms/games/internal/zzf;

    iget-object v1, p0, Lcom/google/android/gms/games/internal/zzf$zzw;->zzhq:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/zzf;->zzd(Lcom/google/android/gms/games/internal/zzf;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    .line 8
    invoke-virtual {p2}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    return-void

    :cond_16
    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1c

    const/4 v1, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x0

    :goto_1d
    if-eqz v0, :cond_2d

    if-nez v1, :cond_2d

    .line 12
    iget-object v1, p0, Lcom/google/android/gms/games/internal/zzf$zzw;->zzhq:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {v1, v0}, Lcom/google/android/gms/games/internal/zzf;->zzb(Lcom/google/android/gms/tasks/TaskCompletionSource;I)V

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    .line 14
    invoke-virtual {p2}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    return-void

    .line 16
    :cond_2d
    new-instance v0, Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;

    invoke-direct {v0, p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    .line 17
    :try_start_32
    invoke-virtual {v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;->getCount()I

    move-result p1

    if-lez p1, :cond_45

    invoke-virtual {v0, v2}, Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/games/leaderboard/Leaderboard;

    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/Leaderboard;->freeze()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/games/leaderboard/Leaderboard;
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_44} :catch_5e

    goto :goto_46

    :cond_45
    const/4 p1, 0x0

    .line 18
    :goto_46
    invoke-virtual {v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;->close()V

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzf$zzw;->zzhq:Lcom/google/android/gms/tasks/TaskCompletionSource;

    new-instance v2, Lcom/google/android/gms/games/AnnotatedData;

    new-instance v3, Lcom/google/android/gms/games/LeaderboardsClient$LeaderboardScores;

    new-instance v4, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;

    invoke-direct {v4, p2}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-direct {v3, p1, v4}, Lcom/google/android/gms/games/LeaderboardsClient$LeaderboardScores;-><init>(Lcom/google/android/gms/games/leaderboard/Leaderboard;Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;)V

    invoke-direct {v2, v3, v1}, Lcom/google/android/gms/games/AnnotatedData;-><init>(Ljava/lang/Object;Z)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void

    :catch_5e
    move-exception p1

    .line 19
    :try_start_5f
    invoke-virtual {v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;->close()V
    :try_end_62
    .catch Ljava/lang/Throwable; {:try_start_5f .. :try_end_62} :catch_63

    goto :goto_67

    :catch_63
    move-exception p2

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/games/zzfq;->zza(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_67
    throw p1
.end method
