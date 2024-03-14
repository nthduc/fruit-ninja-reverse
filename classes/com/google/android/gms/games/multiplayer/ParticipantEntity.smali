.class public final Lcom/google/android/gms/games/multiplayer/ParticipantEntity;
.super Lcom/google/android/gms/games/internal/GamesDowngradeableSafeParcel;
.source "com.google.android.gms:play-services-games@@20.0.1"

# interfaces
.implements Lcom/google/android/gms/games/multiplayer/Participant;


# annotations
.annotation build Lcom/google/android/apps/common/proguard/UsedByReflection;
    value = "GamesGmsClientImpl.java"
.end annotation

.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
    creator = "ParticipantEntityCreator"
.end annotation

.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Reserved;
    value = {
        0x3e8
    }
.end annotation

.annotation build Lcom/google/android/gms/common/util/RetainForClient;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/games/multiplayer/ParticipantEntity$zza;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/games/multiplayer/ParticipantEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final status:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getStatus"
        id = 0x5
    .end annotation
.end field

.field private final zzaa:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getIconImageUrl"
        id = 0xb
    .end annotation
.end field

.field private final zzab:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getHiResImageUrl"
        id = 0xc
    .end annotation
.end field

.field private final zzfk:Lcom/google/android/gms/games/PlayerEntity;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getPlayer"
        id = 0x8
    .end annotation
.end field

.field private final zzl:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getDisplayName"
        id = 0x2
    .end annotation
.end field

.field private final zzp:Landroid/net/Uri;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getIconImageUri"
        id = 0x3
    .end annotation
.end field

.field private final zzpk:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getParticipantId"
        id = 0x1
    .end annotation
.end field

.field private final zzpl:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getClientAddress"
        id = 0x6
    .end annotation
.end field

.field private final zzpm:Z
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "isConnectedToRoom"
        id = 0x7
    .end annotation
.end field

.field private final zzpn:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getCapabilities"
        id = 0x9
    .end annotation
.end field

.field private final zzpo:Lcom/google/android/gms/games/multiplayer/ParticipantResult;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getResult"
        id = 0xa
    .end annotation
.end field

.field private final zzq:Landroid/net/Uri;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getHiResImageUri"
        id = 0x4
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 183
    new-instance v0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity$zza;

    invoke-direct {v0}, Lcom/google/android/gms/games/multiplayer/ParticipantEntity$zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/games/multiplayer/Participant;)V
    .registers 4

    .line 11
    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Participant;->getPlayer()Lcom/google/android/gms/games/Player;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    goto :goto_e

    .line 12
    :cond_8
    new-instance v1, Lcom/google/android/gms/games/PlayerEntity;

    invoke-direct {v1, v0}, Lcom/google/android/gms/games/PlayerEntity;-><init>(Lcom/google/android/gms/games/Player;)V

    move-object v0, v1

    .line 13
    :goto_e
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;-><init>(Lcom/google/android/gms/games/multiplayer/Participant;Lcom/google/android/gms/games/PlayerEntity;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/games/multiplayer/Participant;Lcom/google/android/gms/games/PlayerEntity;)V
    .registers 4
    .param p2    # Lcom/google/android/gms/games/PlayerEntity;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 15
    invoke-direct {p0}, Lcom/google/android/gms/games/internal/GamesDowngradeableSafeParcel;-><init>()V

    .line 16
    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Participant;->getParticipantId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->zzpk:Ljava/lang/String;

    .line 17
    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Participant;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->zzl:Ljava/lang/String;

    .line 18
    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Participant;->getIconImageUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->zzp:Landroid/net/Uri;

    .line 19
    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Participant;->getHiResImageUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->zzq:Landroid/net/Uri;

    .line 20
    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Participant;->getStatus()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->status:I

    .line 21
    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Participant;->zzdn()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->zzpl:Ljava/lang/String;

    .line 22
    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Participant;->isConnectedToRoom()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->zzpm:Z

    .line 23
    iput-object p2, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->zzfk:Lcom/google/android/gms/games/PlayerEntity;

    .line 24
    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Participant;->getCapabilities()I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->zzpn:I

    .line 25
    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Participant;->getResult()Lcom/google/android/gms/games/multiplayer/ParticipantResult;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->zzpo:Lcom/google/android/gms/games/multiplayer/ParticipantResult;

    .line 26
    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Participant;->getIconImageUrl()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->zzaa:Ljava/lang/String;

    .line 27
    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Participant;->getHiResImageUrl()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->zzab:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;ZLcom/google/android/gms/games/PlayerEntity;ILcom/google/android/gms/games/multiplayer/ParticipantResult;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x1
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x2
        .end annotation
    .end param
    .param p3    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x3
        .end annotation
    .end param
    .param p4    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x4
        .end annotation
    .end param
    .param p5    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x5
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x6
        .end annotation
    .end param
    .param p7    # Z
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x7
        .end annotation
    .end param
    .param p8    # Lcom/google/android/gms/games/PlayerEntity;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x8
        .end annotation
    .end param
    .param p9    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x9
        .end annotation
    .end param
    .param p10    # Lcom/google/android/gms/games/multiplayer/ParticipantResult;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0xa
        .end annotation
    .end param
    .param p11    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0xb
        .end annotation
    .end param
    .param p12    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0xc
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Constructor;
    .end annotation

    .line 29
    invoke-direct {p0}, Lcom/google/android/gms/games/internal/GamesDowngradeableSafeParcel;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->zzpk:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->zzl:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->zzp:Landroid/net/Uri;

    .line 33
    iput-object p4, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->zzq:Landroid/net/Uri;

    .line 34
    iput p5, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->status:I

    .line 35
    iput-object p6, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->zzpl:Ljava/lang/String;

    .line 36
    iput-boolean p7, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->zzpm:Z

    .line 37
    iput-object p8, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->zzfk:Lcom/google/android/gms/games/PlayerEntity;

    .line 38
    iput p9, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->zzpn:I

    .line 39
    iput-object p10, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->zzpo:Lcom/google/android/gms/games/multiplayer/ParticipantResult;

    .line 40
    iput-object p11, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->zzaa:Ljava/lang/String;

    .line 41
    iput-object p12, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->zzab:Ljava/lang/String;

    return-void
