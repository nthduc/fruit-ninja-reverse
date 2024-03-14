.class public final Lcom/google/android/gms/drive/zzr;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# annotations
.annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
.end annotation

.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
    creator = "PermissionCreator"
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
            "Lcom/google/android/gms/drive/zzr;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private accountType:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getAccountType"
        id = 0x3
    .end annotation
.end field

.field private zzbg:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getAccountIdentifier"
        id = 0x2
    .end annotation
.end field

.field private zzbh:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getAccountDisplayName"
        id = 0x4
    .end annotation
.end field

.field private zzbi:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getPhotoLink"
        id = 0x5
    .end annotation
.end field

.field private zzbj:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getRole"
        id = 0x6
    .end annotation
.end field

.field private zzbk:Z
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "isLinkRequiredForAccess"
        id = 0x7
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 57
    new-instance v0, Lcom/google/android/gms/drive/zzs;

    invoke-direct {v0}, Lcom/google/android/gms/drive/zzs;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/zzr;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)V
    .registers 7
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x2
        .end annotation
    .end param
    .param p2    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x3
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x4
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x5
        .end annotation
    .end param
    .param p5    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x6
        .end annotation
    .end param
    .param p6    # Z
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x7
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Constructor;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/drive/zzr;->zzbg:Ljava/lang/String;

    .line 3
    iput p2, p0, Lcom/google/android/gms/drive/zzr;->accountType:I

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/drive/zzr;->zzbh:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/drive/zzr;->zzbi:Ljava/lang/String;

    .line 6
    iput p5, p0, Lcom/google/android/gms/drive/zzr;->zzbj:I

    .line 7
    iput-boolean p6, p0, Lcom/google/android/gms/drive/zzr;->zzbk:Z

    return-void
.end method

.method private static zzb(I)Z
    .registers 1

    packed-switch p0, :pswitch_data_8

    const/4 p0, 0x0

    return p0

    :pswitch_5
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_8
    .packed-switch 0x100
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_31

    .line 51
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_e

    goto :goto_31

    :cond_e
    const/4 v1, 0x1

    if-ne p1, p0, :cond_12

    return v1

    .line 55
    :cond_12
    check-cast p1, Lcom/google/android/gms/drive/zzr;

    .line 56
    iget-object v2, p0, Lcom/google/android/gms/drive/zzr;->zzbg:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/drive/zzr;->zzbg:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    iget v2, p0, Lcom/google/android/gms/drive/zzr;->accountType:I

    iget v3, p1, Lcom/google/android/gms/drive/zzr;->accountType:I

    if-ne v2, v3, :cond_31

    iget v2, p0, Lcom/google/android/gms/drive/zzr;->zzbj:I

    iget v3, p1, Lcom/google/android/gms/drive/zzr;->zzbj:I

    if-ne v2, v3, :cond_31

    iget-boolean v2, p0, Lcom/google/android/gms/drive/zzr;->zzbk:Z

    iget-boolean p1, p1, Lcom/google/android/gms/drive/zzr;->zzbk:Z

    if-ne v2, p1, :cond_31

    return v1

    :cond_31
    :goto_31
    return v0
.end method

.method public final hashCode()I
    .registers 4

    const/4 v0, 0x4

    .line 50
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/drive/zzr;->zzbg:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/drive/zzr;->accountType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/drive/zzr;->zzbj:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/google/android/gms/drive/zzr;->zzbk:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 10

    .line 13
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result p2

    .line 16
    iget v0, p0, Lcom/google/android/gms/drive/zzr;->accountType:I

    invoke-static {v0}, Lcom/google/android/gms/drive/zzr;->zzb(I)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x0

    goto :goto_10

    .line 18
    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/drive/zzr;->zzbg:Ljava/lang/String;

    :goto_10
    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 20
    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 23
    iget v0, p0, Lcom/google/android/gms/drive/zzr;->accountType:I

    invoke-static {v0}, Lcom/google/android/gms/drive/zzr;->zzb(I)Z

    move-result v0

    const/4 v3, -0x1

    if-nez v0, :cond_20

    const/4 v0, -0x1

    goto :goto_22

    .line 25
    :cond_20
    iget v0, p0, Lcom/google/android/gms/drive/zzr;->accountType:I

    :goto_22
    const/4 v4, 0x3

    .line 26
    invoke-static {p1, v4, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    const/4 v0, 0x4

    .line 28
    iget-object v5, p0, Lcom/google/android/gms/drive/zzr;->zzbh:Ljava/lang/String;

    .line 30
    invoke-static {p1, v0, v5, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x5

    .line 32
    iget-object v5, p0, Lcom/google/android/gms/drive/zzr;->zzbi:Ljava/lang/String;

    .line 34
    invoke-static {p1, v0, v5, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x6

    .line 37
    iget v5, p0, Lcom/google/android/gms/drive/zzr;->zzbj:I

    const/4 v6, 0x1

    if-eqz v5, :cond_3f

    if-eq v5, v6, :cond_3f

    if-eq v5, v1, :cond_3f

    if-eq v5, v4, :cond_3f

    goto :goto_40

    :cond_3f
    const/4 v2, 0x1

    :goto_40
    if-nez v2, :cond_43

    goto :goto_45

    .line 43
    :cond_43
    iget v3, p0, Lcom/google/android/gms/drive/zzr;->zzbj:I

    .line 44
    :goto_45
    invoke-static {p1, v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    const/4 v0, 0x7

    .line 46
    iget-boolean v1, p0, Lcom/google/android/gms/drive/zzr;->zzbk:Z

    .line 47
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 48
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
