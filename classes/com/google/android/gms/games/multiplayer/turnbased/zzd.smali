.class public final Lcom/google/android/gms/games/multiplayer/turnbased/zzd;
.super Lcom/google/android/gms/common/data/DataBufferRef;
.source "com.google.android.gms:play-services-games@@20.0.1"

# interfaces
.implements Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;


# instance fields
.field private final zznw:I

.field private final zznx:Lcom/google/android/gms/games/Game;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;II)V
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/DataBufferRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    .line 2
    new-instance v0, Lcom/google/android/gms/games/GameRef;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/games/GameRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/zzd;->zznx:Lcom/google/android/gms/games/Game;

    .line 3
    iput p3, p0, Lcom/google/android/gms/games/multiplayer/turnbased/zzd;->zznw:I

    return-void
.end method


# virtual methods
.method public final canRematch()Z
    .registers 3

    .line 42
    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/zzd;->getTurnStatus()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_19

    .line 43
    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/zzd;->getRematchId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_19

    .line 44
    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/zzd;->getParticipants()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_19

    return v1

    :cond_19
    const/4 v0, 0x0

    return v0
.end method

.method public final describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 2

    .line 52
    invoke-static {p0, p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->zza(Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic freeze()Ljava/lang/Object;
    .registers 2

    .line 59
    new-instance v0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;

    invoke-direct {v0, p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;-><init>(Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;)V

    return-object v0
.end method

.method public final getAutoMatchCriteria()Landroid/os/Bundle;
    .registers 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "has_automatch_criteria"

    .line 33
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/zzd;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return-object v0

    :cond_a
    const-string v0, "automatch_min_players"

    .line 35
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/zzd;->getInteger(Ljava/lang/String;)I

    move-result v0

    const-string v1, "automatch_max_players"

    .line 36
    invoke-virtual {p0, v1}, Lcom/google/android/gms/games/multiplayer/turnbased/zzd;->getInteger(Ljava/lang/String;)I

    move-result v1

    const-string v2, "automatch_bit_mask"

    .line 37
    invoke-virtual {p0, v2}, Lcom/google/android/gms/games/multiplayer/turnbased/zzd;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 38
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig;->createAutoMatchCriteria(IIJ)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final getAvailableAutoMatchSlots()I
    .registers 2

    const-string v0, "has_automatch_criteria"

    .line 39
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/zzd;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    :cond_a
    const-string v0, "automatch_max_players"

    .line 41
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/zzd;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final getCreationTimestamp()J
    .registers 3

    const-string v0, "creation_timestamp"

    .line 8
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/zzd;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getCreatorId()Ljava/lang/String;
    .registers 2

    const-string v0, "creator_external"

    .line 7
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/zzd;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getData()[B
    .registers 2

    const-string v0, "data"

    .line 28
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/zzd;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public final getDescription()Ljava/lang/String;
    .registers 2

    const-string v0, "description"

    .line 11
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/zzd;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDescription(Landroid/database/CharArrayBuffer;)V
    .registers 3

    const-string v0, "description"

    .line 12
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/games/multiplayer/turnbased/zzd;->copyToBuffer(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V

    return-void
.end method

.method public final getDescriptionParticipant()Lcom/google/android/gms/games/multiplayer/Participant;
    .registers 2

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/zzd;->getDescriptionParticipantId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    .line 18
    :cond_8
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/zzd;->getParticipant(Ljava/lang/String;)Lcom/google/android/gms/games/multiplayer/Participant;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptionParticipantId()Ljava/lang/String;
    .registers 2

    const-string v0, "description_participant_id"

    .line 14
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/zzd;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getGame()Lcom/google/android/gms/games/Game;
    .registers 2

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/zzd;->zznx:Lcom/google/android/gms/games/Game;

    return-object v0
.end method

.method public final getLastUpdatedTimestamp()J
    .registers 3

    const-string v0, "last_updated_timestamp"

    .line 26
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/zzd;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getLastUpdaterId()Ljava/lang/String;
    .registers 2

    const-string v0, "last_updater_external"

    .line 25
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/zzd;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getMatchId()Ljava/lang/String;
    .registers 2

    const-string v0, "external_match_id"

    .line 6
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/zzd;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getMatchNumber()I
    .registers 2

    const-string v0, "match_number"

    .line 32
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/zzd;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final getParticipant(Ljava/lang/String;)Lcom/google/android/gms/games/multiplayer/Participant;
    .registers 2

    .line 50
    invoke-static {p0, p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->zzc(Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;Ljava/lang/String;)Lcom/google/android/gms/games/multiplayer/Participant;

    move-result-object p1

    return-object p1
.end method

.method public final getParticipantId(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 49
    invoke-static {p0, p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->zzb(Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getParticipantIds()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 48
    invoke-static {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->zzc(Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public final getParticipantStatus(Ljava/lang/String;)I
    .registers 2

    .line 47
    invoke-static {p0, p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->zza(Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public final getParticipants()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/games/multiplayer/Participant;",
            ">;"
        }
    .end annotation

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/google/android/gms/games/multiplayer/turnbased/zzd;->zznw:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 21
    :goto_8
    iget v2, p0, Lcom/google/android/gms/games/multiplayer/turnbased/zzd;->zznw:I

    if-ge v1, v2, :cond_1c

    .line 22
    new-instance v2, Lcom/google/android/gms/games/multiplayer/ParticipantRef;

    iget-object v3, p0, Lcom/google/android/gms/games/multiplayer/turnbased/zzd;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    iget v4, p0, Lcom/google/android/gms/games/multiplayer/turnbased/zzd;->mDataRow:I

    add-int/2addr v4, v1

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/games/multiplayer/ParticipantRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_1c
    return-object v0
.end method

.method public final getPendingParticipantId()Ljava/lang/String;
    .registers 2

    const-string v0, "pending_participant_external"

    .line 27
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/zzd;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getPreviousMatchData()[B
    .registers 2

    const-string v0, "previous_match_data"

    .line 31
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/zzd;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public final getRematchId()Ljava/lang/String;
    .registers 2

    const-string v0, "rematch_id"

    .line 30
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/zzd;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getStatus()I
    .registers 2

    const-string v0, "status"

    .line 9
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/zzd;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final getTurnStatus()I
    .registers 2

    const-string v0, "user_match_status"

    .line 10
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/zzd;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final getVariant()I
    .registers 2

    const-string v0, "variant"

    .line 19
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/zzd;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final getVersion()I
    .registers 2

    const-string v0, "version"

    .line 29
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/zzd;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .registers 2

    .line 51
    invoke-static {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->zza(Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;)I

    move-result v0

    return v0
.end method

.method public final isLocallyModified()Z
    .registers 2

    const-string v0, "upsync_required"

    .line 46
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/zzd;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .line 53
    invoke-static {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->zzb(Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 55
    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/zzd;->freeze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    check-cast v0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;

    .line 56
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
