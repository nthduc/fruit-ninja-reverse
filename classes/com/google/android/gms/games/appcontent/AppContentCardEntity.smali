.class public final Lcom/google/android/gms/games/appcontent/AppContentCardEntity;
.super Lcom/google/android/gms/games/internal/zze;
.source "com.google.android.gms:play-services-games@@20.0.1"

# interfaces
.implements Lcom/google/android/gms/games/appcontent/zzd;


# annotations
.annotation build Lcom/google/android/apps/common/proguard/UsedByReflection;
    value = "GamesGmsClientImpl.java"
.end annotation

.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
    creator = "AppContentCardEntityCreator"
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
            "Lcom/google/android/gms/games/appcontent/AppContentCardEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final description:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getDescription"
        id = 0x6
    .end annotation
.end field

.field private final extras:Landroid/os/Bundle;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getExtras"
        id = 0x7
    .end annotation
.end field

.field private final type:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getType"
        id = 0xd
    .end annotation
.end field

.field private final zzcc:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getTitle"
        id = 0xb
    .end annotation
.end field

.field private final zzfq:Ljava/util/ArrayList;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getConditions"
        id = 0x3
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/games/appcontent/AppContentConditionEntity;",
            ">;"
        }
    .end annotation
.end field

.field private final zzfr:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getContentDescription"
        id = 0x4
    .end annotation
.end field

.field private final zzfs:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getId"
        id = 0xe
    .end annotation
.end field

.field private final zzgb:Ljava/util/ArrayList;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getActions"
        id = 0x1
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/games/appcontent/AppContentActionEntity;",
            ">;"
        }
    .end annotation
.end field

.field private final zzgc:Ljava/util/ArrayList;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getAnnotations"
        id = 0x2
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/games/appcontent/AppContentAnnotationEntity;",
            ">;"
        }
    .end annotation
.end field

.field private final zzgd:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getCurrentProgress"
        id = 0x5
    .end annotation
.end field

.field private final zzge:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getSubtitle"
        id = 0xa
    .end annotation
.end field

