.class public final Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;
.super Lcom/google/android/gms/games/internal/zze;
.source "com.google.android.gms:play-services-games@@20.0.1"

# interfaces
.implements Lcom/google/android/gms/games/appcontent/zzh;


# annotations
.annotation build Lcom/google/android/apps/common/proguard/UsedByReflection;
    value = "GamesGmsClientImpl.java"
.end annotation

.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
    creator = "AppContentSectionEntityCreator"
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
            "Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final extras:Landroid/os/Bundle;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getExtras"
        id = 0x5
    .end annotation
.end field

.field private final type:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getType"
        id = 0x8
    .end annotation
.end field

.field private final zzcc:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getTitle"
        id = 0x7
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
        id = 0x9
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
        id = 0xe
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/games/appcontent/AppContentAnnotationEntity;",
            ">;"
        }
    .end annotation
.end field

.field private final zzge:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getSubtitle"
        id = 0x6
    .end annotation
.end field

.field private final zzgk:Ljava/util/ArrayList;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getCards"
        id = 0x3
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/games/appcontent/AppContentCardEntity;",
            ">;"
        }
    .end annotation
.end field

.field private final zzgl:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getCardType"
        id = 0xa
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 110
    new-instance v0, Lcom/google/android/gms/games/appcontent/zzj;

    invoke-direct {v0}, Lcom/google/android/gms/games/appcontent/zzj;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 11
    .param p1    # Ljava/util/ArrayList;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x1
        .end annotation
    .end param
    .param p2    # Ljava/util/ArrayList;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x3
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x4
        .end annotation
    .end param
    .param p4    # Landroid/os/Bundle;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x5
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x6
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x7
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x8
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x9
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0xa
        .end annotation
    .end param
    .param p10    # Ljava/util/ArrayList;
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
            "Lcom/google/android/gms/games/appcontent/AppContentCardEntity;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/games/appcontent/AppContentAnnotationEntity;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/games/internal/zze;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->zzgb:Ljava/util/ArrayList;

    .line 3
    iput-object p10, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->zzgc:Ljava/util/ArrayList;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->zzgk:Ljava/util/ArrayList;

    .line 5
    iput-object p9, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->zzgl:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->zzfr:Ljava/lang/String;

    .line 7
    iput-object p4, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->extras:Landroid/os/Bundle;

    .line 8
    iput-object p8, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->zzfs:Ljava/lang/String;

    .line 9
    iput-object p5, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->zzge:Ljava/lang/String;

    .line 10
    iput-object p6, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->zzcc:Ljava/lang/String;

    .line 11
    iput-object p7, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->type:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    .line 39
    instance-of v0, p1, Lcom/google/android/gms/games/appcontent/zzh;

    if-eqz v0, :cond_97

    const/4 v0, 0x1

    if-ne p0, p1, :cond_8

    return v0

    .line 42
    :cond_8
    check-cast p1, Lcom/google/android/gms/games/appcontent/zzh;

    .line 43
    invoke-interface {p1}, Lcom/google/android/gms/games/appcontent/zzh;->getActions()Ljava/util/List;

    move-result-object v1

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/zzh;->getActions()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_97

    .line 44
    invoke-interface {p1}, Lcom/google/android/gms/games/appcontent/zzh;->zzan()Ljava/util/List;

    move-result-object v1

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/zzh;->zzan()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_97

    .line 45
    invoke-interface {p1}, Lcom/google/android/gms/games/appcontent/zzh;->zzav()Ljava/util/List;

    move-result-object v1

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/zzh;->zzav()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_97

    .line 46
    invoke-interface {p1}, Lcom/google/android/gms/games/appcontent/zzh;->zzaw()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/zzh;->zzaw()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_97

    .line 47
    invoke-interface {p1}, Lcom/google/android/gms/games/appcontent/zzh;->zzaf()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/zzh;->zzaf()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_97

    .line 48
    invoke-interface {p1}, Lcom/google/android/gms/games/appcontent/zzh;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/zzh;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/games/internal/zzb;->zza(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_97

    .line 49
    invoke-interface {p1}, Lcom/google/android/gms/games/appcontent/zzh;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/zzh;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_97

    .line 50
    invoke-interface {p1}, Lcom/google/android/gms/games/appcontent/zzh;->zzap()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/zzh;->zzap()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_97

    .line 51
    invoke-interface {p1}, Lcom/google/android/gms/games/appcontent/zzh;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/zzh;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_97

    .line 52
    invoke-interface {p1}, Lcom/google/android/gms/games/appcontent/zzh;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/zzh;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_97

    return v0

    :cond_97
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

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->zzgb:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final getExtras()Landroid/os/Bundle;
    .registers 2

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->extras:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .registers 2

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->zzfs:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .registers 2

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->zzcc:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .registers 2

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .registers 4

    const/16 v0, 0xa

    .line 25
    new-array v0, v0, [Ljava/lang/Object;

    .line 26
    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/zzh;->getActions()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 27
    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/zzh;->zzan()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 28
    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/zzh;->zzav()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 29
    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/zzh;->zzaw()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 30
    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/zzh;->zzaf()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 31
    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/zzh;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/games/internal/zzb;->zza(Landroid/os/Bundle;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 32
    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/zzh;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 33
    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/zzh;->zzap()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 34
    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/zzh;->getTitle()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 35
    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/zzh;->getType()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 36
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

    .line 55
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 56
    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/zzh;->getActions()Ljava/util/List;

    move-result-object v1

    const-string v2, "Actions"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 57
    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/zzh;->zzan()Ljava/util/List;

    move-result-object v1

    const-string v2, "Annotations"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 58
    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/zzh;->zzav()Ljava/util/List;

    move-result-object v1

    const-string v2, "Cards"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 59
    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/zzh;->zzaw()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CardType"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 60
    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/zzh;->zzaf()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ContentDescription"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 61
    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/zzh;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "Extras"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 62
    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/zzh;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Id"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 63
    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/zzh;->zzap()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Subtitle"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 64
    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/zzh;->getTitle()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Title"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 65
    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/zzh;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Type"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    .line 69
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result p2

    .line 71
    invoke-virtual {p0}, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->getActions()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 72
    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeTypedList(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 74
    invoke-virtual {p0}, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->zzav()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x3

    .line 75
    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeTypedList(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 77
    iget-object v0, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->zzfr:Ljava/lang/String;

    const/4 v2, 0x4

    .line 79
    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 81
    iget-object v0, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->extras:Landroid/os/Bundle;

    const/4 v2, 0x5

    .line 83
    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBundle(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    .line 85
    iget-object v0, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->zzge:Ljava/lang/String;

    const/4 v2, 0x6

    .line 87
    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 89
    iget-object v0, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->zzcc:Ljava/lang/String;

    const/4 v2, 0x7

    .line 91
    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 93
    iget-object v0, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->type:Ljava/lang/String;

    const/16 v2, 0x8

    .line 95
    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 97
    iget-object v0, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->zzfs:Ljava/lang/String;

    const/16 v2, 0x9

    .line 99
    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 101
    iget-object v0, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->zzgl:Ljava/lang/String;

    const/16 v2, 0xa

    .line 103
    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 105
    invoke-virtual {p0}, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->zzan()Ljava/util/List;

    move-result-object v0

    const/16 v2, 0xe

    .line 106
    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeTypedList(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 107
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zzaf()Ljava/lang/String;
    .registers 2

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->zzfr:Ljava/lang/String;

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

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->zzgc:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final zzap()Ljava/lang/String;
    .registers 2

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->zzge:Ljava/lang/String;

    return-object v0
.end method

.method public final zzav()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/games/appcontent/zzd;",
            ">;"
        }
    .end annotation

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->zzgk:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final zzaw()Ljava/lang/String;
    .registers 2

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->zzgl:Ljava/lang/String;

    return-object v0
.end method
