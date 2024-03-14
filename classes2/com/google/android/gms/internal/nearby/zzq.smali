.class public final Lcom/google/android/gms/internal/nearby/zzq;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# annotations
.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
    creator = "CancelPayloadParamsCreator"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/nearby/zzq;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzaf:J
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getPayloadId"
        id = 0x2
    .end annotation
.end field

.field private zzar:Lcom/google/android/gms/internal/nearby/zzdz;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getResultListenerAsBinder"
        id = 0x1
        type = "android.os.IBinder"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/nearby/zzt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/nearby/zzt;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/nearby/zzq;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    return-void
.end method

.method constructor <init>(Landroid/os/IBinder;J)V
    .registers 6
    .param p1    # Landroid/os/IBinder;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x1
        .end annotation
    .end param
    .param p2    # J
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x2
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Constructor;
    .end annotation

    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_18

    :cond_4
    const-string v0, "com.google.android.gms.nearby.internal.connection.IResultListener"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/nearby/zzdz;

    if-eqz v1, :cond_12

    move-object p1, v0

    check-cast p1, Lcom/google/android/gms/internal/nearby/zzdz;

    goto :goto_18

    :cond_12
    new-instance v0, Lcom/google/android/gms/internal/nearby/zzeb;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/nearby/zzeb;-><init>(Landroid/os/IBinder;)V

    move-object p1, v0

    :goto_18
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/nearby/zzq;-><init>(Lcom/google/android/gms/internal/nearby/zzdz;J)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/nearby/zzdz;J)V
    .registers 4
    .param p1    # Lcom/google/android/gms/internal/nearby/zzdz;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/nearby/zzq;->zzar:Lcom/google/android/gms/internal/nearby/zzdz;

    iput-wide p2, p0, Lcom/google/android/gms/internal/nearby/zzq;->zzaf:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/nearby/zzr;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/nearby/zzq;-><init>()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/nearby/zzq;J)J
    .registers 3

    iput-wide p1, p0, Lcom/google/android/gms/internal/nearby/zzq;->zzaf:J

    return-wide p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/nearby/zzq;Lcom/google/android/gms/internal/nearby/zzdz;)Lcom/google/android/gms/internal/nearby/zzdz;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/nearby/zzq;->zzar:Lcom/google/android/gms/internal/nearby/zzdz;

    return-object p1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/google/android/gms/internal/nearby/zzq;

    const/4 v2, 0x0

    if-eqz v1, :cond_28

    check-cast p1, Lcom/google/android/gms/internal/nearby/zzq;

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzq;->zzar:Lcom/google/android/gms/internal/nearby/zzdz;

    iget-object v3, p1, Lcom/google/android/gms/internal/nearby/zzq;->zzar:Lcom/google/android/gms/internal/nearby/zzdz;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    iget-wide v3, p0, Lcom/google/android/gms/internal/nearby/zzq;->zzaf:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v3, p1, Lcom/google/android/gms/internal/nearby/zzq;->zzaf:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_28

    return v0

    :cond_28
    return v2
.end method

.method public final hashCode()I
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzq;->zzar:Lcom/google/android/gms/internal/nearby/zzdz;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/gms/internal/nearby/zzq;->zzaf:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result p2

    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzq;->zzar:Lcom/google/android/gms/internal/nearby/zzdz;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    goto :goto_e

    :cond_a
    invoke-interface {v0}, Lcom/google/android/gms/internal/nearby/zzdz;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_e
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIBinder(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 v0, 0x2

    iget-wide v1, p0, Lcom/google/android/gms/internal/nearby/zzq;->zzaf:J

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
