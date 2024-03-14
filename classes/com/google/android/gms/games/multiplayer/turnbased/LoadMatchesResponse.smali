.class public final Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@20.0.1"


# instance fields
.field private final zzql:Lcom/google/android/gms/games/multiplayer/InvitationBuffer;

.field private final zzqm:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

.field private final zzqn:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

.field private final zzqo:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->zza(Landroid/os/Bundle;I)Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    .line 4
    new-instance v2, Lcom/google/android/gms/games/multiplayer/InvitationBuffer;

    invoke-direct {v2, v0}, Lcom/google/android/gms/games/multiplayer/InvitationBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    iput-object v2, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->zzql:Lcom/google/android/gms/games/multiplayer/InvitationBuffer;

    goto :goto_15

    .line 5
    :cond_13
    iput-object v1, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->zzql:Lcom/google/android/gms/games/multiplayer/InvitationBuffer;

    :goto_15
    const/4 v0, 0x1

    .line 6
    invoke-static {p1, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->zza(Landroid/os/Bundle;I)Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 8
    new-instance v2, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    invoke-direct {v2, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    iput-object v2, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->zzqm:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    goto :goto_26

    .line 9
    :cond_24
    iput-object v1, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->zzqm:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    :goto_26
    const/4 v0, 0x2

    .line 10
    invoke-static {p1, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->zza(Landroid/os/Bundle;I)Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 12
    new-instance v2, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    invoke-direct {v2, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    iput-object v2, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->zzqn:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    goto :goto_37

    .line 13
    :cond_35
    iput-object v1, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->zzqn:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    :goto_37
    const/4 v0, 0x3

    .line 14
    invoke-static {p1, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->zza(Landroid/os/Bundle;I)Lcom/google/android/gms/common/data/DataHolder;

    move-result-object p1

    if-eqz p1, :cond_46

    .line 16
    new-instance v0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    invoke-direct {v0, p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->zzqo:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    return-void

    .line 17
    :cond_46
    iput-object v1, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->zzqo:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    return-void
.end method

.method private static zza(Landroid/os/Bundle;I)Lcom/google/android/gms/common/data/DataHolder;
    .registers 4

    if-eqz p1, :cond_2f

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2c

    const/4 v0, 0x2

    if-eq p1, v0, :cond_29

    const/4 v0, 0x3

    if-eq p1, v0, :cond_26

    const/16 v0, 0x26

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Unknown match turn status: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MatchTurnStatus"

    invoke-static {v0, p1}, Lcom/google/android/gms/games/internal/zzaz;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "TURN_STATUS_UNKNOWN"

    goto :goto_31

    :cond_26
    const-string p1, "TURN_STATUS_COMPLETE"

    goto :goto_31

    :cond_29
    const-string p1, "TURN_STATUS_THEIR_TURN"

    goto :goto_31

    :cond_2c
    const-string p1, "TURN_STATUS_MY_TURN"

    goto :goto_31

    :cond_2f
    const-string p1, "TURN_STATUS_INVITED"

    .line 28
    :goto_31
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_39

    const/4 p0, 0x0

    return-object p0

    .line 30
    :cond_39
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/common/data/DataHolder;

    return-object p0
.end method


# virtual methods
.method public final close()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 35
    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->release()V

    return-void
.end method

.method public final getCompletedMatches()Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;
    .registers 2

    .line 34
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->zzqo:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    return-object v0
.end method

.method public final getInvitations()Lcom/google/android/gms/games/multiplayer/InvitationBuffer;
    .registers 2

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->zzql:Lcom/google/android/gms/games/multiplayer/InvitationBuffer;

    return-object v0
.end method

.method public final getMyTurnMatches()Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;
    .registers 2

    .line 32
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->zzqm:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    return-object v0
.end method

.method public final getTheirTurnMatches()Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;
    .registers 2

    .line 33
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->zzqn:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    return-object v0
.end method

.method public final hasData()Z
    .registers 3

    .line 46
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->zzql:Lcom/google/android/gms/games/multiplayer/InvitationBuffer;

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/google/android/gms/games/multiplayer/InvitationBuffer;->getCount()I

    move-result v0

    if-lez v0, :cond_c

    return v1

    .line 48
    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->zzqm:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;->getCount()I

    move-result v0

    if-lez v0, :cond_17

    return v1

    .line 50
    :cond_17
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->zzqn:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;->getCount()I

    move-result v0

    if-lez v0, :cond_22

    return v1

    .line 52
    :cond_22
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->zzqo:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;->getCount()I

    move-result v0

    if-lez v0, :cond_2d

    return v1

    :cond_2d
    const/4 v0, 0x0

    return v0
.end method

.method public final release()V
    .registers 2

    .line 37
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->zzql:Lcom/google/android/gms/games/multiplayer/InvitationBuffer;

    if-eqz v0, :cond_7

    .line 38
    invoke-virtual {v0}, Lcom/google/android/gms/games/multiplayer/InvitationBuffer;->release()V

    .line 39
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->zzqm:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    if-eqz v0, :cond_e

    .line 40
    invoke-virtual {v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;->release()V

    .line 41
    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->zzqn:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    if-eqz v0, :cond_15

    .line 42
    invoke-virtual {v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;->release()V

    .line 43
    :cond_15
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->zzqo:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    if-eqz v0, :cond_1c

    .line 44
    invoke-virtual {v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;->release()V

    :cond_1c
    return-void
.end method
