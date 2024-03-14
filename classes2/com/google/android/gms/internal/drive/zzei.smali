.class public final Lcom/google/android/gms/internal/drive/zzei;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;

# interfaces
.implements Lcom/google/android/gms/drive/FileUploadPreferences;


# annotations
.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
    creator = "FileUploadPreferencesImplCreator"
.end annotation

.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Reserved;
    value = {
        0x1
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/drive/zzei;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzbn:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        id = 0x3
    .end annotation
.end field

.field private zzgy:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        id = 0x2
    .end annotation
.end field

.field private zzgz:Z
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        id = 0x4
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 42
    new-instance v0, Lcom/google/android/gms/internal/drive/zzej;

    invoke-direct {v0}, Lcom/google/android/gms/internal/drive/zzej;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/drive/zzei;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIZ)V
    .registers 4
    .param p1    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x2
        .end annotation
    .end param
    .param p2    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x3
        .end annotation
    .end param
    .param p3    # Z
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x4
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Constructor;
    .end annotation

    .line 8
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 9
    iput p1, p0, Lcom/google/android/gms/internal/drive/zzei;->zzgy:I

    .line 10
    iput p2, p0, Lcom/google/android/gms/internal/drive/zzei;->zzbn:I

    .line 11
    iput-boolean p3, p0, Lcom/google/android/gms/internal/drive/zzei;->zzgz:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/drive/TransferPreferences;)V
    .registers 4

    .line 14
    invoke-interface {p1}, Lcom/google/android/gms/drive/TransferPreferences;->getNetworkPreference()I

    move-result v0

    .line 15
    invoke-interface {p1}, Lcom/google/android/gms/drive/TransferPreferences;->getBatteryUsagePreference()I

    move-result v1

    .line 16
    invoke-interface {p1}, Lcom/google/android/gms/drive/TransferPreferences;->isRoamingAllowed()Z

    move-result p1

    .line 17
    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/gms/internal/drive/zzei;-><init>(IIZ)V

    return-void
.end method

.method private static zzh(I)Z
    .registers 3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_8

    const/4 v1, 0x2

    if-eq p0, v1, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    return v0
.end method

.method private static zzi(I)Z
    .registers 2

    const/16 v0, 0x100

    if-eq p0, v0, :cond_a

    const/16 v0, 0x101

    if-eq p0, v0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final getBatteryUsagePreference()I
    .registers 2

    .line 26
    iget v0, p0, Lcom/google/android/gms/internal/drive/zzei;->zzbn:I

    invoke-static {v0}, Lcom/google/android/gms/internal/drive/zzei;->zzi(I)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 28
    :cond_a
    iget v0, p0, Lcom/google/android/gms/internal/drive/zzei;->zzbn:I

    return v0
.end method

.method public final getNetworkTypePreference()I
    .registers 2

    .line 19
    iget v0, p0, Lcom/google/android/gms/internal/drive/zzei;->zzgy:I

    invoke-static {v0}, Lcom/google/android/gms/internal/drive/zzei;->zzh(I)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 21
    :cond_a
    iget v0, p0, Lcom/google/android/gms/internal/drive/zzei;->zzgy:I

    return v0
.end method

.method public final isRoamingAllowed()Z
    .registers 2

    .line 33
    iget-boolean v0, p0, Lcom/google/android/gms/internal/drive/zzei;->zzgz:Z

    return v0
.end method

.method public final setBatteryUsagePreference(I)V
    .registers 3

    .line 29
    invoke-static {p1}, Lcom/google/android/gms/internal/drive/zzei;->zzi(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 31
    iput p1, p0, Lcom/google/android/gms/internal/drive/zzei;->zzbn:I

    return-void

    .line 30
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid battery usage preference value."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setNetworkTypePreference(I)V
    .registers 3

    .line 22
    invoke-static {p1}, Lcom/google/android/gms/internal/drive/zzei;->zzh(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 24
    iput p1, p0, Lcom/google/android/gms/internal/drive/zzei;->zzgy:I

    return-void

    .line 23
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid data connection preference value."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setRoamingAllowed(Z)V
    .registers 2

    .line 34
    iput-boolean p1, p0, Lcom/google/android/gms/internal/drive/zzei;->zzgz:Z

    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result p2

    .line 3
    iget v0, p0, Lcom/google/android/gms/internal/drive/zzei;->zzgy:I

    const/4 v1, 0x2

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 4
    iget v0, p0, Lcom/google/android/gms/internal/drive/zzei;->zzbn:I

    const/4 v1, 0x3

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 5
    iget-boolean v0, p0, Lcom/google/android/gms/internal/drive/zzei;->zzgz:Z

    const/4 v1, 0x4

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 6
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
