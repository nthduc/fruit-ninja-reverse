.class public final Lcom/google/android/gms/nearby/connection/Strategy;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# annotations
.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
    creator = "StrategyCreator"
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
            "Lcom/google/android/gms/nearby/connection/Strategy;",
            ">;"
        }
    .end annotation
.end field

.field public static final P2P_CLUSTER:Lcom/google/android/gms/nearby/connection/Strategy;

.field public static final P2P_POINT_TO_POINT:Lcom/google/android/gms/nearby/connection/Strategy;

.field public static final P2P_STAR:Lcom/google/android/gms/nearby/connection/Strategy;


# instance fields
.field private final zzaj:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getConnectionType"
        id = 0x3
    .end annotation
.end field

.field private final zzak:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getTopology"
        id = 0x4
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/google/android/gms/nearby/connection/zzj;

    invoke-direct {v0}, Lcom/google/android/gms/nearby/connection/zzj;-><init>()V

    sput-object v0, Lcom/google/android/gms/nearby/connection/Strategy;->CREATOR:Landroid/os/Parcelable$Creator;

    new-instance v0, Lcom/google/android/gms/nearby/connection/Strategy;

    const/4 v1, 0x1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/nearby/connection/Strategy;-><init>(II)V

    sput-object v0, Lcom/google/android/gms/nearby/connection/Strategy;->P2P_CLUSTER:Lcom/google/android/gms/nearby/connection/Strategy;

    new-instance v0, Lcom/google/android/gms/nearby/connection/Strategy;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/nearby/connection/Strategy;-><init>(II)V

    sput-object v0, Lcom/google/android/gms/nearby/connection/Strategy;->P2P_STAR:Lcom/google/android/gms/nearby/connection/Strategy;

    new-instance v0, Lcom/google/android/gms/nearby/connection/Strategy;

    invoke-direct {v0, v1, v1}, Lcom/google/android/gms/nearby/connection/Strategy;-><init>(II)V

    sput-object v0, Lcom/google/android/gms/nearby/connection/Strategy;->P2P_POINT_TO_POINT:Lcom/google/android/gms/nearby/connection/Strategy;

    return-void
.end method

.method constructor <init>(II)V
    .registers 3
    .param p1    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x3
        .end annotation
    .end param
    .param p2    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x4
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Constructor;
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/nearby/connection/Strategy;->zzaj:I

    iput p2, p0, Lcom/google/android/gms/nearby/connection/Strategy;->zzak:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/google/android/gms/nearby/connection/Strategy;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/google/android/gms/nearby/connection/Strategy;

    iget v1, p0, Lcom/google/android/gms/nearby/connection/Strategy;->zzaj:I

    iget v3, p1, Lcom/google/android/gms/nearby/connection/Strategy;->zzaj:I

    if-ne v1, v3, :cond_19

    iget v1, p0, Lcom/google/android/gms/nearby/connection/Strategy;->zzak:I

    iget p1, p1, Lcom/google/android/gms/nearby/connection/Strategy;->zzak:I

    if-ne v1, p1, :cond_19

    return v0

    :cond_19
    return v2
.end method

.method public final hashCode()I
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/nearby/connection/Strategy;->zzaj:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/nearby/connection/Strategy;->zzak:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/google/android/gms/nearby/connection/Strategy;->P2P_CLUSTER:Lcom/google/android/gms/nearby/connection/Strategy;

    invoke-virtual {v2, p0}, Lcom/google/android/gms/nearby/connection/Strategy;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    const-string v2, "P2P_CLUSTER"

    goto :goto_28

    :cond_10
    sget-object v2, Lcom/google/android/gms/nearby/connection/Strategy;->P2P_STAR:Lcom/google/android/gms/nearby/connection/Strategy;

    invoke-virtual {v2, p0}, Lcom/google/android/gms/nearby/connection/Strategy;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    const-string v2, "P2P_STAR"

    goto :goto_28

    :cond_1b
    sget-object v2, Lcom/google/android/gms/nearby/connection/Strategy;->P2P_POINT_TO_POINT:Lcom/google/android/gms/nearby/connection/Strategy;

    invoke-virtual {v2, p0}, Lcom/google/android/gms/nearby/connection/Strategy;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    const-string v2, "P2P_POINT_TO_POINT"

    goto :goto_28

    :cond_26
    const-string v2, "UNKNOWN"

    :goto_28
    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    iget v3, p0, Lcom/google/android/gms/nearby/connection/Strategy;->zzaj:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/google/android/gms/nearby/connection/Strategy;->zzak:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Strategy(%s){connectionType=%d, topology=%d}"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result p2

    iget v0, p0, Lcom/google/android/gms/nearby/connection/Strategy;->zzaj:I

    const/4 v1, 0x3

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    iget v0, p0, Lcom/google/android/gms/nearby/connection/Strategy;->zzak:I

    const/4 v1, 0x4

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
