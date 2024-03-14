.class final Lcom/google/android/gms/internal/games/zzde;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@20.0.1"

# interfaces
.implements Lcom/google/android/gms/games/stats/Stats$LoadPlayerStatsResult;


# instance fields
.field private final synthetic zzbd:Lcom/google/android/gms/common/api/Status;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/games/zzdf;Lcom/google/android/gms/common/api/Status;)V
    .registers 3

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/games/zzde;->zzbd:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getPlayerStats()Lcom/google/android/gms/games/stats/PlayerStats;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getStatus()Lcom/google/android/gms/common/api/Status;
    .registers 2

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/games/zzde;->zzbd:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public final release()V
    .registers 1

    return-void
.end method
