.class Lcom/google/android/gms/games/internal/zzf$zzbg;
.super Lcom/google/android/gms/games/internal/zzf$zzl;
.source "com.google.android.gms:play-services-games@@20.0.1"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/zzf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "zzbg"
.end annotation


# instance fields
.field private final match:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/zzf$zzl;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    .line 2
    new-instance v0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    invoke-direct {v0, p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    .line 3
    :try_start_8
    invoke-virtual {v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;->getCount()I

    move-result p1

    if-lez p1, :cond_1e

    const/4 p1, 0x0

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->freeze()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    iput-object p1, p0, Lcom/google/android/gms/games/internal/zzf$zzbg;->match:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    goto :goto_21

    :cond_1e
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/games/internal/zzf$zzbg;->match:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_25

    .line 6
    :goto_21
    invoke-virtual {v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;->release()V

    return-void

    :catchall_25
    move-exception p1

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;->release()V

    .line 9
    throw p1
.end method


# virtual methods
.method public getMatch()Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;
    .registers 2

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzf$zzbg;->match:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    return-object v0
.end method
