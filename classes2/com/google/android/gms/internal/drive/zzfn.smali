.class public final Lcom/google/android/gms/internal/drive/zzfn;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# annotations
.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
    creator = "OnDriveIdResponseCreator"
.end annotation

.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Reserved;
    value = {
        0x1
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/drive/zzfn;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field zzdd:Lcom/google/android/gms/drive/DriveId;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        id = 0x2
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 10
    new-instance v0, Lcom/google/android/gms/internal/drive/zzfo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/drive/zzfo;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/drive/zzfn;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/drive/DriveId;)V
    .registers 2
    .param p1    # Lcom/google/android/gms/drive/DriveId;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x2
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Constructor;
    .end annotation

    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/google/android/gms/internal/drive/zzfn;->zzdd:Lcom/google/android/gms/drive/DriveId;

    return-void
.end method


# virtual methods
.method public final getDriveId()Lcom/google/android/gms/drive/DriveId;
    .registers 2

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzfn;->zzdd:Lcom/google/android/gms/drive/DriveId;

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzfn;->zzdd:Lcom/google/android/gms/drive/DriveId;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 4
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
