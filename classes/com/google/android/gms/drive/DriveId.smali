.class public Lcom/google/android/gms/drive/DriveId;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# annotations
.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
    creator = "DriveIdCreator"
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
            "Lcom/google/android/gms/drive/DriveId;",
            ">;"
        }
    .end annotation
.end field

.field public static final RESOURCE_TYPE_FILE:I = 0x0

.field public static final RESOURCE_TYPE_FOLDER:I = 0x1

.field public static final RESOURCE_TYPE_UNKNOWN:I = -0x1


# instance fields
.field private final zzad:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        id = 0x2
    .end annotation
.end field

.field private final zzae:J
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        id = 0x3
    .end annotation
.end field

.field private final zzaf:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        defaultValueUnchecked = "com.google.android.gms.drive.DriveId.RESOURCE_TYPE_UNKNOWN"
        id = 0x5
    .end annotation
.end field

.field private volatile zzag:Ljava/lang/String;

.field private final zzf:J
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        id = 0x4
    .end annotation
.end field

.field private volatile zzh:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 88
    new-instance v0, Lcom/google/android/gms/drive/zzk;

    invoke-direct {v0}, Lcom/google/android/gms/drive/zzk;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/DriveId;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJI)V
    .registers 11
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x2
        .end annotation
    .end param
    .param p2    # J
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x3
        .end annotation
    .end param
    .param p4    # J
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x4
        .end annotation
    .end param
    .param p6    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x5
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Constructor;
    .end annotation

    .line 24
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/google/android/gms/drive/DriveId;->zzh:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/google/android/gms/drive/DriveId;->zzag:Ljava/lang/String;

    .line 27
    iput-object p1, p0, Lcom/google/android/gms/drive/DriveId;->zzad:Ljava/lang/String;

    const-string v0, ""

    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    if-nez p1, :cond_1f

    const-wide/16 v2, -0x1

    cmp-long p1, p2, v2

    if-eqz p1, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    .line 29
    :cond_1f
    :goto_1f
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 30
    iput-wide p2, p0, Lcom/google/android/gms/drive/DriveId;->zzae:J

    .line 31
    iput-wide p4, p0, Lcom/google/android/gms/drive/DriveId;->zzf:J

    .line 32
    iput p6, p0, Lcom/google/android/gms/drive/DriveId;->zzaf:I

    return-void
.end method

