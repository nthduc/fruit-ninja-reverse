.class abstract Lcom/google/android/gms/internal/games/zzbg;
.super Lcom/google/android/gms/games/Games$zza;
.source "com.google.android.gms:play-services-games@@20.0.1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/games/Games$zza<",
        "Lcom/google/android/gms/games/leaderboard/Leaderboards$LeaderboardMetadataResult;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/games/Games$zza;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/games/zzbb;)V
    .registers 3

    .line 6
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/games/zzbg;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method public synthetic createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .registers 3

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/games/zzbj;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/games/zzbj;-><init>(Lcom/google/android/gms/internal/games/zzbg;Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method
