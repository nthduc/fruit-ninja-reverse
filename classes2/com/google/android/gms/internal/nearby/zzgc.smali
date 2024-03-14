.class public final Lcom/google/android/gms/internal/nearby/zzgc;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# annotations
.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
    creator = "StartDiscoveryParamsCreator"
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
            "Lcom/google/android/gms/internal/nearby/zzgc;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private durationMillis:J
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getDurationMillis"
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

.field private zzel:Lcom/google/android/gms/internal/nearby/zzdp;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getCallbackAsBinder"
        id = 0x2
        type = "android.os.IBinder"
    .end annotation
.end field

.field private zzem:Lcom/google/android/gms/nearby/connection/DiscoveryOptions;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getOptions"
        id = 0x5
    .end annotation
.end field

.field private zzen:Lcom/google/android/gms/internal/nearby/zzdr;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getDiscoveryListenerAsBinder"
        id = 0x6
        type = "android.os.IBinder"
    .end annotation
.end field

.field private zzu:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getServiceId"
        id = 0x3
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/nearby/zzgf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/nearby/zzgf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/nearby/zzgc;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    return-void
.end method

.method constructor <init>(Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;JLcom/google/android/gms/nearby/connection/DiscoveryOptions;Landroid/os/IBinder;)V
    .registers 21
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
    .param p4    # J
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x4
        .end annotation
    .end param
    .param p6    # Lcom/google/android/gms/nearby/connection/DiscoveryOptions;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x5
        .end annotation
    .end param
    .param p7    # Landroid/os/IBinder;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x6
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Constructor;
    .end annotation

    move-object v0, p1

    move-object v1, p2

    move-object/from16 v2, p7

    const/4 v3, 0x0

    if-nez v0, :cond_9

    move-object v6, v3

    goto :goto_1e

    :cond_9
    const-string v4, "com.google.android.gms.nearby.internal.connection.IResultListener"

    invoke-interface {p1, v4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v4

    instance-of v5, v4, Lcom/google/android/gms/internal/nearby/zzdz;

    if-eqz v5, :cond_18

    move-object v0, v4

    check-cast v0, Lcom/google/android/gms/internal/nearby/zzdz;

    move-object v6, v0

    goto :goto_1e

    :cond_18
    new-instance v4, Lcom/google/android/gms/internal/nearby/zzeb;

    invoke-direct {v4, p1}, Lcom/google/android/gms/internal/nearby/zzeb;-><init>(Landroid/os/IBinder;)V

    move-object v6, v4

    :goto_1e
    if-nez v1, :cond_22

    move-object v7, v3

    goto :goto_35

    :cond_22
    const-string v0, "com.google.android.gms.nearby.internal.connection.IDiscoveryCallback"

    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v4, v0, Lcom/google/android/gms/internal/nearby/zzdp;

    if-eqz v4, :cond_2f

    check-cast v0, Lcom/google/android/gms/internal/nearby/zzdp;

    goto :goto_34

    :cond_2f
    new-instance v0, Lcom/google/android/gms/internal/nearby/zzdq;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/nearby/zzdq;-><init>(Landroid/os/IBinder;)V

    :goto_34
    move-object v7, v0

    :goto_35
    if-nez v2, :cond_39

    :goto_37
    move-object v12, v3

    goto :goto_4d

    :cond_39
    const-string v0, "com.google.android.gms.nearby.internal.connection.IDiscoveryListener"

    invoke-interface {v2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/nearby/zzdr;

    if-eqz v1, :cond_47

    move-object v3, v0

    check-cast v3, Lcom/google/android/gms/internal/nearby/zzdr;

    goto :goto_37

    :cond_47
    new-instance v3, Lcom/google/android/gms/internal/nearby/zzdt;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/nearby/zzdt;-><init>(Landroid/os/IBinder;)V

    goto :goto_37

    :goto_4d
    move-object v5, p0

    move-object/from16 v8, p3

    move-wide/from16 v9, p4

    move-object/from16 v11, p6

    invoke-direct/range {v5 .. v12}, Lcom/google/android/gms/internal/nearby/zzgc;-><init>(Lcom/google/android/gms/internal/nearby/zzdz;Lcom/google/android/gms/internal/nearby/zzdp;Ljava/lang/String;JLcom/google/android/gms/nearby/connection/DiscoveryOptions;Lcom/google/android/gms/internal/nearby/zzdr;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/nearby/zzdz;Lcom/google/android/gms/internal/nearby/zzdp;Ljava/lang/String;JLcom/google/android/gms/nearby/connection/DiscoveryOptions;Lcom/google/android/gms/internal/nearby/zzdr;)V
    .registers 8
    .param p1    # Lcom/google/android/gms/internal/nearby/zzdz;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/internal/nearby/zzdp;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lcom/google/android/gms/internal/nearby/zzdr;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/nearby/zzgc;->zzar:Lcom/google/android/gms/internal/nearby/zzdz;

    iput-object p2, p0, Lcom/google/android/gms/internal/nearby/zzgc;->zzel:Lcom/google/android/gms/internal/nearby/zzdp;

    iput-object p3, p0, Lcom/google/android/gms/internal/nearby/zzgc;->zzu:Ljava/lang/String;

    iput-wide p4, p0, Lcom/google/android/gms/internal/nearby/zzgc;->durationMillis:J

    iput-object p6, p0, Lcom/google/android/gms/internal/nearby/zzgc;->zzem:Lcom/google/android/gms/nearby/connection/DiscoveryOptions;

    iput-object p7, p0, Lcom/google/android/gms/internal/nearby/zzgc;->zzen:Lcom/google/android/gms/internal/nearby/zzdr;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/nearby/zzgd;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/nearby/zzgc;-><init>()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/nearby/zzgc;J)J
    .registers 3

    iput-wide p1, p0, Lcom/google/android/gms/internal/nearby/zzgc;->durationMillis:J

    return-wide p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/nearby/zzgc;Lcom/google/android/gms/internal/nearby/zzdr;)Lcom/google/android/gms/internal/nearby/zzdr;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/nearby/zzgc;->zzen:Lcom/google/android/gms/internal/nearby/zzdr;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/nearby/zzgc;Lcom/google/android/gms/internal/nearby/zzdz;)Lcom/google/android/gms/internal/nearby/zzdz;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/nearby/zzgc;->zzar:Lcom/google/android/gms/internal/nearby/zzdz;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/nearby/zzgc;Lcom/google/android/gms/nearby/connection/DiscoveryOptions;)Lcom/google/android/gms/nearby/connection/DiscoveryOptions;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/nearby/zzgc;->zzem:Lcom/google/android/gms/nearby/connection/DiscoveryOptions;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/nearby/zzgc;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/nearby/zzgc;->zzu:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/google/android/gms/internal/nearby/zzgc;

    const/4 v2, 0x0

    if-eqz v1, :cond_50

    check-cast p1, Lcom/google/android/gms/internal/nearby/zzgc;

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzgc;->zzar:Lcom/google/android/gms/internal/nearby/zzdz;

    iget-object v3, p1, Lcom/google/android/gms/internal/nearby/zzgc;->zzar:Lcom/google/android/gms/internal/nearby/zzdz;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_50

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzgc;->zzel:Lcom/google/android/gms/internal/nearby/zzdp;

    iget-object v3, p1, Lcom/google/android/gms/internal/nearby/zzgc;->zzel:Lcom/google/android/gms/internal/nearby/zzdp;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_50

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzgc;->zzu:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/nearby/zzgc;->zzu:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_50

    iget-wide v3, p0, Lcom/google/android/gms/internal/nearby/zzgc;->durationMillis:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v3, p1, Lcom/google/android/gms/internal/nearby/zzgc;->durationMillis:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_50

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzgc;->zzem:Lcom/google/android/gms/nearby/connection/DiscoveryOptions;

    iget-object v3, p1, Lcom/google/android/gms/internal/nearby/zzgc;->zzem:Lcom/google/android/gms/nearby/connection/DiscoveryOptions;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_50

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzgc;->zzen:Lcom/google/android/gms/internal/nearby/zzdr;

    iget-object p1, p1, Lcom/google/android/gms/internal/nearby/zzgc;->zzen:Lcom/google/android/gms/internal/nearby/zzdr;

    invoke-static {v1, p1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_50

    return v0

    :cond_50
    return v2
.end method

.method public final hashCode()I
    .registers 4

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzgc;->zzar:Lcom/google/android/gms/internal/nearby/zzdz;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzgc;->zzel:Lcom/google/android/gms/internal/nearby/zzdp;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzgc;->zzu:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/gms/internal/nearby/zzgc;->durationMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzgc;->zzem:Lcom/google/android/gms/nearby/connection/DiscoveryOptions;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzgc;->zzen:Lcom/google/android/gms/internal/nearby/zzdr;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 9

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzgc;->zzar:Lcom/google/android/gms/internal/nearby/zzdz;

    const/4 v2, 0x0

    if-nez v1, :cond_b

    move-object v1, v2

    goto :goto_f

    :cond_b
    invoke-interface {v1}, Lcom/google/android/gms/internal/nearby/zzdz;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_f
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {p1, v4, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIBinder(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 v1, 0x2

    iget-object v4, p0, Lcom/google/android/gms/internal/nearby/zzgc;->zzel:Lcom/google/android/gms/internal/nearby/zzdp;

    if-nez v4, :cond_1b

    move-object v4, v2

    goto :goto_1f

    :cond_1b
    invoke-interface {v4}, Lcom/google/android/gms/internal/nearby/zzdp;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_1f
    invoke-static {p1, v1, v4, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIBinder(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 v1, 0x3

    iget-object v4, p0, Lcom/google/android/gms/internal/nearby/zzgc;->zzu:Ljava/lang/String;

    invoke-static {p1, v1, v4, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x4

    iget-wide v4, p0, Lcom/google/android/gms/internal/nearby/zzgc;->durationMillis:J

    invoke-static {p1, v1, v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    const/4 v1, 0x5

    iget-object v4, p0, Lcom/google/android/gms/internal/nearby/zzgc;->zzem:Lcom/google/android/gms/nearby/connection/DiscoveryOptions;

    invoke-static {p1, v1, v4, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 p2, 0x6

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzgc;->zzen:Lcom/google/android/gms/internal/nearby/zzdr;

    if-nez v1, :cond_3a

    goto :goto_3e

    :cond_3a
    invoke-interface {v1}, Lcom/google/android/gms/internal/nearby/zzdr;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_3e
    invoke-static {p1, p2, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIBinder(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
