.class final Lcom/google/android/gms/games/zzv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@20.0.1"

# interfaces
.implements Lcom/google/android/gms/common/internal/PendingResultUtil$ResultConverter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/internal/PendingResultUtil$ResultConverter<",
        "Lcom/google/android/gms/games/GamesMetadata$LoadGamesResult;",
        "Lcom/google/android/gms/games/Game;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static zza(Lcom/google/android/gms/games/GamesMetadata$LoadGamesResult;)Lcom/google/android/gms/games/Game;
    .registers 3
    .param p0    # Lcom/google/android/gms/games/GamesMetadata$LoadGamesResult;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 4
    :cond_4
    invoke-interface {p0}, Lcom/google/android/gms/games/GamesMetadata$LoadGamesResult;->getGames()Lcom/google/android/gms/games/GameBuffer;

    move-result-object p0

    if-nez p0, :cond_b

    return-object v0

    .line 7
    :cond_b
    :try_start_b
    invoke-virtual {p0}, Lcom/google/android/gms/games/GameBuffer;->getCount()I

    move-result v1

    if-lez v1, :cond_22

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/GameBuffer;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/Game;

    invoke-interface {v0}, Lcom/google/android/gms/games/Game;->freeze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/Game;
    :try_end_1e
    .catchall {:try_start_b .. :try_end_1e} :catchall_26

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/games/GameBuffer;->release()V

    return-object v0

    .line 12
    :cond_22
    invoke-virtual {p0}, Lcom/google/android/gms/games/GameBuffer;->release()V

    return-object v0

    :catchall_26
    move-exception v0

    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/games/GameBuffer;->release()V

    .line 15
    throw v0
.end method


# virtual methods
.method public final synthetic convert(Lcom/google/android/gms/common/api/Result;)Ljava/lang/Object;
    .registers 2
    .param p1    # Lcom/google/android/gms/common/api/Result;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 16
    check-cast p1, Lcom/google/android/gms/games/GamesMetadata$LoadGamesResult;

    invoke-static {p1}, Lcom/google/android/gms/games/zzv;->zza(Lcom/google/android/gms/games/GamesMetadata$LoadGamesResult;)Lcom/google/android/gms/games/Game;

    move-result-object p1

    return-object p1
.end method
