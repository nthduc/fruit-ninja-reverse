.class public final Lcom/google/android/gms/games/achievement/AchievementEntity;
.super Lcom/google/android/gms/games/internal/zze;
.source "com.google.android.gms:play-services-games@@20.0.1"

# interfaces
.implements Lcom/google/android/gms/games/achievement/Achievement;


# annotations
.annotation build Lcom/google/android/apps/common/proguard/UsedByReflection;
    value = "GamesGmsClientImpl.java"
.end annotation

.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
    creator = "AchievementEntityCreator"
.end annotation

.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Reserved;
    value = {
        0x3e8
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/games/achievement/AchievementEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final description:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getDescription"
        id = 0x4
    .end annotation
.end field

.field private final name:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getName"
        id = 0x3
    .end annotation
.end field

.field private final state:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getState"
        id = 0xc
    .end annotation
.end field

.field private final type:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getType"
        id = 0x2
    .end annotation
.end field

.field private final zzfd:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getAchievementId"
        id = 0x1
    .end annotation
.end field

.field private final zzfe:Landroid/net/Uri;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getUnlockedImageUri"
        id = 0x5
    .end annotation
.end field

.field private final zzff:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getUnlockedImageUrl"
        id = 0x6
    .end annotation
.end field

.field private final zzfg:Landroid/net/Uri;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getRevealedImageUri"
        id = 0x7
    .end annotation
.end field

.field private final zzfh:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getRevealedImageUrl"
        id = 0x8
    .end annotation
.end field

.field private final zzfi:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getTotalStepsRaw"
        id = 0x9
    .end annotation
.end field

.field private final zzfj:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getFormattedTotalStepsRaw"
        id = 0xa
    .end annotation
.end field

.field private final zzfk:Lcom/google/android/gms/games/PlayerEntity;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getPlayerInternal"
        id = 0xb
    .end annotation
.end field

.field private final zzfl:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getCurrentStepsRaw"
        id = 0xd
    .end annotation
.end field

.field private final zzfm:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getFormattedCurrentStepsRaw"
        id = 0xe
    .end annotation
.end field

.field private final zzfn:J
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getLastUpdatedTimestamp"
        id = 0xf
    .end annotation
.end field

.field private final zzfo:J
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getXpValue"
        id = 0x10
    .end annotation
.end field

.field private final zzfp:F
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        defaultValue = "-1.0f"
        getter = "getRarityPercent"
        id = 0x11
    .end annotation
.end field

.field private final zzk:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getApplicationId"
        id = 0x12
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 215
    new-instance v0, Lcom/google/android/gms/games/achievement/zza;

    invoke-direct {v0}, Lcom/google/android/gms/games/achievement/zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/achievement/AchievementEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/games/achievement/Achievement;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/games/internal/zze;-><init>()V

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->getAchievementId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzfd:Ljava/lang/String;

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->getType()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->type:I

    .line 4
    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->name:Ljava/lang/String;

    .line 5
    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->description:Ljava/lang/String;

    .line 6
    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->getUnlockedImageUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzfe:Landroid/net/Uri;

    .line 7
    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->getUnlockedImageUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzff:Ljava/lang/String;

    .line 8
    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->getRevealedImageUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzfg:Landroid/net/Uri;

    .line 9
    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->getRevealedImageUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzfh:Ljava/lang/String;

    .line 10
    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->zzab()Lcom/google/android/gms/games/Player;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_47

    .line 11
    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->zzab()Lcom/google/android/gms/games/Player;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/games/Player;->freeze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/PlayerEntity;

    iput-object v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzfk:Lcom/google/android/gms/games/PlayerEntity;

    goto :goto_49

    .line 12
    :cond_47
    iput-object v1, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzfk:Lcom/google/android/gms/games/PlayerEntity;

    .line 13
    :goto_49
    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->getState()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->state:I

    .line 14
    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->getLastUpdatedTimestamp()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzfn:J

    .line 15
    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->getXpValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzfo:J

    .line 16
    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->zzac()F

    move-result v0

    iput v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzfp:F

    .line 17
    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzk:Ljava/lang/String;

    .line 18
    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->getType()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_87

    .line 19
    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->getTotalSteps()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzfi:I

    .line 20
    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->getFormattedTotalSteps()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzfj:Ljava/lang/String;

    .line 21
    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->getCurrentSteps()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzfl:I

    .line 22
    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->getFormattedCurrentSteps()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzfm:Ljava/lang/String;

    goto :goto_90

    :cond_87
    const/4 p1, 0x0

    .line 23
    iput p1, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzfi:I

    .line 24
    iput-object v1, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzfj:Ljava/lang/String;

    .line 25
    iput p1, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzfl:I

    .line 26
    iput-object v1, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzfm:Ljava/lang/String;

    .line 27
    :goto_90
    iget-object p1, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzfd:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Asserts;->checkNotNull(Ljava/lang/Object;)V

    .line 28
    iget-object p1, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->description:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Asserts;->checkNotNull(Ljava/lang/Object;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/gms/games/PlayerEntity;IILjava/lang/String;JJFLjava/lang/String;)V
    .registers 24
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x1
        .end annotation
    .end param
    .param p2    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x2
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x3
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x4
        .end annotation
    .end param
    .param p5    # Landroid/net/Uri;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x5
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x6
        .end annotation
    .end param
    .param p7    # Landroid/net/Uri;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x7
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x8
        .end annotation
    .end param
    .param p9    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x9
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0xa
        .end annotation
    .end param
    .param p11    # Lcom/google/android/gms/games/PlayerEntity;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0xb
        .end annotation
    .end param
    .param p12    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0xc
        .end annotation
    .end param
    .param p13    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0xd
        .end annotation
    .end param
    .param p14    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0xe
        .end annotation
    .end param
    .param p15    # J
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0xf
        .end annotation
    .end param
    .param p17    # J
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x10
        .end annotation
    .end param
    .param p19    # F
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x11
        .end annotation
    .end param
    .param p20    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x12
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Constructor;
    .end annotation

    move-object v0, p0

    .line 30
    invoke-direct {p0}, Lcom/google/android/gms/games/internal/zze;-><init>()V

    move-object v1, p1

    .line 31
    iput-object v1, v0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzfd:Ljava/lang/String;

    move v1, p2

    .line 32
    iput v1, v0, Lcom/google/android/gms/games/achievement/AchievementEntity;->type:I

    move-object v1, p3

    .line 33
    iput-object v1, v0, Lcom/google/android/gms/games/achievement/AchievementEntity;->name:Ljava/lang/String;

    move-object v1, p4

    .line 34
    iput-object v1, v0, Lcom/google/android/gms/games/achievement/AchievementEntity;->description:Ljava/lang/String;

    move-object v1, p5

    .line 35
    iput-object v1, v0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzfe:Landroid/net/Uri;

    move-object v1, p6

    .line 36
    iput-object v1, v0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzff:Ljava/lang/String;

    move-object v1, p7

    .line 37
    iput-object v1, v0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzfg:Landroid/net/Uri;

    move-object v1, p8

    .line 38
    iput-object v1, v0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzfh:Ljava/lang/String;

    move v1, p9

    .line 39
    iput v1, v0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzfi:I

    move-object v1, p10

    .line 40
    iput-object v1, v0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzfj:Ljava/lang/String;

    move-object v1, p11

    .line 41
    iput-object v1, v0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzfk:Lcom/google/android/gms/games/PlayerEntity;

    move v1, p12

    .line 42
    iput v1, v0, Lcom/google/android/gms/games/achievement/AchievementEntity;->state:I

    move/from16 v1, p13

    .line 43
    iput v1, v0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzfl:I

    move-object/from16 v1, p14

    .line 44
    iput-object v1, v0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzfm:Ljava/lang/String;

    move-wide/from16 v1, p15

    .line 45
    iput-wide v1, v0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzfn:J

    move-wide/from16 v1, p17

    .line 46
    iput-wide v1, v0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzfo:J

    move/from16 v1, p19

    .line 47
    iput v1, v0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzfp:F

    move-object/from16 v1, p20

    .line 48
    iput-object v1, v0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzk:Ljava/lang/String;

    return-void
.end method

.method static zza(Lcom/google/android/gms/games/achievement/Achievement;)I
    .registers 8

    .line 98
    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getType()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_11

    .line 99
    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getCurrentSteps()I

    move-result v0

    .line 100
    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getTotalSteps()I

    move-result v3

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_13
    const/16 v4, 0xb

    .line 101
    new-array v4, v4, [Ljava/lang/Object;

    .line 102
    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getAchievementId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    .line 103
    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v1, 0x2

    .line 104
    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v1, 0x3

    .line 105
    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v1, 0x4

    .line 106
    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getDescription()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v1, 0x5

    .line 107
    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getXpValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v1, 0x6

    .line 108
    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getState()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v1, 0x7

    .line 109
    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getLastUpdatedTimestamp()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v4, v1

    const/16 v1, 0x8

    .line 110
    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->zzab()Lcom/google/android/gms/games/Player;

    move-result-object p0

    aput-object p0, v4, v1

    const/16 p0, 0x9

    .line 111
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, p0

    const/16 p0, 0xa

    .line 112
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, p0

    .line 113
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method static zza(Lcom/google/android/gms/games/achievement/Achievement;Ljava/lang/Object;)Z
    .registers 9

    .line 115
    instance-of v0, p1, Lcom/google/android/gms/games/achievement/Achievement;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x1

    if-ne p0, p1, :cond_a

    return v0

    .line 119
    :cond_a
    check-cast p1, Lcom/google/android/gms/games/achievement/Achievement;

    .line 120
    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->getType()I

    move-result v2

    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getType()I

    move-result v3

    if-eq v2, v3, :cond_17

    return v1

    .line 122
    :cond_17
    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getType()I

    move-result v2

    if-ne v2, v0, :cond_33

    .line 123
    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->getCurrentSteps()I

    move-result v2

    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getCurrentSteps()I

    move-result v3

    if-eq v2, v3, :cond_28

    return v1

    .line 125
    :cond_28
    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->getTotalSteps()I

    move-result v2

    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getTotalSteps()I

    move-result v3

    if-eq v2, v3, :cond_33

    return v1

    .line 127
    :cond_33
    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->getXpValue()J

    move-result-wide v2

    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getXpValue()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_a8

    .line 128
    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->getState()I

    move-result v2

    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getState()I

    move-result v3

    if-ne v2, v3, :cond_a8

    .line 129
    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->getLastUpdatedTimestamp()J

    move-result-wide v2

    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getLastUpdatedTimestamp()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_a8

    .line 130
    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->getAchievementId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getAchievementId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a8

    .line 131
    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getApplicationId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a8

    .line 132
    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a8

    .line 133
    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a8

    .line 134
    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->zzab()Lcom/google/android/gms/games/Player;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->zzab()Lcom/google/android/gms/games/Player;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a8

    .line 135
    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->zzac()F

    move-result p1

    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->zzac()F

    move-result p0

    cmpl-float p0, p1, p0

    if-nez p0, :cond_a8

    return v0

    :cond_a8
    return v1
.end method

.method static zzb(Lcom/google/android/gms/games/achievement/Achievement;)Ljava/lang/String;
    .registers 4

    .line 139
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 140
    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getAchievementId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Id"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 141
    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Game Id"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 142
    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Type"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 143
    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Name"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 144
    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getDescription()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Description"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 145
    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->zzab()Lcom/google/android/gms/games/Player;

    move-result-object v1

    const-string v2, "Player"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 146
    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getState()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "State"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 147
    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->zzac()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "Rarity Percent"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 148
    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_81

    .line 149
    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getCurrentSteps()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CurrentSteps"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    .line 150
    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getTotalSteps()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "TotalSteps"

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    .line 151
    :cond_81
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 2

    .line 114
    invoke-static {p0, p1}, Lcom/google/android/gms/games/achievement/AchievementEntity;->zza(Lcom/google/android/gms/games/achievement/Achievement;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final freeze()Lcom/google/android/gms/games/achievement/Achievement;
    .registers 1

    return-object p0
.end method

.method public final bridge synthetic freeze()Ljava/lang/Object;
    .registers 2

    .line 214
    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementEntity;->freeze()Lcom/google/android/gms/games/achievement/Achievement;

    move-result-object v0

    return-object v0
.end method

.method public final getAchievementId()Ljava/lang/String;
    .registers 2

    .line 50
    iget-object v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzfd:Ljava/lang/String;

    return-object v0
.end method

.method public final getApplicationId()Ljava/lang/String;
    .registers 2

    .line 51
    iget-object v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzk:Ljava/lang/String;

    return-object v0
.end method

.method public final getCurrentSteps()I
    .registers 3

    .line 79
    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementEntity;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Asserts;->checkState(Z)V

    .line 81
    iget v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzfl:I

    return v0
.end method

.method public final getDescription()Ljava/lang/String;
    .registers 2

    .line 56
    iget-object v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final getDescription(Landroid/database/CharArrayBuffer;)V
    .registers 3

    .line 57
    iget-object v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->description:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/util/DataUtils;->copyStringToBuffer(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V

    return-void
.end method

.method public final getFormattedCurrentSteps()Ljava/lang/String;
    .registers 3

    .line 83
    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementEntity;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Asserts;->checkState(Z)V

    .line 85
    iget-object v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzfm:Ljava/lang/String;

    return-object v0
.end method

.method public final getFormattedCurrentSteps(Landroid/database/CharArrayBuffer;)V
    .registers 4

    .line 87
    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementEntity;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Asserts;->checkState(Z)V

    .line 88
    iget-object v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzfm:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/util/DataUtils;->copyStringToBuffer(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V

    return-void
.end method

.method public final getFormattedTotalSteps()Ljava/lang/String;
    .registers 3

    .line 67
    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementEntity;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Asserts;->checkState(Z)V

    .line 69
    iget-object v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzfj:Ljava/lang/String;

    return-object v0
.end method

.method public final getFormattedTotalSteps(Landroid/database/CharArrayBuffer;)V
    .registers 4

    .line 71
    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementEntity;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Asserts;->checkState(Z)V

    .line 72
    iget-object v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzfj:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/util/DataUtils;->copyStringToBuffer(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V

    return-void
.end method

.method public final getLastUpdatedTimestamp()J
    .registers 3

    .line 90
    iget-wide v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzfn:J

    return-wide v0
.end method

.method public final getName()Ljava/lang/String;
    .registers 2

    .line 53
    iget-object v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getName(Landroid/database/CharArrayBuffer;)V
    .registers 3

    .line 54
    iget-object v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->name:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/util/DataUtils;->copyStringToBuffer(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V

    return-void
.end method

.method public final getPlayer()Lcom/google/android/gms/games/Player;
    .registers 2

    .line 75
    iget-object v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzfk:Lcom/google/android/gms/games/PlayerEntity;

    .line 76
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/Player;

    return-object v0
.end method

.method public final getRevealedImageUri()Landroid/net/Uri;
    .registers 2

    .line 61
    iget-object v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzfg:Landroid/net/Uri;

    return-object v0
.end method

.method public final getRevealedImageUrl()Ljava/lang/String;
    .registers 2

    .line 62
    iget-object v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzfh:Ljava/lang/String;

    return-object v0
.end method

.method public final getState()I
    .registers 2

    .line 78
    iget v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->state:I

    return v0
.end method

.method public final getTotalSteps()I
    .registers 3

    .line 63
    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementEntity;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Asserts;->checkState(Z)V

    .line 65
    iget v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzfi:I

    return v0
.end method

.method public final getType()I
    .registers 2

    .line 52
    iget v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->type:I

    return v0
.end method

.method public final getUnlockedImageUri()Landroid/net/Uri;
    .registers 2

    .line 59
    iget-object v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzfe:Landroid/net/Uri;

    return-object v0
.end method

.method public final getUnlockedImageUrl()Ljava/lang/String;
    .registers 2

    .line 60
    iget-object v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzff:Ljava/lang/String;

    return-object v0
.end method

.method public final getXpValue()J
    .registers 3

    .line 91
    iget-wide v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzfo:J

    return-wide v0
.end method

.method public final hashCode()I
    .registers 2

    .line 95
    invoke-static {p0}, Lcom/google/android/gms/games/achievement/AchievementEntity;->zza(Lcom/google/android/gms/games/achievement/Achievement;)I

    move-result v0

    return v0
.end method

.method public final isDataValid()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .line 137
    invoke-static {p0}, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzb(Lcom/google/android/gms/games/achievement/Achievement;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 8

    .line 153
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    .line 155
    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementEntity;->getAchievementId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 156
    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 158
    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementEntity;->getType()I

    move-result v1

    const/4 v3, 0x2

    .line 159
    invoke-static {p1, v3, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 161
    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementEntity;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    .line 162
    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 164
    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementEntity;->getDescription()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x4

    .line 165
    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 167
    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementEntity;->getUnlockedImageUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x5

    .line 168
    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 170
    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementEntity;->getUnlockedImageUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x6

    .line 171
    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 173
    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementEntity;->getRevealedImageUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x7

    .line 174
    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 176
    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementEntity;->getRevealedImageUrl()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x8

    .line 177
    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 179
    iget v1, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzfi:I

    const/16 v3, 0x9

    .line 180
    invoke-static {p1, v3, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 182
    iget-object v1, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzfj:Ljava/lang/String;

    const/16 v3, 0xa

    .line 184
    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 186
    iget-object v1, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzfk:Lcom/google/android/gms/games/PlayerEntity;

    const/16 v3, 0xb

    .line 188
    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 190
    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementEntity;->getState()I

    move-result p2

    const/16 v1, 0xc

    .line 191
    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 193
    iget p2, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzfl:I

    const/16 v1, 0xd

    .line 194
    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 196
    iget-object p2, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzfm:Ljava/lang/String;

    const/16 v1, 0xe

    .line 198
    invoke-static {p1, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 200
    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementEntity;->getLastUpdatedTimestamp()J

    move-result-wide v3

    const/16 p2, 0xf

    .line 201
    invoke-static {p1, p2, v3, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    .line 203
    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementEntity;->getXpValue()J

    move-result-wide v3

    const/16 p2, 0x10

    .line 204
    invoke-static {p1, p2, v3, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    .line 206
    iget p2, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzfp:F

    const/16 v1, 0x11

    .line 207
    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeFloat(Landroid/os/Parcel;IF)V

    .line 209
    iget-object p2, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzk:Ljava/lang/String;

    const/16 v1, 0x12

    .line 211
    invoke-static {p1, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 212
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zzab()Lcom/google/android/gms/games/Player;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzfk:Lcom/google/android/gms/games/PlayerEntity;

    return-object v0
.end method

.method public final zzac()F
    .registers 2

    .line 92
    iget v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzfp:F

    return v0
.end method