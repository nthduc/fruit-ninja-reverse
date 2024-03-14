.class public final Lcom/google/android/gms/internal/nearby/zzm;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# annotations
.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
    creator = "AcceptConnectionRequestParamsCreator"
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
            "Lcom/google/android/gms/internal/nearby/zzm;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzar:Lcom/google/android/gms/internal/nearby/zzdz;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getResultListenerAsBinder"
        id = 0x1
        type = "android.os.IBinder"
    .end annotation
.end field

.field private zzas:Lcom/google/android/gms/internal/nearby/zzdg;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getConnectionEventListenerAsBinder"
        id = 0x2
        type = "android.os.IBinder"
    .end annotation
.end field

.field private zzat:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getRemoteEndpointId"
        id = 0x3
    .end annotation
.end field

.field private zzau:[B
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getHandshakeData"
        id = 0x4
    .end annotation
.end field

.field private zzav:Lcom/google/android/gms/internal/nearby/zzdw;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getPayloadListenerAsBinder"
        id = 0x5
        type = "android.os.IBinder"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/nearby/zzp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/nearby/zzp;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/nearby/zzm;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    return-void
.end method

.method constructor <init>(Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;[BLandroid/os/IBinder;)V
    .registers 14
    .param p1    # Landroid/os/IBinder;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x1
        .end annotation
    .end param
    .param p2    # Landroid/os/IBinder;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x2
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x3
        .end annotation
    .end param
    .param p4    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x4
        .end annotation
    .end param
    .param p5    # Landroid/os/IBinder;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x5
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Constructor;
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_5

    move-object v3, v0

    goto :goto_1a

    :cond_5
    const-string v1, "com.google.android.gms.nearby.internal.connection.IResultListener"

    invoke-interface {p1, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/gms/internal/nearby/zzdz;

    if-eqz v2, :cond_14

    move-object p1, v1

    check-cast p1, Lcom/google/android/gms/internal/nearby/zzdz;

    move-object v3, p1

    goto :goto_1a

    :cond_14
    new-instance v1, Lcom/google/android/gms/internal/nearby/zzeb;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/nearby/zzeb;-><init>(Landroid/os/IBinder;)V

    move-object v3, v1

    :goto_1a
    if-nez p2, :cond_1e

    move-object v4, v0

    goto :goto_31

    :cond_1e
    const-string p1, "com.google.android.gms.nearby.internal.connection.IConnectionEventListener"

    invoke-interface {p2, p1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    instance-of v1, p1, Lcom/google/android/gms/internal/nearby/zzdg;

    if-eqz v1, :cond_2b

    check-cast p1, Lcom/google/android/gms/internal/nearby/zzdg;

    goto :goto_30

    :cond_2b
    new-instance p1, Lcom/google/android/gms/internal/nearby/zzdi;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/nearby/zzdi;-><init>(Landroid/os/IBinder;)V

    :goto_30
    move-object v4, p1

    :goto_31
    if-nez p5, :cond_35

    :goto_33
    move-object v7, v0

    goto :goto_49

    :cond_35
    const-string p1, "com.google.android.gms.nearby.internal.connection.IPayloadListener"

    invoke-interface {p5, p1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    instance-of p2, p1, Lcom/google/android/gms/internal/nearby/zzdw;

    if-eqz p2, :cond_43

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/nearby/zzdw;

    goto :goto_33

    :cond_43
    new-instance v0, Lcom/google/android/gms/internal/nearby/zzdy;

    invoke-direct {v0, p5}, Lcom/google/android/gms/internal/nearby/zzdy;-><init>(Landroid/os/IBinder;)V

    goto :goto_33

    :goto_49
    move-object v2, p0

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/nearby/zzm;-><init>(Lcom/google/android/gms/internal/nearby/zzdz;Lcom/google/android/gms/internal/nearby/zzdg;Ljava/lang/String;[BLcom/google/android/gms/internal/nearby/zzdw;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/nearby/zzdz;Lcom/google/android/gms/internal/nearby/zzdg;Ljava/lang/String;[BLcom/google/android/gms/internal/nearby/zzdw;)V
    .registers 6
    .param p1    # Lcom/google/android/gms/internal/nearby/zzdz;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/internal/nearby/zzdg;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/google/android/gms/internal/nearby/zzdw;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/nearby/zzm;->zzar:Lcom/google/android/gms/internal/nearby/zzdz;

    iput-object p2, p0, Lcom/google/android/gms/internal/nearby/zzm;->zzas:Lcom/google/android/gms/internal/nearby/zzdg;

    iput-object p3, p0, Lcom/google/android/gms/internal/nearby/zzm;->zzat:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/nearby/zzm;->zzau:[B

    iput-object p5, p0, Lcom/google/android/gms/internal/nearby/zzm;->zzav:Lcom/google/android/gms/internal/nearby/zzdw;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/nearby/zzn;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/nearby/zzm;-><init>()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/nearby/zzm;Lcom/google/android/gms/internal/nearby/zzdg;)Lcom/google/android/gms/internal/nearby/zzdg;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/nearby/zzm;->zzas:Lcom/google/android/gms/internal/nearby/zzdg;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/nearby/zzm;Lcom/google/android/gms/internal/nearby/zzdw;)Lcom/google/android/gms/internal/nearby/zzdw;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/nearby/zzm;->zzav:Lcom/google/android/gms/internal/nearby/zzdw;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/nearby/zzm;Lcom/google/android/gms/internal/nearby/zzdz;)Lcom/google/android/gms/internal/nearby/zzdz;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/nearby/zzm;->zzar:Lcom/google/android/gms/internal/nearby/zzdz;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/nearby/zzm;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/nearby/zzm;->zzat:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/nearby/zzm;[B)[B
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/nearby/zzm;->zzau:[B

    return-object p1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/google/android/gms/internal/nearby/zzm;

    const/4 v2, 0x0

    if-eqz v1, :cond_3e

    check-cast p1, Lcom/google/android/gms/internal/nearby/zzm;

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzm;->zzar:Lcom/google/android/gms/internal/nearby/zzdz;

    iget-object v3, p1, Lcom/google/android/gms/internal/nearby/zzm;->zzar:Lcom/google/android/gms/internal/nearby/zzdz;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzm;->zzas:Lcom/google/android/gms/internal/nearby/zzdg;

    iget-object v3, p1, Lcom/google/android/gms/internal/nearby/zzm;->zzas:Lcom/google/android/gms/internal/nearby/zzdg;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzm;->zzat:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/nearby/zzm;->zzat:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzm;->zzau:[B

    iget-object v3, p1, Lcom/google/android/gms/internal/nearby/zzm;->zzau:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_3e

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzm;->zzav:Lcom/google/android/gms/internal/nearby/zzdw;

    iget-object p1, p1, Lcom/google/android/gms/internal/nearby/zzm;->zzav:Lcom/google/android/gms/internal/nearby/zzdw;

    invoke-static {v1, p1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3e

    return v0

    :cond_3e
    return v2
.end method

.method public final hashCode()I
    .registers 4

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzm;->zzar:Lcom/google/android/gms/internal/nearby/zzdz;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzm;->zzas:Lcom/google/android/gms/internal/nearby/zzdg;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzm;->zzat:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzm;->zzau:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzm;->zzav:Lcom/google/android/gms/internal/nearby/zzdw;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result p2

    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzm;->zzar:Lcom/google/android/gms/internal/nearby/zzdz;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    move-object v0, v1

    goto :goto_f

    :cond_b
    invoke-interface {v0}, Lcom/google/android/gms/internal/nearby/zzdz;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_f
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {p1, v3, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIBinder(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 v0, 0x2

    iget-object v3, p0, Lcom/google/android/gms/internal/nearby/zzm;->zzas:Lcom/google/android/gms/internal/nearby/zzdg;

    if-nez v3, :cond_1b

    move-object v3, v1

    goto :goto_1f

    :cond_1b
    invoke-interface {v3}, Lcom/google/android/gms/internal/nearby/zzdg;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_1f
    invoke-static {p1, v0, v3, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIBinder(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 v0, 0x3

    iget-object v3, p0, Lcom/google/android/gms/internal/nearby/zzm;->zzat:Ljava/lang/String;

    invoke-static {p1, v0, v3, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x4

    iget-object v3, p0, Lcom/google/android/gms/internal/nearby/zzm;->zzau:[B

    invoke-static {p1, v0, v3, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeByteArray(Landroid/os/Parcel;I[BZ)V

    const/4 v0, 0x5

    iget-object v3, p0, Lcom/google/android/gms/internal/nearby/zzm;->zzav:Lcom/google/android/gms/internal/nearby/zzdw;

    if-nez v3, :cond_34

    goto :goto_38

    :cond_34
    invoke-interface {v3}, Lcom/google/android/gms/internal/nearby/zzdw;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_38
    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIBinder(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
