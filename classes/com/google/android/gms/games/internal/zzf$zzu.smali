.class final Lcom/google/android/gms/games/internal/zzf$zzu;
.super Lcom/google/android/gms/games/internal/zza;
.source "com.google.android.gms:play-services-games@@20.0.1"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/zzf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "zzu"
.end annotation


# instance fields
.field private final synthetic zzhg:Lcom/google/android/gms/games/internal/zzf;

.field private final zzhq:Lcom/google/android/gms/tasks/TaskCompletionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Lcom/google/android/gms/games/AnnotatedData<",
            "Lcom/google/android/gms/games/leaderboard/LeaderboardScore;",
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
            "Lcom/google/android/gms/games/leaderboard/LeaderboardScore;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/games/internal/zzf$zzu;->zzhg:Lcom/google/android/gms/games/internal/zzf;

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/zza;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/games/internal/zzf$zzu;->zzhq:Lcom/google/android/gms/tasks/TaskCompletionSource;

    return-void
.end method


# virtual methods
.method public final zzac(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 5

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->getStatusCode()I

    move-result v0

    const/16 v1, 0x2713

    if-ne v0, v1, :cond_13

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzf$zzu;->zzhg:Lcom/google/android/gms/games/internal/zzf;

    iget-object v1, p0, Lcom/google/android/gms/games/internal/zzf$zzu;->zzhq:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/zzf;->zzd(Lcom/google/android/gms/games/internal/zzf;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    return-void

    :cond_13
    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ne v0, v1, :cond_19

    const/4 v1, 0x1

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    :goto_1a
    if-eqz v0, :cond_27

    if-nez v1, :cond_27

    .line 11
    iget-object v1, p0, Lcom/google/android/gms/games/internal/zzf$zzu;->zzhq:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {v1, v0}, Lcom/google/android/gms/games/internal/zzf;->zzb(Lcom/google/android/gms/tasks/TaskCompletionSource;I)V

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    return-void

    .line 14
    :cond_27
    new-instance v0, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;

    invoke-direct {v0, p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    .line 15
    :try_start_2c
    invoke-virtual {v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;->getCount()I

    move-result p1

    if-lez p1, :cond_3f

    invoke-virtual {v0, v2}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;

    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->freeze()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_3e} :catch_4e

    goto :goto_40

    :cond_3f
    const/4 p1, 0x0

    .line 16
    :goto_40
    invoke-virtual {v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;->close()V

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzf$zzu;->zzhq:Lcom/google/android/gms/tasks/TaskCompletionSource;

    new-instance v2, Lcom/google/android/gms/games/AnnotatedData;

    invoke-direct {v2, p1, v1}, Lcom/google/android/gms/games/AnnotatedData;-><init>(Ljava/lang/Object;Z)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void

    :catch_4e
    move-exception p1

    .line 17
    :try_start_4f
    invoke-virtual {v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;->close()V
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_52} :catch_53

    goto :goto_57

    :catch_53
    move-exception v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/games/zzfq;->zza(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_57
    throw p1
.end method
