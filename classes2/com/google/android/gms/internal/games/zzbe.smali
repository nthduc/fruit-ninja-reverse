.class final Lcom/google/android/gms/internal/games/zzbe;
.super Lcom/google/android/gms/internal/games/zzbk;
.source "com.google.android.gms:play-services-games@@20.0.1"


# instance fields
.field private final synthetic zzkf:I

.field private final synthetic zzkg:Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;

.field private final synthetic zzkh:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/games/zzay;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;II)V
    .registers 6

    .line 1
    iput-object p3, p0, Lcom/google/android/gms/internal/games/zzbe;->zzkg:Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;

    iput p4, p0, Lcom/google/android/gms/internal/games/zzbe;->zzkf:I

    iput p5, p0, Lcom/google/android/gms/internal/games/zzbe;->zzkh:I

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/google/android/gms/internal/games/zzbk;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/games/zzbb;)V

    return-void
.end method


# virtual methods
.method protected final synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2
    check-cast p1, Lcom/google/android/gms/games/internal/zzf;

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/games/zzbe;->zzkg:Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;

    iget v1, p0, Lcom/google/android/gms/internal/games/zzbe;->zzkf:I

    iget v2, p0, Lcom/google/android/gms/internal/games/zzbe;->zzkh:I

    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/google/android/gms/games/internal/zzf;->zza(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;II)V

    return-void
.end method
