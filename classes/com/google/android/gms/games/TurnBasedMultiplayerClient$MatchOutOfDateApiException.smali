.class public Lcom/google/android/gms/games/TurnBasedMultiplayerClient$MatchOutOfDateApiException;
.super Lcom/google/android/gms/common/api/ApiException;
.source "com.google.android.gms:play-services-games@@20.0.1"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/TurnBasedMultiplayerClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MatchOutOfDateApiException"
.end annotation


# instance fields
.field protected final match:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;)V
    .registers 3
    .param p1    # Lcom/google/android/gms/common/api/Status;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/games/TurnBasedMultiplayerClient$MatchOutOfDateApiException;->match:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    return-void
.end method


# virtual methods
.method public getMatch()Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;
    .registers 2

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/games/TurnBasedMultiplayerClient$MatchOutOfDateApiException;->match:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    return-object v0
.end method
