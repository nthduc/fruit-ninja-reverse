.class public final Lcom/google/android/gms/games/appcontent/AppContentActionEntity;
.super Lcom/google/android/gms/games/internal/zze;
.source "com.google.android.gms:play-services-games@@20.0.1"

# interfaces
.implements Lcom/google/android/gms/games/appcontent/zza;


# annotations
.annotation build Lcom/google/android/apps/common/proguard/UsedByReflection;
    value = "GamesGmsClientImpl.java"
.end annotation

.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
    creator = "AppContentActionEntityCreator"
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
            "Lcom/google/android/gms/games/appcontent/AppContentActionEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final extras:Landroid/os/Bundle;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getExtras"
        id = 0x3
    .end annotation
.end field

.field private final type:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getType"
        id = 0x6
    .end annotation
.end field

.field private final zzfq:Ljava/util/ArrayList;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getConditions"
        id = 0x1
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
        id = 0x2
    .end annotation
.end field

.field private final zzfs:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getId"
        id = 0x7
    .end annotation
.end field

.field private final zzft:Lcom/google/android/gms/games/appcontent/AppContentAnnotationEntity;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getAnnotation"
        id = 0x8
    .end annotation
.end field

.field private final zzfu:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getOverflowText"
        id = 0x9
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 85
    new-instance v0, Lcom/google/android/gms/games/appcontent/zzb;

    invoke-direct {v0}, Lcom/google/android/gms/games/appcontent/zzb;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/appcontent/AppContentActionEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/util/ArrayList;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/games/appcontent/AppContentAnnotationEntity;Ljava/lang/String;)V
    .registers 8
    .param p1    # Ljava/util/ArrayList;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x1
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x2
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x3
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x6
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x7
        .end annotation
    .end param
    .param p6    # Lcom/google/android/gms/games/appcontent/AppContentAnnotationEntity;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x8
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x9
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Constructor;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/games/appcontent/AppContentConditionEntity;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/games/appcontent/AppContentAnnotationEntity;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/games/internal/zze;-><init>()V

    .line 2
    iput-object p6, p0, Lcom/google/android/gms/games/appcontent/AppContentActionEntity;->zzft:Lcom/google/android/gms/games/appcontent/AppContentAnnotationEntity;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/games/appcontent/AppContentActionEntity;->zzfq:Ljava/util/ArrayList;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/games/appcontent/AppContentActionEntity;->zzfr:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/google/android/gms/games/appcontent/AppContentActionEntity;->extras:Landroid/os/Bundle;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/games/appcontent/AppContentActionEntity;->zzfs:Ljava/lang/String;

    .line 7
    iput-object p7, p0, Lcom/google/android/gms/games/appcontent/AppContentActionEntity;->zzfu:Ljava/lang/String;

    .line 8
    iput-object p4, p0, Lcom/google/android/gms/games/appcontent/AppContentActionEntity;->type:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    .line 30
    instance-of v0, p1, Lcom/google/android/gms/games/appcontent/zza;

    if-eqz v0, :cond_6d

    const/4 v0, 0x1

    if-ne p0, p1, :cond_8

    return v0

    .line 33
    :cond_8
    check-cast p1, Lcom/google/android/gms/games/appcontent/zza;

    .line 34
    invoke-interface {p1}, Lcom/google/android/gms/games/appcontent/zza;->zzad()Lcom/google/android/gms/games/appcontent/zzc;

    move-result-object v1

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/zza;->zzad()Lcom/google/android/gms/games/appcontent/zzc;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 35
    invoke-interface {p1}, Lcom/google/android/gms/games/appcontent/zza;->zzae()Ljava/util/List;

    move-result-object v1

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/zza;->zzae()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 36
    invoke-interface {p1}, Lcom/google/android/gms/games/appcontent/zza;->zzaf()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/zza;->zzaf()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 37
    invoke-interface {p1}, Lcom/google/android/gms/games/appcontent/zza;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/zza;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/games/internal/zzb;->zza(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 38
    invoke-interface {p1}, Lcom/google/android/gms/games/appcontent/zza;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/zza;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 39
    invoke-interface {p1}, Lcom/google/android/gms/games/appcontent/zza;->zzag()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/zza;->zzag()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 40
    invoke-interface {p1}, Lcom/google/android/gms/games/appcontent/zza;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/zza;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6d

    return v0

    :cond_6d
    const/4 p1, 0x0

    return p1
.end method

.method public final bridge synthetic freeze()Ljava/lang/Object;
    .registers 1

    return-object p0
.end method

.method public final getExtras()Landroid/os/Bundle;
    .registers 2

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/games/appcontent/AppContentActionEntity;->extras:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .registers 2

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/games/appcontent/AppContentActionEntity;->zzfs:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .registers 2

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/games/appcontent/AppContentActionEntity;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .registers 4

    const/4 v0, 0x7

    .line 19
    new-array v0, v0, [Ljava/lang/Object;

    .line 20
    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/zza;->zzad()Lcom/google/android/gms/games/appcontent/zzc;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 21
    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/zza;->zzae()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 22
    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/zza;->zzaf()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 23
    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/zza;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/games/internal/zzb;->zza(Landroid/os/Bundle;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 24
    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/zza;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 25
    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/zza;->zzag()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 26
    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/zza;->getType()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 27
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

    .line 43
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 44
    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/zza;->zzad()Lcom/google/android/gms/games/appcontent/zzc;

    move-result-object v1

    const-string v2, "Annotation"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 45
    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/zza;->zzae()Ljava/util/List;

    move-result-object v1

    const-string v2, "Conditions"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 46
    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/zza;->zzaf()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ContentDescription"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 47
    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/zza;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "Extras"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 48
    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/zza;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Id"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 49
    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/zza;->zzag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OverflowText"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 50
    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/zza;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Type"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    .line 54
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    .line 56
    invoke-virtual {p0}, Lcom/google/android/gms/games/appcontent/AppContentActionEntity;->zzae()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 57
    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeTypedList(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 59
    iget-object v1, p0, Lcom/google/android/gms/games/appcontent/AppContentActionEntity;->zzfr:Ljava/lang/String;

    const/4 v3, 0x2

    .line 61
    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 63
    iget-object v1, p0, Lcom/google/android/gms/games/appcontent/AppContentActionEntity;->extras:Landroid/os/Bundle;

    const/4 v3, 0x3

    .line 65
    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBundle(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    .line 67
    iget-object v1, p0, Lcom/google/android/gms/games/appcontent/AppContentActionEntity;->type:Ljava/lang/String;

    const/4 v3, 0x6

    .line 69
    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 71
    iget-object v1, p0, Lcom/google/android/gms/games/appcontent/AppContentActionEntity;->zzfs:Ljava/lang/String;

    const/4 v3, 0x7

    .line 73
    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 75
    iget-object v1, p0, Lcom/google/android/gms/games/appcontent/AppContentActionEntity;->zzft:Lcom/google/android/gms/games/appcontent/AppContentAnnotationEntity;

    const/16 v3, 0x8

    .line 77
    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 79
    iget-object p2, p0, Lcom/google/android/gms/games/appcontent/AppContentActionEntity;->zzfu:Ljava/lang/String;

    const/16 v1, 0x9

    .line 81
    invoke-static {p1, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 82
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zzad()Lcom/google/android/gms/games/appcontent/zzc;
    .registers 2

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/games/appcontent/AppContentActionEntity;->zzft:Lcom/google/android/gms/games/appcontent/AppContentAnnotationEntity;

    return-object v0
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

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/games/appcontent/AppContentActionEntity;->zzfq:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final zzaf()Ljava/lang/String;
    .registers 2

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/games/appcontent/AppContentActionEntity;->zzfr:Ljava/lang/String;

    return-object v0
.end method

.method public final zzag()Ljava/lang/String;
    .registers 2

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/games/appcontent/AppContentActionEntity;->zzfu:Ljava/lang/String;

    return-object v0
.end method
