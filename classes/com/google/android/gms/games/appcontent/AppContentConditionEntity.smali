.class public final Lcom/google/android/gms/games/appcontent/AppContentConditionEntity;
.super Lcom/google/android/gms/games/internal/zze;
.source "com.google.android.gms:play-services-games@@20.0.1"

# interfaces
.implements Lcom/google/android/gms/games/appcontent/zzg;


# annotations
.annotation build Lcom/google/android/apps/common/proguard/UsedByReflection;
    value = "GamesGmsClientImpl.java"
.end annotation

.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
    creator = "AppContentConditionEntityCreator"
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
            "Lcom/google/android/gms/games/appcontent/AppContentConditionEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzgg:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getDefaultValue"
        id = 0x1
    .end annotation
.end field

.field private final zzgh:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getExpectedValue"
        id = 0x2
    .end annotation
.end field

.field private final zzgi:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getPredicate"
        id = 0x3
    .end annotation
.end field

.field private final zzgj:Landroid/os/Bundle;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getPredicateParameters"
        id = 0x4
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 59
    new-instance v0, Lcom/google/android/gms/games/appcontent/zzi;

    invoke-direct {v0}, Lcom/google/android/gms/games/appcontent/zzi;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/appcontent/AppContentConditionEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5
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
    .param p3    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x3
        .end annotation
    .end param
    .param p4    # Landroid/os/Bundle;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x4
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Constructor;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/games/internal/zze;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/games/appcontent/AppContentConditionEntity;->zzgg:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/games/appcontent/AppContentConditionEntity;->zzgh:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/games/appcontent/AppContentConditionEntity;->zzgi:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/games/appcontent/AppContentConditionEntity;->zzgj:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    .line 21
    instance-of v0, p1, Lcom/google/android/gms/games/appcontent/zzg;

    if-eqz v0, :cond_43

    const/4 v0, 0x1

    if-ne p0, p1, :cond_8

    return v0

    .line 24
    :cond_8
    check-cast p1, Lcom/google/android/gms/games/appcontent/zzg;

    .line 25
    invoke-interface {p1}, Lcom/google/android/gms/games/appcontent/zzg;->zzar()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/zzg;->zzar()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 26
    invoke-interface {p1}, Lcom/google/android/gms/games/appcontent/zzg;->zzas()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/zzg;->zzas()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 27
    invoke-interface {p1}, Lcom/google/android/gms/games/appcontent/zzg;->zzat()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/zzg;->zzat()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 28
    invoke-interface {p1}, Lcom/google/android/gms/games/appcontent/zzg;->zzau()Landroid/os/Bundle;

    move-result-object p1

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/zzg;->zzau()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_43

    return v0

    :cond_43
    const/4 p1, 0x0

    return p1
.end method

.method public final bridge synthetic freeze()Ljava/lang/Object;
    .registers 1

    return-object p0
.end method

.method public final hashCode()I
    .registers 4

    const/4 v0, 0x4

    .line 13
    new-array v0, v0, [Ljava/lang/Object;

    .line 14
    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/zzg;->zzar()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 15
    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/zzg;->zzas()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 16
    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/zzg;->zzat()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 17
    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/zzg;->zzau()Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 18
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

    .line 31
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 32
    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/zzg;->zzar()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DefaultValue"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 33
    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/zzg;->zzas()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ExpectedValue"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 34
    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/zzg;->zzat()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Predicate"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 35
    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/zzg;->zzau()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "PredicateParameters"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    .line 39
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result p2

    .line 41
    iget-object v0, p0, Lcom/google/android/gms/games/appcontent/AppContentConditionEntity;->zzgg:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 43
    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 45
    iget-object v0, p0, Lcom/google/android/gms/games/appcontent/AppContentConditionEntity;->zzgh:Ljava/lang/String;

    const/4 v2, 0x2

    .line 47
    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 49
    iget-object v0, p0, Lcom/google/android/gms/games/appcontent/AppContentConditionEntity;->zzgi:Ljava/lang/String;

    const/4 v2, 0x3

    .line 51
    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 53
    iget-object v0, p0, Lcom/google/android/gms/games/appcontent/AppContentConditionEntity;->zzgj:Landroid/os/Bundle;

    const/4 v2, 0x4

    .line 55
    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBundle(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    .line 56
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zzar()Ljava/lang/String;
    .registers 2

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/games/appcontent/AppContentConditionEntity;->zzgg:Ljava/lang/String;

    return-object v0
.end method

.method public final zzas()Ljava/lang/String;
    .registers 2

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/games/appcontent/AppContentConditionEntity;->zzgh:Ljava/lang/String;

    return-object v0
.end method

.method public final zzat()Ljava/lang/String;
    .registers 2

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/games/appcontent/AppContentConditionEntity;->zzgi:Ljava/lang/String;

    return-object v0
.end method

.method public final zzau()Landroid/os/Bundle;
    .registers 2

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/games/appcontent/AppContentConditionEntity;->zzgj:Landroid/os/Bundle;

    return-object v0
.end method
