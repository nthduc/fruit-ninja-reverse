.class public final Lcom/google/android/gms/internal/drive/zzf;
.super Ljava/lang/Object;


# instance fields
.field private final status:I

.field private final zzct:I

.field private final zzk:Lcom/google/android/gms/drive/DriveId;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/drive/zzh;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iget-object v0, p1, Lcom/google/android/gms/internal/drive/zzh;->zzk:Lcom/google/android/gms/drive/DriveId;

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/internal/drive/zzf;->zzk:Lcom/google/android/gms/drive/DriveId;

    .line 6
    iget v0, p1, Lcom/google/android/gms/internal/drive/zzh;->zzct:I

    .line 7
    iput v0, p0, Lcom/google/android/gms/internal/drive/zzf;->zzct:I

    .line 9
    iget p1, p1, Lcom/google/android/gms/internal/drive/zzh;->status:I

    .line 10
    iput p1, p0, Lcom/google/android/gms/internal/drive/zzf;->status:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_2b

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_e

    goto :goto_2b

    :cond_e
    const/4 v1, 0x1

    if-ne p1, p0, :cond_12

    return v1

    .line 16
    :cond_12
    check-cast p1, Lcom/google/android/gms/internal/drive/zzf;

    .line 17
    iget-object v2, p0, Lcom/google/android/gms/internal/drive/zzf;->zzk:Lcom/google/android/gms/drive/DriveId;

    iget-object v3, p1, Lcom/google/android/gms/internal/drive/zzf;->zzk:Lcom/google/android/gms/drive/DriveId;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    iget v2, p0, Lcom/google/android/gms/internal/drive/zzf;->zzct:I

    iget v3, p1, Lcom/google/android/gms/internal/drive/zzf;->zzct:I

    if-ne v2, v3, :cond_2b

    iget v2, p0, Lcom/google/android/gms/internal/drive/zzf;->status:I

    iget p1, p1, Lcom/google/android/gms/internal/drive/zzf;->status:I

    if-ne v2, p1, :cond_2b

    return v1

    :cond_2b
    :goto_2b
    return v0
.end method

.method public final hashCode()I
    .registers 4

    const/4 v0, 0x3

    .line 18
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzf;->zzk:Lcom/google/android/gms/drive/DriveId;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/internal/drive/zzf;->zzct:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/internal/drive/zzf;->status:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x3

    .line 19
    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/drive/zzf;->zzct:I

    .line 20
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzf;->zzk:Lcom/google/android/gms/drive/DriveId;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/internal/drive/zzf;->status:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "FileTransferState[TransferType: %d, DriveId: %s, status: %d]"

    .line 21
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
