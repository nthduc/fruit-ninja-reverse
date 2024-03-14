.class public final Lcom/google/android/gms/internal/nearby/zzfq;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# annotations
.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
    creator = "SendConnectionRequestParamsCreator"
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
            "Lcom/google/android/gms/internal/nearby/zzfq;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private name:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getName"
        id = 0x4
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
        id = 0x5
    .end annotation
.end field

.field private zzau:[B
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getHandshakeData"
        id = 0x6
    .end annotation
.end field

.field private zzeb:Lcom/google/android/gms/internal/nearby/zzdm;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getConnectionResponseListenerAsBinder"
        id = 0x3
        type = "android.os.IBinder"
    .end annotation
.end field

.field private zzec:Lcom/google/android/gms/internal/nearby/zzdj;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getConnectionLifecycleListenerAsBinder"
        id = 0x7
        type = "android.os.IBinder"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/nearby/zzft;

    invoke-direct {v0}, Lcom/google/android/gms/internal/nearby/zzft;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/nearby/zzfq;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    return-void
.end method

.method constructor <init>(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;[BLandroid/os/IBinder;)V
    .registers 22
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
    .param p3    # Landroid/os/IBinder;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x3
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x4
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x5
        .end annotation
    .end param
    .param p6    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x6
        .end annotation
    .end param
    .param p7    # Landroid/os/IBinder;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x7
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Constructor;
    .end annotation

    move-object v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p7

    const/4 v4, 0x0

    if-nez v0, :cond_c

    move-object v7, v4

    goto :goto_21

    :cond_c
    const-string v5, "com.google.android.gms.nearby.internal.connection.IResultListener"

    invoke-interface {p1, v5}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v5

    instance-of v6, v5, Lcom/google/android/gms/internal/nearby/zzdz;

    if-eqz v6, :cond_1b

    move-object v0, v5

    check-cast v0, Lcom/google/android/gms/internal/nearby/zzdz;

    move-object v7, v0

    goto :goto_21

    :cond_1b
    new-instance v5, Lcom/google/android/gms/internal/nearby/zzeb;

    invoke-direct {v5, p1}, Lcom/google/android/gms/internal/nearby/zzeb;-><init>(Landroid/os/IBinder;)V

    move-object v7, v5

    :goto_21
    if-nez v1, :cond_25

    move-object v8, v4

    goto :goto_38

    :cond_25
    const-string v0, "com.google.android.gms.nearby.internal.connection.IConnectionEventListener"

    invoke-interface {v1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v5, v0, Lcom/google/android/gms/internal/nearby/zzdg;

    if-eqz v5, :cond_32

    check-cast v0, Lcom/google/android/gms/internal/nearby/zzdg;

    goto :goto_37

    :cond_32
    new-instance v0, Lcom/google/android/gms/internal/nearby/zzdi;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/nearby/zzdi;-><init>(Landroid/os/IBinder;)V

    :goto_37
    move-object v8, v0

    :goto_38
    if-nez v2, :cond_3c

    move-object v9, v4

    goto :goto_4f

    :cond_3c
    const-string v0, "com.google.android.gms.nearby.internal.connection.IConnectionResponseListener"

    invoke-interface {v2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/nearby/zzdm;

    if-eqz v1, :cond_49

    check-cast v0, Lcom/google/android/gms/internal/nearby/zzdm;

    goto :goto_4e

    :cond_49
    new-instance v0, Lcom/google/android/gms/internal/nearby/zzdo;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/nearby/zzdo;-><init>(Landroid/os/IBinder;)V

    :goto_4e
    move-object v9, v0

    :goto_4f
    if-nez v3, :cond_53

    :goto_51
    move-object v13, v4

    goto :goto_67

    :cond_53
    const-string v0, "com.google.android.gms.nearby.internal.connection.IConnectionLifecycleListener"

    invoke-interface {v3, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/nearby/zzdj;

    if-eqz v1, :cond_61

    move-object v4, v0

    check-cast v4, Lcom/google/android/gms/internal/nearby/zzdj;

    goto :goto_51

    :cond_61
    new-instance v4, Lcom/google/android/gms/internal/nearby/zzdl;

    invoke-direct {v4, v3}, Lcom/google/android/gms/internal/nearby/zzdl;-><init>(Landroid/os/IBinder;)V

    goto :goto_51

    :goto_67
    move-object v6, p0

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    invoke-direct/range {v6 .. v13}, Lcom/google/android/gms/internal/nearby/zzfq;-><init>(Lcom/google/android/gms/internal/nearby/zzdz;Lcom/google/android/gms/internal/nearby/zzdg;Lcom/google/android/gms/internal/nearby/zzdm;Ljava/lang/String;Ljava/lang/String;[BLcom/google/android/gms/internal/nearby/zzdj;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/nearby/zzdz;Lcom/google/android/gms/internal/nearby/zzdg;Lcom/google/android/gms/internal/nearby/zzdm;Ljava/lang/String;Ljava/lang/String;[BLcom/google/android/gms/internal/nearby/zzdj;)V
    .registers 8
    .param p1    # Lcom/google/android/gms/internal/nearby/zzdz;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/internal/nearby/zzdg;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/gms/internal/nearby/zzdm;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lcom/google/android/gms/internal/nearby/zzdj;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/nearby/zzfq;->zzar:Lcom/google/android/gms/internal/nearby/zzdz;

    iput-object p2, p0, Lcom/google/android/gms/internal/nearby/zzfq;->zzas:Lcom/google/android/gms/internal/nearby/zzdg;

    iput-object p3, p0, Lcom/google/android/gms/internal/nearby/zzfq;->zzeb:Lcom/google/android/gms/internal/nearby/zzdm;

    iput-object p4, p0, Lcom/google/android/gms/internal/nearby/zzfq;->name:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/nearby/zzfq;->zzat:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/nearby/zzfq;->zzau:[B

    iput-object p7, p0, Lcom/google/android/gms/internal/nearby/zzfq;->zzec:Lcom/google/android/gms/internal/nearby/zzdj;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/nearby/zzfr;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/nearby/zzfq;-><init>()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/nearby/zzfq;Lcom/google/android/gms/internal/nearby/zzdg;)Lcom/google/android/gms/internal/nearby/zzdg;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/nearby/zzfq;->zzas:Lcom/google/android/gms/internal/nearby/zzdg;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/nearby/zzfq;Lcom/google/android/gms/internal/nearby/zzdj;)Lcom/google/android/gms/internal/nearby/zzdj;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/nearby/zzfq;->zzec:Lcom/google/android/gms/internal/nearby/zzdj;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/nearby/zzfq;Lcom/google/android/gms/internal/nearby/zzdm;)Lcom/google/android/gms/internal/nearby/zzdm;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/nearby/zzfq;->zzeb:Lcom/google/android/gms/internal/nearby/zzdm;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/nearby/zzfq;Lcom/google/android/gms/internal/nearby/zzdz;)Lcom/google/android/gms/internal/nearby/zzdz;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/nearby/zzfq;->zzar:Lcom/google/android/gms/internal/nearby/zzdz;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/nearby/zzfq;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/nearby/zzfq;->name:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/nearby/zzfq;[B)[B
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/nearby/zzfq;->zzau:[B

    return-object p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/nearby/zzfq;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/nearby/zzfq;->zzat:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/google/android/gms/internal/nearby/zzfq;

    const/4 v2, 0x0

    if-eqz v1, :cond_52

    check-cast p1, Lcom/google/android/gms/internal/nearby/zzfq;

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzfq;->zzar:Lcom/google/android/gms/internal/nearby/zzdz;

    iget-object v3, p1, Lcom/google/android/gms/internal/nearby/zzfq;->zzar:Lcom/google/android/gms/internal/nearby/zzdz;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_52

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzfq;->zzas:Lcom/google/android/gms/internal/nearby/zzdg;

    iget-object v3, p1, Lcom/google/android/gms/internal/nearby/zzfq;->zzas:Lcom/google/android/gms/internal/nearby/zzdg;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_52

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzfq;->zzeb:Lcom/google/android/gms/internal/nearby/zzdm;

    iget-object v3, p1, Lcom/google/android/gms/internal/nearby/zzfq;->zzeb:Lcom/google/android/gms/internal/nearby/zzdm;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_52

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzfq;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/nearby/zzfq;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_52

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzfq;->zzat:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/nearby/zzfq;->zzat:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_52

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzfq;->zzau:[B

    iget-object v3, p1, Lcom/google/android/gms/internal/nearby/zzfq;->zzau:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_52

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzfq;->zzec:Lcom/google/android/gms/internal/nearby/zzdj;

    iget-object p1, p1, Lcom/google/android/gms/internal/nearby/zzfq;->zzec:Lcom/google/android/gms/internal/nearby/zzdj;

    invoke-static {v1, p1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_52

    return v0

    :cond_52
    return v2
.end method

.method public final hashCode()I
    .registers 4

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzfq;->zzar:Lcom/google/android/gms/internal/nearby/zzdz;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzfq;->zzas:Lcom/google/android/gms/internal/nearby/zzdg;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzfq;->zzeb:Lcom/google/android/gms/internal/nearby/zzdm;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzfq;->name:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzfq;->zzat:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzfq;->zzau:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzfq;->zzec:Lcom/google/android/gms/internal/nearby/zzdj;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result p2

    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzfq;->zzar:Lcom/google/android/gms/internal/nearby/zzdz;

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

    iget-object v3, p0, Lcom/google/android/gms/internal/nearby/zzfq;->zzas:Lcom/google/android/gms/internal/nearby/zzdg;

    if-nez v3, :cond_1b

    move-object v3, v1

    goto :goto_1f

    :cond_1b
    invoke-interface {v3}, Lcom/google/android/gms/internal/nearby/zzdg;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_1f
    invoke-static {p1, v0, v3, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIBinder(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 v0, 0x3

    iget-object v3, p0, Lcom/google/android/gms/internal/nearby/zzfq;->zzeb:Lcom/google/android/gms/internal/nearby/zzdm;

    if-nez v3, :cond_29

    move-object v3, v1

    goto :goto_2d

    :cond_29
    invoke-interface {v3}, Lcom/google/android/gms/internal/nearby/zzdm;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_2d
    invoke-static {p1, v0, v3, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIBinder(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 v0, 0x4

    iget-object v3, p0, Lcom/google/android/gms/internal/nearby/zzfq;->name:Ljava/lang/String;

    invoke-static {p1, v0, v3, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x5

    iget-object v3, p0, Lcom/google/android/gms/internal/nearby/zzfq;->zzat:Ljava/lang/String;

    invoke-static {p1, v0, v3, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x6

    iget-object v3, p0, Lcom/google/android/gms/internal/nearby/zzfq;->zzau:[B

    invoke-static {p1, v0, v3, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeByteArray(Landroid/os/Parcel;I[BZ)V

    const/4 v0, 0x7

    iget-object v3, p0, Lcom/google/android/gms/internal/nearby/zzfq;->zzec:Lcom/google/android/gms/internal/nearby/zzdj;

    if-nez v3, :cond_48

    goto :goto_4c

    :cond_48
    invoke-interface {v3}, Lcom/google/android/gms/internal/nearby/zzdj;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_4c
    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIBinder(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
