.class public final Lcom/google/android/gms/nearby/connection/AdvertisingOptions;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# annotations
.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
    creator = "AdvertisingOptionsCreator"
.end annotation

.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Reserved;
    value = {
        0x3e8
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/nearby/connection/AdvertisingOptions$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/nearby/connection/AdvertisingOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzh:Lcom/google/android/gms/nearby/connection/Strategy;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getStrategy"
        id = 0x1
    .end annotation
.end field

.field private zzi:Z
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        defaultValue = "true"
        getter = "getAutoUpgradeBandwidth"
        id = 0x2
    .end annotation
.end field

.field private zzj:Z
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        defaultValue = "true"
        getter = "getEnforceTopologyConstraints"
        id = 0x3
    .end annotation
.end field

.field private zzk:Z
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        defaultValue = "true"
        getter = "getEnableBluetooth"
        id = 0x4
    .end annotation
.end field

.field private zzl:Z
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        defaultValue = "true"
        getter = "getEnableBle"
        id = 0x5
    .end annotation
.end field

.field private zzm:[B
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getNearbyNotificationsBeaconData"
        id = 0x6
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/nearby/connection/zzb;

    invoke-direct {v0}, Lcom/google/android/gms/nearby/connection/zzb;-><init>()V

    sput-object v0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzi:Z

    iput-boolean v0, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzj:Z

    iput-boolean v0, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzk:Z

    iput-boolean v0, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzl:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/nearby/connection/Strategy;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzi:Z

    iput-boolean v0, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzj:Z

    iput-boolean v0, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzk:Z

    iput-boolean v0, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzl:Z

    iput-object p1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzh:Lcom/google/android/gms/nearby/connection/Strategy;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/nearby/connection/Strategy;ZZZZ[B)V
    .registers 8
    .param p1    # Lcom/google/android/gms/nearby/connection/Strategy;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x1
        .end annotation
    .end param
    .param p2    # Z
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x2
        .end annotation
    .end param
    .param p3    # Z
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x3
        .end annotation
    .end param
    .param p4    # Z
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x4
        .end annotation
    .end param
    .param p5    # Z
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
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Constructor;
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzi:Z

    iput-boolean v0, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzj:Z

    iput-boolean v0, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzk:Z

    iput-boolean v0, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzl:Z

    iput-object p1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzh:Lcom/google/android/gms/nearby/connection/Strategy;

    iput-boolean p2, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzi:Z

    iput-boolean p3, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzj:Z

    iput-boolean p4, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzk:Z

    iput-boolean p5, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzl:Z

    iput-object p6, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzm:[B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/nearby/connection/zza;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;-><init>()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;)Lcom/google/android/gms/nearby/connection/Strategy;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzh:Lcom/google/android/gms/nearby/connection/Strategy;

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;Lcom/google/android/gms/nearby/connection/Strategy;)Lcom/google/android/gms/nearby/connection/Strategy;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzh:Lcom/google/android/gms/nearby/connection/Strategy;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzi:Z

    return p1
.end method

.method static synthetic zza(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;[B)[B
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzm:[B

    return-object p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzi:Z

    return p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzj:Z

    return p1
.end method

.method static synthetic zzc(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzj:Z

    return p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzk:Z

    return p1
.end method

.method static synthetic zzd(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzk:Z

    return p0
.end method

.method static synthetic zzd(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzl:Z

    return p1
.end method

.method static synthetic zze(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzl:Z

    return p0
.end method

.method static synthetic zzf(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;)[B
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzm:[B

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;

    const/4 v2, 0x0

    if-eqz v1, :cond_68

    check-cast p1, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;

    iget-object v1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzh:Lcom/google/android/gms/nearby/connection/Strategy;

    iget-object v3, p1, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzh:Lcom/google/android/gms/nearby/connection/Strategy;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_68

    iget-boolean v1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzi:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v3, p1, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzi:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_68

    iget-boolean v1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzj:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v3, p1, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzj:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_68

    iget-boolean v1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzk:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v3, p1, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzk:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_68

    iget-boolean v1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzl:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v3, p1, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzl:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_68

    iget-object v1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzm:[B

    iget-object p1, p1, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzm:[B

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_68

    return v0

    :cond_68
    return v2
.end method

.method public final getStrategy()Lcom/google/android/gms/nearby/connection/Strategy;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzh:Lcom/google/android/gms/nearby/connection/Strategy;

    return-object v0
.end method

.method public final hashCode()I
    .registers 4

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzh:Lcom/google/android/gms/nearby/connection/Strategy;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzi:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzj:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzk:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzl:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzm:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->getStrategy()Lcom/google/android/gms/nearby/connection/Strategy;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-boolean p2, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzi:Z

    const/4 v1, 0x2

    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    iget-boolean p2, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzj:Z

    const/4 v1, 0x3

    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    iget-boolean p2, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzk:Z

    const/4 v1, 0x4

    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    iget-boolean p2, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzl:Z

    const/4 v1, 0x5

    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    iget-object p2, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzm:[B

    const/4 v1, 0x6

    invoke-static {p1, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeByteArray(Landroid/os/Parcel;I[BZ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
