.class public final Lcom/google/android/gms/internal/nearby/zzfy;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# annotations
.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
    creator = "StartAdvertisingParamsCreator"
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
            "Lcom/google/android/gms/internal/nearby/zzfy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private durationMillis:J
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getDurationMillis"
        id = 0x5
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getName"
        id = 0x3
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

.field private zzeh:Lcom/google/android/gms/internal/nearby/zzec;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getResultListenerAsBinder"
        id = 0x1
        type = "android.os.IBinder"
    .end annotation
.end field

.field private zzei:Lcom/google/android/gms/internal/nearby/zzdd;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getCallbackAsBinder"
        id = 0x2
        type = "android.os.IBinder"
    .end annotation
.end field

.field private zzej:Lcom/google/android/gms/nearby/connection/AdvertisingOptions;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getOptions"
        id = 0x6
    .end annotation
.end field

.field private zzu:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getServiceId"
        id = 0x4
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/nearby/zzgb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/nearby/zzgb;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/nearby/zzfy;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    return-void
.end method

.method constructor <init>(Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;JLcom/google/android/gms/nearby/connection/AdvertisingOptions;Landroid/os/IBinder;)V
    .registers 23
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
    .param p4    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x4
        .end annotation
    .end param
    .param p5    # J
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x5
        .end annotation
    .end param
    .param p7    # Lcom/google/android/gms/nearby/connection/AdvertisingOptions;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x6
        .end annotation
    .end param
    .param p8    # Landroid/os/IBinder;
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

    move-object/from16 v2, p8

    const/4 v3, 0x0

    if-nez v0, :cond_a

    move-object v6, v3

    goto :goto_1f

    :cond_a
    const-string v4, "com.google.android.gms.nearby.internal.connection.IStartAdvertisingResultListener"

    invoke-interface {p1, v4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v4

    instance-of v5, v4, Lcom/google/android/gms/internal/nearby/zzec;

    if-eqz v5, :cond_19

    move-object v0, v4

    check-cast v0, Lcom/google/android/gms/internal/nearby/zzec;

    move-object v6, v0

    goto :goto_1f

    :cond_19
    new-instance v4, Lcom/google/android/gms/internal/nearby/zzee;

    invoke-direct {v4, p1}, Lcom/google/android/gms/internal/nearby/zzee;-><init>(Landroid/os/IBinder;)V

    move-object v6, v4

    :goto_1f
    if-nez v1, :cond_23

    move-object v7, v3

    goto :goto_36

    :cond_23
    const-string v0, "com.google.android.gms.nearby.internal.connection.IAdvertisingCallback"

    invoke-interface {v1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v4, v0, Lcom/google/android/gms/internal/nearby/zzdd;

    if-eqz v4, :cond_30

    check-cast v0, Lcom/google/android/gms/internal/nearby/zzdd;

    goto :goto_35

    :cond_30
    new-instance v0, Lcom/google/android/gms/internal/nearby/zzdf;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/nearby/zzdf;-><init>(Landroid/os/IBinder;)V

    :goto_35
    move-object v7, v0

    :goto_36
    if-nez v2, :cond_3a

    :goto_38
    move-object v13, v3

    goto :goto_4e

    :cond_3a
    const-string v0, "com.google.android.gms.nearby.internal.connection.IConnectionLifecycleListener"

    invoke-interface {v2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/nearby/zzdj;

    if-eqz v1, :cond_48

    move-object v3, v0

    check-cast v3, Lcom/google/android/gms/internal/nearby/zzdj;

    goto :goto_38

    :cond_48
    new-instance v3, Lcom/google/android/gms/internal/nearby/zzdl;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/nearby/zzdl;-><init>(Landroid/os/IBinder;)V

    goto :goto_38

    :goto_4e
    move-object v5, p0

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-wide/from16 v10, p5

    move-object/from16 v12, p7

    invoke-direct/range {v5 .. v13}, Lcom/google/android/gms/internal/nearby/zzfy;-><init>(Lcom/google/android/gms/internal/nearby/zzec;Lcom/google/android/gms/internal/nearby/zzdd;Ljava/lang/String;Ljava/lang/String;JLcom/google/android/gms/nearby/connection/AdvertisingOptions;Lcom/google/android/gms/internal/nearby/zzdj;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/nearby/zzec;Lcom/google/android/gms/internal/nearby/zzdd;Ljava/lang/String;Ljava/lang/String;JLcom/google/android/gms/nearby/connection/AdvertisingOptions;Lcom/google/android/gms/internal/nearby/zzdj;)V
    .registers 9
    .param p1    # Lcom/google/android/gms/internal/nearby/zzec;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/internal/nearby/zzdd;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Lcom/google/android/gms/internal/nearby/zzdj;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/nearby/zzfy;->zzeh:Lcom/google/android/gms/internal/nearby/zzec;

    iput-object p2, p0, Lcom/google/android/gms/internal/nearby/zzfy;->zzei:Lcom/google/android/gms/internal/nearby/zzdd;

    iput-object p3, p0, Lcom/google/android/gms/internal/nearby/zzfy;->name:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/nearby/zzfy;->zzu:Ljava/lang/String;

    iput-wide p5, p0, Lcom/google/android/gms/internal/nearby/zzfy;->durationMillis:J

    iput-object p7, p0, Lcom/google/android/gms/internal/nearby/zzfy;->zzej:Lcom/google/android/gms/nearby/connection/AdvertisingOptions;

    iput-object p8, p0, Lcom/google/android/gms/internal/nearby/zzfy;->zzec:Lcom/google/android/gms/internal/nearby/zzdj;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/nearby/zzfz;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/nearby/zzfy;-><init>()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/nearby/zzfy;J)J
    .registers 3

    iput-wide p1, p0, Lcom/google/android/gms/internal/nearby/zzfy;->durationMillis:J

    return-wide p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/nearby/zzfy;Lcom/google/android/gms/internal/nearby/zzdd;)Lcom/google/android/gms/internal/nearby/zzdd;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/nearby/zzfy;->zzei:Lcom/google/android/gms/internal/nearby/zzdd;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/nearby/zzfy;Lcom/google/android/gms/internal/nearby/zzdj;)Lcom/google/android/gms/internal/nearby/zzdj;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/nearby/zzfy;->zzec:Lcom/google/android/gms/internal/nearby/zzdj;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/nearby/zzfy;Lcom/google/android/gms/internal/nearby/zzec;)Lcom/google/android/gms/internal/nearby/zzec;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/nearby/zzfy;->zzeh:Lcom/google/android/gms/internal/nearby/zzec;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/nearby/zzfy;Lcom/google/android/gms/nearby/connection/AdvertisingOptions;)Lcom/google/android/gms/nearby/connection/AdvertisingOptions;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/nearby/zzfy;->zzej:Lcom/google/android/gms/nearby/connection/AdvertisingOptions;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/nearby/zzfy;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/nearby/zzfy;->name:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/nearby/zzfy;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/nearby/zzfy;->zzu:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/google/android/gms/internal/nearby/zzfy;

    const/4 v2, 0x0

    if-eqz v1, :cond_5a

    check-cast p1, Lcom/google/android/gms/internal/nearby/zzfy;

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzfy;->zzeh:Lcom/google/android/gms/internal/nearby/zzec;

    iget-object v3, p1, Lcom/google/android/gms/internal/nearby/zzfy;->zzeh:Lcom/google/android/gms/internal/nearby/zzec;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5a

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzfy;->zzei:Lcom/google/android/gms/internal/nearby/zzdd;

    iget-object v3, p1, Lcom/google/android/gms/internal/nearby/zzfy;->zzei:Lcom/google/android/gms/internal/nearby/zzdd;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5a

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzfy;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/nearby/zzfy;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5a

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzfy;->zzu:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/nearby/zzfy;->zzu:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5a

    iget-wide v3, p0, Lcom/google/android/gms/internal/nearby/zzfy;->durationMillis:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v3, p1, Lcom/google/android/gms/internal/nearby/zzfy;->durationMillis:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5a

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzfy;->zzej:Lcom/google/android/gms/nearby/connection/AdvertisingOptions;

    iget-object v3, p1, Lcom/google/android/gms/internal/nearby/zzfy;->zzej:Lcom/google/android/gms/nearby/connection/AdvertisingOptions;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5a

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzfy;->zzec:Lcom/google/android/gms/internal/nearby/zzdj;

    iget-object p1, p1, Lcom/google/android/gms/internal/nearby/zzfy;->zzec:Lcom/google/android/gms/internal/nearby/zzdj;

    invoke-static {v1, p1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5a

    return v0

    :cond_5a
    return v2
.end method

.method public final hashCode()I
    .registers 4

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzfy;->zzeh:Lcom/google/android/gms/internal/nearby/zzec;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzfy;->zzei:Lcom/google/android/gms/internal/nearby/zzdd;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzfy;->name:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzfy;->zzu:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/gms/internal/nearby/zzfy;->durationMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzfy;->zzej:Lcom/google/android/gms/nearby/connection/AdvertisingOptions;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzfy;->zzec:Lcom/google/android/gms/internal/nearby/zzdj;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 9

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzfy;->zzeh:Lcom/google/android/gms/internal/nearby/zzec;

    const/4 v2, 0x0

    if-nez v1, :cond_b

    move-object v1, v2

    goto :goto_f

    :cond_b
    invoke-interface {v1}, Lcom/google/android/gms/internal/nearby/zzec;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_f
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {p1, v4, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIBinder(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 v1, 0x2

    iget-object v4, p0, Lcom/google/android/gms/internal/nearby/zzfy;->zzei:Lcom/google/android/gms/internal/nearby/zzdd;

    if-nez v4, :cond_1b

    move-object v4, v2

    goto :goto_1f

    :cond_1b
    invoke-interface {v4}, Lcom/google/android/gms/internal/nearby/zzdd;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_1f
    invoke-static {p1, v1, v4, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIBinder(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 v1, 0x3

    iget-object v4, p0, Lcom/google/android/gms/internal/nearby/zzfy;->name:Ljava/lang/String;

    invoke-static {p1, v1, v4, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x4

    iget-object v4, p0, Lcom/google/android/gms/internal/nearby/zzfy;->zzu:Ljava/lang/String;

    invoke-static {p1, v1, v4, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x5

    iget-wide v4, p0, Lcom/google/android/gms/internal/nearby/zzfy;->durationMillis:J

    invoke-static {p1, v1, v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    const/4 v1, 0x6

    iget-object v4, p0, Lcom/google/android/gms/internal/nearby/zzfy;->zzej:Lcom/google/android/gms/nearby/connection/AdvertisingOptions;

    invoke-static {p1, v1, v4, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 p2, 0x7

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzfy;->zzec:Lcom/google/android/gms/internal/nearby/zzdj;

    if-nez v1, :cond_40

    goto :goto_44

    :cond_40
    invoke-interface {v1}, Lcom/google/android/gms/internal/nearby/zzdj;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_44
    invoke-static {p1, p2, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIBinder(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
