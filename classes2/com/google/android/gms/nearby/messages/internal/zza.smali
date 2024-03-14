.class public final Lcom/google/android/gms/nearby/messages/internal/zza;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;

# interfaces
.implements Lcom/google/android/gms/nearby/messages/BleSignal;


# annotations
.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
    creator = "BleSignalImplCreator"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/nearby/messages/internal/zza;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final versionCode:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$VersionField;
        id = 0x1
    .end annotation
.end field

.field private final zzhb:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        id = 0x2
    .end annotation
.end field

.field private final zzhc:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        id = 0x3
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/nearby/messages/internal/zzb;

    invoke-direct {v0}, Lcom/google/android/gms/nearby/messages/internal/zzb;-><init>()V

    sput-object v0, Lcom/google/android/gms/nearby/messages/internal/zza;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(III)V
    .registers 4
    .param p1    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x1
        .end annotation
    .end param
    .param p2    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x2
        .end annotation
    .end param
    .param p3    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x3
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Constructor;
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/nearby/messages/internal/zza;->versionCode:I

    iput p2, p0, Lcom/google/android/gms/nearby/messages/internal/zza;->zzhb:I

    const/16 p1, -0xa9

    if-ge p1, p3, :cond_10

    const/16 p1, 0x57

    if-ge p3, p1, :cond_10

    goto :goto_12

    :cond_10
    const/high16 p3, -0x80000000

    :goto_12
    iput p3, p0, Lcom/google/android/gms/nearby/messages/internal/zza;->zzhc:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/google/android/gms/nearby/messages/BleSignal;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/google/android/gms/nearby/messages/BleSignal;

    iget v1, p0, Lcom/google/android/gms/nearby/messages/internal/zza;->zzhb:I

    invoke-interface {p1}, Lcom/google/android/gms/nearby/messages/BleSignal;->getRssi()I

    move-result v3

    if-ne v1, v3, :cond_1d

    iget v1, p0, Lcom/google/android/gms/nearby/messages/internal/zza;->zzhc:I

    invoke-interface {p1}, Lcom/google/android/gms/nearby/messages/BleSignal;->getTxPower()I

    move-result p1

    if-ne v1, p1, :cond_1d

    return v0

    :cond_1d
    return v2
.end method

.method public final getRssi()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/nearby/messages/internal/zza;->zzhb:I

    return v0
.end method

.method public final getTxPower()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/nearby/messages/internal/zza;->zzhc:I

    return v0
.end method

.method public final hashCode()I
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/nearby/messages/internal/zza;->zzhb:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/nearby/messages/internal/zza;->zzhc:I

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

    iget v0, p0, Lcom/google/android/gms/nearby/messages/internal/zza;->zzhb:I

    iget v1, p0, Lcom/google/android/gms/nearby/messages/internal/zza;->zzhc:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x30

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "BleSignal{rssi="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", txPower="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x7d

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result p2

    iget v0, p0, Lcom/google/android/gms/nearby/messages/internal/zza;->versionCode:I

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    iget v0, p0, Lcom/google/android/gms/nearby/messages/internal/zza;->zzhb:I

    const/4 v1, 0x2

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    iget v0, p0, Lcom/google/android/gms/nearby/messages/internal/zza;->zzhc:I

    const/4 v1, 0x3

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
