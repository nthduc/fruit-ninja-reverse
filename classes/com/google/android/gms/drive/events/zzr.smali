.class public final Lcom/google/android/gms/drive/events/zzr;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;

# interfaces
.implements Lcom/google/android/gms/drive/events/DriveEvent;


# annotations
.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
    creator = "TransferProgressEventCreator"
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
            "Lcom/google/android/gms/drive/events/zzr;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzcs:Lcom/google/android/gms/internal/drive/zzh;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        id = 0x2
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 18
    new-instance v0, Lcom/google/android/gms/drive/events/zzs;

    invoke-direct {v0}, Lcom/google/android/gms/drive/events/zzs;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/events/zzr;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/drive/zzh;)V
    .registers 2
    .param p1    # Lcom/google/android/gms/internal/drive/zzh;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x2
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Constructor;
    .end annotation

    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/google/android/gms/drive/events/zzr;->zzcs:Lcom/google/android/gms/internal/drive/zzh;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 4

    if-eqz p1, :cond_1c

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_d

    goto :goto_1c

    :cond_d
    if-ne p1, p0, :cond_11

    const/4 p1, 0x1

    return p1

    .line 15
    :cond_11
    check-cast p1, Lcom/google/android/gms/drive/events/zzr;

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/drive/events/zzr;->zzcs:Lcom/google/android/gms/internal/drive/zzh;

    iget-object p1, p1, Lcom/google/android/gms/drive/events/zzr;->zzcs:Lcom/google/android/gms/internal/drive/zzh;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1c
    :goto_1c
    const/4 p1, 0x0

    return p1
.end method

.method public final getType()I
    .registers 2

    const/16 v0, 0x8

    return v0
.end method

.method public final hashCode()I
    .registers 4

    const/4 v0, 0x1

    .line 17
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/drive/events/zzr;->zzcs:Lcom/google/android/gms/internal/drive/zzh;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/drive/events/zzr;->zzcs:Lcom/google/android/gms/internal/drive/zzh;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 4
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zzac()Lcom/google/android/gms/internal/drive/zzh;
    .registers 2

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/drive/events/zzr;->zzcs:Lcom/google/android/gms/internal/drive/zzh;

    return-object v0
.end method