.end method

.method static zza(Lcom/google/android/gms/games/multiplayer/Participant;)I
    .registers 4

    const/16 v0, 0xa

    .line 80
    new-array v0, v0, [Ljava/lang/Object;

    .line 81
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->getPlayer()Lcom/google/android/gms/games/Player;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 82
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->getStatus()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 83
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->zzdn()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 84
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->isConnectedToRoom()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 85
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 86
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->getIconImageUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 87
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->getHiResImageUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 88
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->getCapabilities()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 89
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->getResult()Lcom/google/android/gms/games/multiplayer/ParticipantResult;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 90
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->getParticipantId()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x9

    aput-object p0, v0, v1

    .line 91
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static zza(Ljava/util/List;)Ljava/util/ArrayList;
    .registers 4
    .param p0    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/games/multiplayer/Participant;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/games/multiplayer/ParticipantEntity;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/multiplayer/Participant;

    .line 5
    instance-of v2, v0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;

    if-eqz v2, :cond_20

    .line 6
    check-cast v0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;

    goto :goto_26

    .line 7
    :cond_20
    new-instance v2, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;

    invoke-direct {v2, v0}, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;-><init>(Lcom/google/android/gms/games/multiplayer/Participant;)V

    move-object v0, v2

    .line 8
    :goto_26
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_2a
    return-object v1
.end method

.method static zza(Lcom/google/android/gms/games/multiplayer/Participant;Ljava/lang/Object;)Z
    .registers 6

    .line 93
    instance-of v0, p1, Lcom/google/android/gms/games/multiplayer/Participant;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x1

    if-ne p0, p1, :cond_a

    return v0

    .line 97
    :cond_a
    check-cast p1, Lcom/google/android/gms/games/multiplayer/Participant;

    .line 98
    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Participant;->getPlayer()Lcom/google/android/gms/games/Player;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->getPlayer()Lcom/google/android/gms/games/Player;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b1

    .line 99
    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Participant;->getStatus()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->getStatus()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b1

    .line 100
    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Participant;->zzdn()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->zzdn()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b1

    .line 101
    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Participant;->isConnectedToRoom()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->isConnectedToRoom()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b1

    .line 102
    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Participant;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b1

    .line 103
    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Participant;->getIconImageUri()Landroid/net/Uri;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->getIconImageUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b1

    .line 104
    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Participant;->getHiResImageUri()Landroid/net/Uri;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->getHiResImageUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b1

    .line 105
    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Participant;->getCapabilities()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->getCapabilities()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b1

    .line 106
    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Participant;->getResult()Lcom/google/android/gms/games/multiplayer/ParticipantResult;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->getResult()Lcom/google/android/gms/games/multiplayer/ParticipantResult;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b1

    .line 107
    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Participant;->getParticipantId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->getParticipantId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b1

    return v0

    :cond_b1
    return v1
.end method

.method static synthetic zza(Ljava/lang/Integer;)Z
    .registers 1

    .line 181
    invoke-static {p0}, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->zzb(Ljava/lang/Integer;)Z

    move-result p0

    return p0
.end method

.method static synthetic zza(Ljava/lang/String;)Z
    .registers 1

    .line 182
    invoke-static {p0}, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->canUnparcelSafely(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static zzb(Lcom/google/android/gms/games/multiplayer/Participant;)Ljava/lang/String;
    .registers 4

    .line 110
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 111
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->getParticipantId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ParticipantId"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 112
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->getPlayer()Lcom/google/android/gms/games/Player;

    move-result-object v1

    const-string v2, "Player"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 113
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->getStatus()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Status"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 114
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->zzdn()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ClientAddress"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 115
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->isConnectedToRoom()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "ConnectedToRoom"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 116
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DisplayName"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 117
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->getIconImageUri()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "IconImage"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 118
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->getIconImageUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IconImageUrl"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 119
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->getHiResImageUri()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "HiResImage"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 120
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->getHiResImageUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HiResImageUrl"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 121
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->getCapabilities()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Capabilities"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 122
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->getResult()Lcom/google/android/gms/games/multiplayer/ParticipantResult;

    move-result-object p0

    const-string v1, "Result"

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object p0

    .line 123
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zzg()Ljava/lang/Integer;
    .registers 1

    .line 180
    invoke-static {}, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->getUnparcelClientVersion()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 2

    .line 92
    invoke-static {p0, p1}, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->zza(Lcom/google/android/gms/games/multiplayer/Participant;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final freeze()Lcom/google/android/gms/games/multiplayer/Participant;
    .registers 1

    return-object p0
.end method

.method public final bridge synthetic freeze()Ljava/lang/Object;
    .registers 2

    .line 179
    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->freeze()Lcom/google/android/gms/games/multiplayer/Participant;

    move-result-object v0

    return-object v0
.end method

.method public final getCapabilities()I
    .registers 2

    .line 72
    iget v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->zzpn:I

    return v0
.end method

.method public final getDisplayName()Ljava/lang/String;
    .registers 2

    .line 46
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->zzfk:Lcom/google/android/gms/games/PlayerEntity;

    if-nez v0, :cond_7

    .line 47
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->zzl:Ljava/lang/String;

    return-object v0

    .line 48
    :cond_7
    invoke-virtual {v0}, Lcom/google/android/gms/games/PlayerEntity;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDisplayName(Landroid/database/CharArrayBuffer;)V
    .registers 3

    .line 49
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->zzfk:Lcom/google/android/gms/games/PlayerEntity;

    if-nez v0, :cond_10

    .line 50
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->zzl:Ljava/lang/String;

    if-nez v0, :cond_c

    const/4 v0, 0x0

    .line 51
    iput v0, p1, Landroid/database/CharArrayBuffer;->sizeCopied:I

    return-void

    .line 53
    :cond_c
    invoke-static {v0, p1}, Lcom/google/android/gms/common/util/DataUtils;->copyStringToBuffer(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V

    return-void

    .line 55
    :cond_10
    invoke-virtual {v0, p1}, Lcom/google/android/gms/games/PlayerEntity;->getDisplayName(Landroid/database/CharArrayBuffer;)V

    return-void
.end method

.method public final getHiResImageUri()Landroid/net/Uri;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->zzfk:Lcom/google/android/gms/games/PlayerEntity;

    if-nez v0, :cond_7

    .line 64
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->zzq:Landroid/net/Uri;

    return-object v0

    .line 65
    :cond_7
    invoke-virtual {v0}, Lcom/google/android/gms/games/PlayerEntity;->getHiResImageUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final getHiResImageUrl()Ljava/lang/String;
    .registers 2

    .line 66
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->zzfk:Lcom/google/android/gms/games/PlayerEntity;

    if-nez v0, :cond_7

    .line 67
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->zzab:Ljava/lang/String;

    return-object v0

    .line 68
    :cond_7
    invoke-virtual {v0}, Lcom/google/android/gms/games/PlayerEntity;->getHiResImageUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getIconImageUri()Landroid/net/Uri;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->zzfk:Lcom/google/android/gms/games/PlayerEntity;

    if-nez v0, :cond_7

    .line 58
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->zzp:Landroid/net/Uri;

    return-object v0

    .line 59
    :cond_7
    invoke-virtual {v0}, Lcom/google/android/gms/games/PlayerEntity;->getIconImageUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final getIconImageUrl()Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->zzfk:Lcom/google/android/gms/games/PlayerEntity;

    if-nez v0, :cond_7

    .line 61
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->zzaa:Ljava/lang/String;

    return-object v0

    .line 62
    :cond_7
    invoke-virtual {v0}, Lcom/google/android/gms/games/PlayerEntity;->getIconImageUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getParticipantId()Ljava/lang/String;
    .registers 2

    .line 69
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->zzpk:Ljava/lang/String;

    return-object v0
.end method

.method public final getPlayer()Lcom/google/android/gms/games/Player;
    .registers 2

    .line 70
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->zzfk:Lcom/google/android/gms/games/PlayerEntity;

    return-object v0
.end method

.method public final getResult()Lcom/google/android/gms/games/multiplayer/ParticipantResult;
    .registers 2

    .line 71
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->zzpo:Lcom/google/android/gms/games/multiplayer/ParticipantResult;

    return-object v0
.end method

.method public final getStatus()I
    .registers 2

    .line 43
    iget v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->status:I

    return v0
.end method

.method public final hashCode()I
    .registers 2

    .line 79
    invoke-static {p0}, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->zza(Lcom/google/android/gms/games/multiplayer/Participant;)I

    move-result v0

    return v0
.end method

.method public final isConnectedToRoom()Z
    .registers 2

    .line 45
    iget-boolean v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->zzpm:Z

    return v0
.end method

.method public final isDataValid()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final setShouldDowngrade(Z)V
    .registers 3

    .line 75
    invoke-super {p0, p1}, Lcom/google/android/gms/games/internal/GamesDowngradeableSafeParcel;->setShouldDowngrade(Z)V

    .line 76
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->zzfk:Lcom/google/android/gms/games/PlayerEntity;

    if-eqz v0, :cond_a

    .line 77
    invoke-virtual {v0, p1}, Lcom/google/android/gms/games/PlayerEntity;->setShouldDowngrade(Z)V

    :cond_a
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .line 109
    invoke-static {p0}, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->zzb(Lcom/google/android/gms/games/multiplayer/Participant;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    .line 125
    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->shouldDowngrade()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_70

    .line 127
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    .line 129
    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->getParticipantId()Ljava/lang/String;

    move-result-object v3

    .line 130
    invoke-static {p1, v1, v3, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x2

    .line 132
    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    .line 133
    invoke-static {p1, v1, v3, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x3

    .line 135
    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->getIconImageUri()Landroid/net/Uri;

    move-result-object v3

    .line 136
    invoke-static {p1, v1, v3, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x4

    .line 138
    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->getHiResImageUri()Landroid/net/Uri;

    move-result-object v3

    .line 139
    invoke-static {p1, v1, v3, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x5

    .line 141
    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->getStatus()I

    move-result v3

    .line 142
    invoke-static {p1, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    const/4 v1, 0x6

    .line 144
    iget-object v3, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->zzpl:Ljava/lang/String;

    .line 146
    invoke-static {p1, v1, v3, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x7

    .line 148
    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->isConnectedToRoom()Z

    move-result v3

    .line 149
    invoke-static {p1, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    const/16 v1, 0x8

    .line 151
    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->getPlayer()Lcom/google/android/gms/games/Player;

    move-result-object v3

    .line 152
    invoke-static {p1, v1, v3, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0x9

    .line 154
    iget v3, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->zzpn:I

    .line 155
    invoke-static {p1, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    const/16 v1, 0xa

    .line 157
    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->getResult()Lcom/google/android/gms/games/multiplayer/ParticipantResult;

    move-result-object v3

    .line 158
    invoke-static {p1, v1, v3, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 p2, 0xb

    .line 160
    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->getIconImageUrl()Ljava/lang/String;

    move-result-object v1

    .line 161
    invoke-static {p1, p2, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 p2, 0xc

    .line 163
    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->getHiResImageUrl()Ljava/lang/String;

    move-result-object v1

    .line 164
    invoke-static {p1, p2, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 165
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void

    .line 167
    :cond_70
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->zzpk:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->zzl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->zzp:Landroid/net/Uri;

    const/4 v3, 0x0

    if-nez v0, :cond_81

    move-object v0, v3

    goto :goto_85

    :cond_81
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_85
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->zzq:Landroid/net/Uri;

    if-nez v0, :cond_8d

    goto :goto_91

    :cond_8d
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_91
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 171
    iget v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->status:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->zzpl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 173
    iget-boolean v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->zzpm:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 174
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->zzfk:Lcom/google/android/gms/games/PlayerEntity;

    if-nez v0, :cond_ab

    .line 175
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    .line 176
    :cond_ab
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->zzfk:Lcom/google/android/gms/games/PlayerEntity;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/games/PlayerEntity;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zzdn()Ljava/lang/String;
    .registers 2

    .line 44
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->zzpl:Ljava/lang/String;

    return-object v0
.end method
