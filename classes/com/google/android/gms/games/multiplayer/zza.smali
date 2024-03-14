.class public final Lcom/google/android/gms/games/multiplayer/zza;
.super Lcom/google/android/gms/common/data/DataBufferRef;
.source "com.google.android.gms:play-services-games@@20.0.1"

# interfaces
.implements Lcom/google/android/gms/games/multiplayer/Invitation;


# instance fields
.field private final zznx:Lcom/google/android/gms/games/Game;

.field private final zzpg:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/games/multiplayer/Participant;",
            ">;"
        }
    .end annotation
.end field

.field private final zzpj:Lcom/google/android/gms/games/multiplayer/ParticipantRef;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;II)V
    .registers 8

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/DataBufferRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    .line 2
    new-instance v0, Lcom/google/android/gms/games/GameRef;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/games/GameRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/zza;->zznx:Lcom/google/android/gms/games/Game;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/games/multiplayer/zza;->zzpg:Ljava/util/ArrayList;

    const-string p1, "external_inviter_id"

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/multiplayer/zza;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x0

    :goto_19
    if-ge v0, p3, :cond_38

    .line 7
    new-instance v1, Lcom/google/android/gms/games/multiplayer/ParticipantRef;

    iget-object v2, p0, Lcom/google/android/gms/games/multiplayer/zza;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    iget v3, p0, Lcom/google/android/gms/games/multiplayer/zza;->mDataRow:I

    add-int/2addr v3, v0

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/games/multiplayer/ParticipantRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/games/multiplayer/ParticipantRef;->getParticipantId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    move-object p2, v1

    .line 10
    :cond_30
    iget-object v2, p0, Lcom/google/android/gms/games/multiplayer/zza;->zzpg:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_38
    const-string p1, "Must have a valid inviter!"

    .line 12
    invoke-static {p2, p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/games/multiplayer/ParticipantRef;

    iput-object p1, p0, Lcom/google/android/gms/games/multiplayer/zza;->zzpj:Lcom/google/android/gms/games/multiplayer/ParticipantRef;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 2

    .line 27
    invoke-static {p0, p1}, Lcom/google/android/gms/games/multiplayer/InvitationEntity;->zza(Lcom/google/android/gms/games/multiplayer/Invitation;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic freeze()Ljava/lang/Object;
    .registers 2

    .line 34
    new-instance v0, Lcom/google/android/gms/games/multiplayer/InvitationEntity;

    invoke-direct {v0, p0}, Lcom/google/android/gms/games/multiplayer/InvitationEntity;-><init>(Lcom/google/android/gms/games/multiplayer/Invitation;)V

    return-object v0
.end method

.method public final getAvailableAutoMatchSlots()I
    .registers 2

    const-string v0, "has_automatch_criteria"

    .line 23
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/zza;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    :cond_a
    const-string v0, "automatch_max_players"

    .line 25
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/zza;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final getCreationTimestamp()J
    .registers 5

    const-string v0, "creation_timestamp"

    .line 17
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/zza;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    const-string v2, "last_modified_timestamp"

    .line 18
    invoke-virtual {p0, v2}, Lcom/google/android/gms/games/multiplayer/zza;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 19
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getGame()Lcom/google/android/gms/games/Game;
    .registers 2

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/zza;->zznx:Lcom/google/android/gms/games/Game;

    return-object v0
.end method

.method public final getInvitationId()Ljava/lang/String;
    .registers 2

    const-string v0, "external_invitation_id"

    .line 15
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/zza;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getInvitationType()I
    .registers 2

    const-string v0, "type"

    .line 21
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/zza;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final getInviter()Lcom/google/android/gms/games/multiplayer/Participant;
    .registers 2

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/zza;->zzpj:Lcom/google/android/gms/games/multiplayer/ParticipantRef;

    return-object v0
.end method

.method public final getParticipants()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/games/multiplayer/Participant;",
            ">;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/zza;->zzpg:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getVariant()I
    .registers 2

    const-string v0, "variant"

    .line 22
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/zza;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .registers 2

    .line 26
    invoke-static {p0}, Lcom/google/android/gms/games/multiplayer/InvitationEntity;->zza(Lcom/google/android/gms/games/multiplayer/Invitation;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .line 28
    invoke-static {p0}, Lcom/google/android/gms/games/multiplayer/InvitationEntity;->zzb(Lcom/google/android/gms/games/multiplayer/Invitation;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 30
    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/zza;->freeze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/multiplayer/Invitation;

    check-cast v0, Lcom/google/android/gms/games/multiplayer/InvitationEntity;

    .line 31
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/games/multiplayer/InvitationEntity;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