.field private final zzgf:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getTotalProgress"
        id = 0xc
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 126
    new-instance v0, Lcom/google/android/gms/games/appcontent/zzf;

    invoke-direct {v0}, Lcom/google/android/gms/games/appcontent/zzf;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/appcontent/AppContentCardEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 13
    .param p1    # Ljava/util/ArrayList;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x1
        .end annotation
    .end param
    .param p2    # Ljava/util/ArrayList;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x2
        .end annotation
    .end param
    .param p3    # Ljava/util/ArrayList;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x3
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
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
    .param p7    # Landroid/os/Bundle;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x7
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0xa
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0xb
        .end annotation
    .end param
    .param p10    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0xc
        .end annotation
    .end param
    .param p11    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0xd
        .end annotation
    .end param
    .param p12    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0xe
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Constructor;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/games/appcontent/AppContentActionEntity;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/games/appcontent/AppContentAnnotationEntity;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/games/appcontent/AppContentConditionEntity;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/games/internal/zze;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/games/appcontent/AppContentCardEntity;->zzgb:Ljava/util/ArrayList;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/games/appcontent/AppContentCardEntity;->zzgc:Ljava/util/ArrayList;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/games/appcontent/AppContentCardEntity;->zzfq:Ljava/util/ArrayList;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/games/appcontent/AppContentCardEntity;->zzfr:Ljava/lang/String;

    .line 6
    iput p5, p0, Lcom/google/android/gms/games/appcontent/AppContentCardEntity;->zzgd:I

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/games/appcontent/AppContentCardEntity;->description:Ljava/lang/String;

    .line 8
    iput-object p7, p0, Lcom/google/android/gms/games/appcontent/AppContentCardEntity;->extras:Landroid/os/Bundle;

    .line 9
    iput-object p12, p0, Lcom/google/android/gms/games/appcontent/AppContentCardEntity;->zzfs:Ljava/lang/String;

    .line 10
    iput-object p8, p0, Lcom/google/android/gms/games/appcontent/AppContentCardEntity;->zzge:Ljava/lang/String;

    .line 11
    iput-object p9, p0, Lcom/google/android/gms/games/appcontent/AppContentCardEntity;->zzcc:Ljava/lang/String;

    .line 12
    iput p10, p0, Lcom/google/android/gms/games/appcontent/AppContentCardEntity;->zzgf:I

    .line 13
    iput-object p11, p0, Lcom/google/android/gms/games/appcontent/AppContentCardEntity;->type:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    .line 45
    instance-of v0, p1, Lcom/google/android/gms/games/appcontent/zzd;

    if-eqz v0, :cond_c3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_8

    return v0

    .line 48
    :cond_8
    check-cast p1, Lcom/google/android/gms/games/appcontent/zzd;

    .line 49
    invoke-interface {p1}, Lcom/google/android/gms/games/appcontent/zzd;->getActions()Ljava/util/List;

    move-result-object v1

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/zzd;->getActions()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c3

    .line 50
    invoke-interface {p1}, Lcom/google/android/gms/games/appcontent/zzd;->zzan()Ljava/util/List;

    move-result-object v1

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/zzd;->zzan()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c3

    .line 51
    invoke-interface {p1}, Lcom/google/android/gms/games/appcontent/zzd;->zzae()Ljava/util/List;

    move-result-object v1

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/zzd;->zzae()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c3

    .line 52
    invoke-interface {p1}, Lcom/google/android/gms/games/appcontent/zzd;->zzaf()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/zzd;->zzaf()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c3

    .line 53
    invoke-interface {p1}, Lcom/google/android/gms/games/appcontent/zzd;->zzao()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/zzd;->zzao()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c3

    .line 54
    invoke-interface {p1}, Lcom/google/android/gms/games/appcontent/zzd;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/zzd;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c3

    .line 55
    invoke-interface {p1}, Lcom/google/android/gms/games/appcontent/zzd;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/zzd;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/games/internal/zzb;->zza(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_c3

    .line 56
    invoke-interface {p1}, Lcom/google/android/gms/games/appcontent/zzd;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/zzd;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c3

    .line 57
    invoke-interface {p1}, Lcom/google/android/gms/games/appcontent/zzd;->zzap()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/zzd;->zzap()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c3

    .line 58
    invoke-interface {p1}, Lcom/google/android/gms/games/appcontent/zzd;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/zzd;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c3

    .line 59
    invoke-interface {p1}, Lcom/google/android/gms/games/appcontent/zzd;->zzaq()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/zzd;->zzaq()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c3

    .line 60
    invoke-interface {p1}, Lcom/google/android/gms/games/appcontent/zzd;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/zzd;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c3

    return v0

    :cond_c3
    const/4 p1, 0x0

    return p1
.end method

.method public final bridge synthetic freeze()Ljava/lang/Object;
    .registers 1

    return-object p0
.end method

.method public final getActions()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/games/appcontent/zza;",
            ">;"
        }
    .end annotation

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/games/appcontent/AppContentCardEntity;->zzgb:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final getDescription()Ljava/lang/String;
    .registers 2

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/games/appcontent/AppContentCardEntity;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final getExtras()Landroid/os/Bundle;
    .registers 2

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/games/appcontent/AppContentCardEntity;->extras:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .registers 2

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/games/appcontent/AppContentCardEntity;->zzfs:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .registers 2

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/games/appcontent/AppContentCardEntity;->zzcc:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .registers 2

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/games/appcontent/AppContentCardEntity;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .registers 4

    const/16 v0, 0xc

    .line 29
    new-array v0, v0, [Ljava/lang/Object;

    .line 30
    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/zzd;->getActions()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 31
    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/zzd;->zzan()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 32
    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/zzd;->zzae()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 33
    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/zzd;->zzaf()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 34
    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/zzd;->zzao()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 35
    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/zzd;->getDescription()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 36
    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/zzd;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/games/internal/zzb;->zza(Landroid/os/Bundle;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 37
    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/zzd;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 38
    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/zzd;->zzap()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 39
    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/zzd;->getTitle()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 40
    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/zzd;->zzaq()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 41
    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/zzd;->getType()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 42
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final isDataValid()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .line 63
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 64
    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/zzd;->getActions()Ljava/util/List;

    move-result-object v1

    const-string v2, "Actions"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 65
    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/zzd;->zzan()Ljava/util/List;

    move-result-object v1

    const-string v2, "Annotations"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 66
    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/zzd;->zzae()Ljava/util/List;

    move-result-object v1

    const-string v2, "Conditions"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 67
    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/zzd;->zzaf()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ContentDescription"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 68
    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/zzd;->zzao()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CurrentSteps"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 69
    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/zzd;->getDescription()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Description"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 70
    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/zzd;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "Extras"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 71
    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/zzd;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Id"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 72
    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/zzd;->zzap()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Subtitle"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 73
    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/zzd;->getTitle()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Title"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 74
    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/zzd;->zzaq()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "TotalSteps"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 75
    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/zzd;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Type"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    .line 79
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result p2

    .line 81
    invoke-virtual {p0}, Lcom/google/android/gms/games/appcontent/AppContentCardEntity;->getActions()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 82
    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeTypedList(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 84
    invoke-virtual {p0}, Lcom/google/android/gms/games/appcontent/AppContentCardEntity;->zzan()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x2

    .line 85
    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeTypedList(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 87
    invoke-virtual {p0}, Lcom/google/android/gms/games/appcontent/AppContentCardEntity;->zzae()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x3

    .line 88
    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeTypedList(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 90
    iget-object v0, p0, Lcom/google/android/gms/games/appcontent/AppContentCardEntity;->zzfr:Ljava/lang/String;

    const/4 v2, 0x4

    .line 92
    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 94
    iget v0, p0, Lcom/google/android/gms/games/appcontent/AppContentCardEntity;->zzgd:I

    const/4 v2, 0x5

    .line 95
    invoke-static {p1, v2, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 97
    iget-object v0, p0, Lcom/google/android/gms/games/appcontent/AppContentCardEntity;->description:Ljava/lang/String;

    const/4 v2, 0x6

    .line 99
    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 101
    iget-object v0, p0, Lcom/google/android/gms/games/appcontent/AppContentCardEntity;->extras:Landroid/os/Bundle;

    const/4 v2, 0x7

    .line 103
    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBundle(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    .line 105
    iget-object v0, p0, Lcom/google/android/gms/games/appcontent/AppContentCardEntity;->zzge:Ljava/lang/String;

    const/16 v2, 0xa

    .line 107
    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 109
    iget-object v0, p0, Lcom/google/android/gms/games/appcontent/AppContentCardEntity;->zzcc:Ljava/lang/String;

    const/16 v2, 0xb

    .line 111
    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 113
    iget v0, p0, Lcom/google/android/gms/games/appcontent/AppContentCardEntity;->zzgf:I

    const/16 v2, 0xc

    .line 114
    invoke-static {p1, v2, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 116
    iget-object v0, p0, Lcom/google/android/gms/games/appcontent/AppContentCardEntity;->type:Ljava/lang/String;

    const/16 v2, 0xd

    .line 118
    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 120
    iget-object v0, p0, Lcom/google/android/gms/games/appcontent/AppContentCardEntity;->zzfs:Ljava/lang/String;

    const/16 v2, 0xe

    .line 122
    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 123
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zzae()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/games/appcontent/zzg;",
            ">;"
        }
    .end annotation

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/games/appcontent/AppContentCardEntity;->zzfq:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final zzaf()Ljava/lang/String;
    .registers 2

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/games/appcontent/AppContentCardEntity;->zzfr:Ljava/lang/String;

    return-object v0
.end method

.method public final zzan()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/games/appcontent/zzc;",
            ">;"
        }
    .end annotation

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/games/appcontent/AppContentCardEntity;->zzgc:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final zzao()I
    .registers 2

    .line 19
    iget v0, p0, Lcom/google/android/gms/games/appcontent/AppContentCardEntity;->zzgd:I

    return v0
.end method

.method public final zzap()Ljava/lang/String;
    .registers 2

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/games/appcontent/AppContentCardEntity;->zzge:Ljava/lang/String;

    return-object v0
.end method

.method public final zzaq()I
    .registers 2

    .line 25
    iget v0, p0, Lcom/google/android/gms/games/appcontent/AppContentCardEntity;->zzgf:I

    return v0
.end method