.method public static decodeFromString(Ljava/lang/String;)Lcom/google/android/gms/drive/DriveId;
    .registers 5

    const-string v0, "DriveId:"

    .line 71
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "Invalid DriveId: "

    if-eqz v2, :cond_17

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1c

    :cond_17
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1c
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    const/16 v0, 0x8

    .line 72
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0xa

    .line 73
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    .line 74
    invoke-static {p0}, Lcom/google/android/gms/drive/DriveId;->zza([B)Lcom/google/android/gms/drive/DriveId;

    move-result-object p0

    return-object p0
.end method

.method public static zza(Ljava/lang/String;)Lcom/google/android/gms/drive/DriveId;
    .registers 9
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v7, Lcom/google/android/gms/drive/DriveId;

    const-wide/16 v2, -0x1

    const-wide/16 v4, -0x1

    const/4 v6, -0x1

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/drive/DriveId;-><init>(Ljava/lang/String;JJI)V

    return-object v7
.end method

.method private static zza([B)Lcom/google/android/gms/drive/DriveId;
    .registers 9
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 76
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzjx;->zzcj()Lcom/google/android/gms/internal/drive/zzjx;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/drive/zzfb;->zza([BLcom/google/android/gms/internal/drive/zzjx;)Lcom/google/android/gms/internal/drive/zzfb;

    move-result-object p0
    :try_end_8
    .catch Lcom/google/android/gms/internal/drive/zzkq; {:try_start_0 .. :try_end_8} :catch_2e

    .line 80
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zzfb;->getResourceId()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x0

    goto :goto_1a

    .line 82
    :cond_16
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zzfb;->getResourceId()Ljava/lang/String;

    move-result-object v0

    :goto_1a
    move-object v2, v0

    .line 83
    new-instance v0, Lcom/google/android/gms/drive/DriveId;

    .line 84
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zzfb;->zzal()J

    move-result-wide v3

    .line 85
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zzfb;->zzam()J

    move-result-wide v5

    .line 86
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zzfb;->getResourceType()I

    move-result v7

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/drive/DriveId;-><init>(Ljava/lang/String;JJI)V

    return-object v0

    .line 79
    :catch_2e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method


# virtual methods
.method public asDriveFile()Lcom/google/android/gms/drive/DriveFile;
    .registers 3

    .line 5
    iget v0, p0, Lcom/google/android/gms/drive/DriveId;->zzaf:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_b

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/drive/zzbn;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/drive/zzbn;-><init>(Lcom/google/android/gms/drive/DriveId;)V

    return-object v0

    .line 6
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This DriveId corresponds to a folder. Call asDriveFolder instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public asDriveFolder()Lcom/google/android/gms/drive/DriveFolder;
    .registers 3

    .line 8
    iget v0, p0, Lcom/google/android/gms/drive/DriveId;->zzaf:I

    if-eqz v0, :cond_a

    .line 10
    new-instance v0, Lcom/google/android/gms/internal/drive/zzbs;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/drive/zzbs;-><init>(Lcom/google/android/gms/drive/DriveId;)V

    return-object v0

    .line 9
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This DriveId corresponds to a file. Call asDriveFile instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public asDriveResource()Lcom/google/android/gms/drive/DriveResource;
    .registers 3

    .line 11
    iget v0, p0, Lcom/google/android/gms/drive/DriveId;->zzaf:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/drive/DriveId;->asDriveFolder()Lcom/google/android/gms/drive/DriveFolder;

    move-result-object v0

    return-object v0

    :cond_a
    if-nez v0, :cond_11

    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/drive/DriveId;->asDriveFile()Lcom/google/android/gms/drive/DriveFile;

    move-result-object v0

    return-object v0

    .line 15
    :cond_11
    new-instance v0, Lcom/google/android/gms/internal/drive/zzdp;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/drive/zzdp;-><init>(Lcom/google/android/gms/drive/DriveId;)V

    return-object v0
.end method

.method public final encodeToString()Ljava/lang/String;
    .registers 4

    .line 47
    iget-object v0, p0, Lcom/google/android/gms/drive/DriveId;->zzh:Ljava/lang/String;

    if-nez v0, :cond_53

    .line 49
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzfb;->zzan()Lcom/google/android/gms/internal/drive/zzfb$zza;

    move-result-object v0

    const/4 v1, 0x1

    .line 50
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/drive/zzfb$zza;->zzm(I)Lcom/google/android/gms/internal/drive/zzfb$zza;

    move-result-object v0

    .line 51
    iget-object v1, p0, Lcom/google/android/gms/drive/DriveId;->zzad:Ljava/lang/String;

    if-nez v1, :cond_13

    const-string v1, ""

    :cond_13
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/drive/zzfb$zza;->zze(Ljava/lang/String;)Lcom/google/android/gms/internal/drive/zzfb$zza;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gms/drive/DriveId;->zzae:J

    .line 52
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/drive/zzfb$zza;->zzg(J)Lcom/google/android/gms/internal/drive/zzfb$zza;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gms/drive/DriveId;->zzf:J

    .line 53
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/drive/zzfb$zza;->zzh(J)Lcom/google/android/gms/internal/drive/zzfb$zza;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/drive/DriveId;->zzaf:I

    .line 54
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/drive/zzfb$zza;->zzn(I)Lcom/google/android/gms/internal/drive/zzfb$zza;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lcom/google/android/gms/internal/drive/zzkk$zza;->zzdf()Lcom/google/android/gms/internal/drive/zzlq;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/drive/zzkk;

    check-cast v0, Lcom/google/android/gms/internal/drive/zzfb;

    .line 56
    invoke-virtual {v0}, Lcom/google/android/gms/internal/drive/zzit;->toByteArray()[B

    move-result-object v0

    const/16 v1, 0xa

    .line 57
    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DriveId:"

    .line 58
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_4c

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_51

    :cond_4c
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_51
    iput-object v0, p0, Lcom/google/android/gms/drive/DriveId;->zzh:Ljava/lang/String;

    .line 59
    :cond_53
    iget-object v0, p0, Lcom/google/android/gms/drive/DriveId;->zzh:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 10

    const/4 v0, 0x0

    if-eqz p1, :cond_51

    .line 37
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/google/android/gms/drive/DriveId;

    if-eq v1, v2, :cond_c

    goto :goto_51

    .line 39
    :cond_c
    check-cast p1, Lcom/google/android/gms/drive/DriveId;

    .line 40
    iget-wide v1, p1, Lcom/google/android/gms/drive/DriveId;->zzf:J

    iget-wide v3, p0, Lcom/google/android/gms/drive/DriveId;->zzf:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_17

    return v0

    .line 42
    :cond_17
    iget-wide v1, p1, Lcom/google/android/gms/drive/DriveId;->zzae:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_2e

    iget-wide v1, p0, Lcom/google/android/gms/drive/DriveId;->zzae:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_2e

    .line 43
    iget-object p1, p1, Lcom/google/android/gms/drive/DriveId;->zzad:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/drive/DriveId;->zzad:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 44
    :cond_2e
    iget-object v1, p0, Lcom/google/android/gms/drive/DriveId;->zzad:Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v1, :cond_48

    iget-object v3, p1, Lcom/google/android/gms/drive/DriveId;->zzad:Ljava/lang/String;

    if-nez v3, :cond_38

    goto :goto_48

    .line 46
    :cond_38
    iget-wide v4, p1, Lcom/google/android/gms/drive/DriveId;->zzae:J

    iget-wide v6, p0, Lcom/google/android/gms/drive/DriveId;->zzae:J

    cmp-long p1, v4, v6

    if-nez p1, :cond_47

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_47

    return v2

    :cond_47
    return v0

    .line 45
    :cond_48
    :goto_48
    iget-wide v3, p1, Lcom/google/android/gms/drive/DriveId;->zzae:J

    iget-wide v5, p0, Lcom/google/android/gms/drive/DriveId;->zzae:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_51

    return v2

    :cond_51
    :goto_51
    return v0
.end method

.method public getResourceId()Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/drive/DriveId;->zzad:Ljava/lang/String;

    return-object v0
.end method

.method public getResourceType()I
    .registers 2

    .line 4
    iget v0, p0, Lcom/google/android/gms/drive/DriveId;->zzaf:I

    return v0
.end method

.method public hashCode()I
    .registers 6

    .line 34
    iget-wide v0, p0, Lcom/google/android/gms/drive/DriveId;->zzae:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_f

    .line 35
    iget-object v0, p0, Lcom/google/android/gms/drive/DriveId;->zzad:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0

    .line 36
    :cond_f
    iget-wide v0, p0, Lcom/google/android/gms/drive/DriveId;->zzf:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gms/drive/DriveId;->zzae:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_34

    :cond_2e
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_34
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toInvariantString()Ljava/lang/String;
    .registers 4

    .line 60
    iget-object v0, p0, Lcom/google/android/gms/drive/DriveId;->zzag:Ljava/lang/String;

    if-nez v0, :cond_28

    .line 62
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzfd;->zzap()Lcom/google/android/gms/internal/drive/zzfd$zza;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gms/drive/DriveId;->zzae:J

    .line 63
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/drive/zzfd$zza;->zzi(J)Lcom/google/android/gms/internal/drive/zzfd$zza;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gms/drive/DriveId;->zzf:J

    .line 64
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/drive/zzfd$zza;->zzj(J)Lcom/google/android/gms/internal/drive/zzfd$zza;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lcom/google/android/gms/internal/drive/zzkk$zza;->zzdf()Lcom/google/android/gms/internal/drive/zzlq;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/drive/zzkk;

    check-cast v0, Lcom/google/android/gms/internal/drive/zzfd;

    .line 66
    invoke-virtual {v0}, Lcom/google/android/gms/internal/drive/zzit;->toByteArray()[B

    move-result-object v0

    const/16 v1, 0xa

    .line 68
    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/drive/DriveId;->zzag:Ljava/lang/String;

    .line 69
    :cond_28
    iget-object v0, p0, Lcom/google/android/gms/drive/DriveId;->zzag:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 70
    invoke-virtual {p0}, Lcom/google/android/gms/drive/DriveId;->encodeToString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    .line 17
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result p2

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/drive/DriveId;->zzad:Ljava/lang/String;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 19
    iget-wide v0, p0, Lcom/google/android/gms/drive/DriveId;->zzae:J

    const/4 v2, 0x3

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    .line 20
    iget-wide v0, p0, Lcom/google/android/gms/drive/DriveId;->zzf:J

    const/4 v2, 0x4

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    .line 21
    iget v0, p0, Lcom/google/android/gms/drive/DriveId;->zzaf:I

    const/4 v1, 0x5

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 22
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method