.class final Lcom/google/android/datatransport/cct/a/zzi;
.super Lcom/google/android/datatransport/cct/a/zzq;
.source "com.google.android.datatransport:transport-backend-cct@@2.2.1"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/datatransport/cct/a/zzi$zza;
    }
.end annotation


# instance fields
.field private final zza:J

.field private final zzb:Ljava/lang/Integer;

.field private final zzc:J

.field private final zzd:[B

.field private final zze:Ljava/lang/String;

.field private final zzf:J

.field private final zzg:Lcom/google/android/datatransport/cct/a/zzt;


# direct methods
.method synthetic constructor <init>(JLjava/lang/Integer;J[BLjava/lang/String;JLcom/google/android/datatransport/cct/a/zzt;Lcom/google/android/datatransport/cct/a/zzh;)V
    .registers 12

    .line 1
    invoke-direct {p0}, Lcom/google/android/datatransport/cct/a/zzq;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/google/android/datatransport/cct/a/zzi;->zza:J

    .line 3
    iput-object p3, p0, Lcom/google/android/datatransport/cct/a/zzi;->zzb:Ljava/lang/Integer;

    .line 4
    iput-wide p4, p0, Lcom/google/android/datatransport/cct/a/zzi;->zzc:J

    .line 5
    iput-object p6, p0, Lcom/google/android/datatransport/cct/a/zzi;->zzd:[B

    .line 6
    iput-object p7, p0, Lcom/google/android/datatransport/cct/a/zzi;->zze:Ljava/lang/String;

    .line 7
    iput-wide p8, p0, Lcom/google/android/datatransport/cct/a/zzi;->zzf:J

    .line 8
    iput-object p10, p0, Lcom/google/android/datatransport/cct/a/zzi;->zzg:Lcom/google/android/datatransport/cct/a/zzt;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Lcom/google/android/datatransport/cct/a/zzq;

    const/4 v2, 0x0

    if-eqz v1, :cond_85

    .line 2
    check-cast p1, Lcom/google/android/datatransport/cct/a/zzq;

    .line 3
    iget-wide v3, p0, Lcom/google/android/datatransport/cct/a/zzi;->zza:J

    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/a/zzq;->zzb()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_83

    iget-object v1, p0, Lcom/google/android/datatransport/cct/a/zzi;->zzb:Ljava/lang/Integer;

    if-nez v1, :cond_21

    .line 4
    move-object v1, p1

    check-cast v1, Lcom/google/android/datatransport/cct/a/zzi;

    .line 5
    iget-object v1, v1, Lcom/google/android/datatransport/cct/a/zzi;->zzb:Ljava/lang/Integer;

    if-nez v1, :cond_83

    goto :goto_2c

    .line 6
    :cond_21
    move-object v3, p1

    check-cast v3, Lcom/google/android/datatransport/cct/a/zzi;

    .line 7
    iget-object v3, v3, Lcom/google/android/datatransport/cct/a/zzi;->zzb:Ljava/lang/Integer;

    .line 8
    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_83

    :goto_2c
    iget-wide v3, p0, Lcom/google/android/datatransport/cct/a/zzi;->zzc:J

    .line 9
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/a/zzq;->zzc()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_83

    iget-object v1, p0, Lcom/google/android/datatransport/cct/a/zzi;->zzd:[B

    .line 10
    instance-of v3, p1, Lcom/google/android/datatransport/cct/a/zzi;

    if-eqz v3, :cond_42

    move-object v3, p1

    check-cast v3, Lcom/google/android/datatransport/cct/a/zzi;

    iget-object v3, v3, Lcom/google/android/datatransport/cct/a/zzi;->zzd:[B

    goto :goto_46

    :cond_42
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/a/zzq;->zze()[B

    move-result-object v3

    :goto_46
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_83

    iget-object v1, p0, Lcom/google/android/datatransport/cct/a/zzi;->zze:Ljava/lang/String;

    if-nez v1, :cond_58

    .line 11
    move-object v1, p1

    check-cast v1, Lcom/google/android/datatransport/cct/a/zzi;

    .line 12
    iget-object v1, v1, Lcom/google/android/datatransport/cct/a/zzi;->zze:Ljava/lang/String;

    if-nez v1, :cond_83

    goto :goto_63

    .line 13
    :cond_58
    move-object v3, p1

    check-cast v3, Lcom/google/android/datatransport/cct/a/zzi;

    .line 14
    iget-object v3, v3, Lcom/google/android/datatransport/cct/a/zzi;->zze:Ljava/lang/String;

    .line 15
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_83

    :goto_63
    iget-wide v3, p0, Lcom/google/android/datatransport/cct/a/zzi;->zzf:J

    .line 16
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/a/zzq;->zzg()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_83

    iget-object v1, p0, Lcom/google/android/datatransport/cct/a/zzi;->zzg:Lcom/google/android/datatransport/cct/a/zzt;

    if-nez v1, :cond_78

    .line 17
    check-cast p1, Lcom/google/android/datatransport/cct/a/zzi;

    .line 18
    iget-object p1, p1, Lcom/google/android/datatransport/cct/a/zzi;->zzg:Lcom/google/android/datatransport/cct/a/zzt;

    if-nez p1, :cond_83

    goto :goto_84

    .line 19
    :cond_78
    check-cast p1, Lcom/google/android/datatransport/cct/a/zzi;

    .line 20
    iget-object p1, p1, Lcom/google/android/datatransport/cct/a/zzi;->zzg:Lcom/google/android/datatransport/cct/a/zzt;

    .line 21
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_83

    goto :goto_84

    :cond_83
    const/4 v0, 0x0

    :goto_84
    return v0

    :cond_85
    return v2
.end method

.method public hashCode()I
    .registers 10

    .line 1
    iget-wide v0, p0, Lcom/google/android/datatransport/cct/a/zzi;->zza:J

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v1, v0

    const v0, 0xf4243

    xor-int/2addr v1, v0

    mul-int v1, v1, v0

    .line 2
    iget-object v3, p0, Lcom/google/android/datatransport/cct/a/zzi;->zzb:Ljava/lang/Integer;

    const/4 v4, 0x0

    if-nez v3, :cond_15

    const/4 v3, 0x0

    goto :goto_19

    :cond_15
    invoke-virtual {v3}, Ljava/lang/Integer;->hashCode()I

    move-result v3

    :goto_19
    xor-int/2addr v1, v3

    mul-int v1, v1, v0

    .line 3
    iget-wide v5, p0, Lcom/google/android/datatransport/cct/a/zzi;->zzc:J

    ushr-long v7, v5, v2

    xor-long/2addr v5, v7

    long-to-int v3, v5

    xor-int/2addr v1, v3

    mul-int v1, v1, v0

    .line 4
    iget-object v3, p0, Lcom/google/android/datatransport/cct/a/zzi;->zzd:[B

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([B)I

    move-result v3

    xor-int/2addr v1, v3

    mul-int v1, v1, v0

    .line 5
    iget-object v3, p0, Lcom/google/android/datatransport/cct/a/zzi;->zze:Ljava/lang/String;

    if-nez v3, :cond_34

    const/4 v3, 0x0

    goto :goto_38

    :cond_34
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_38
    xor-int/2addr v1, v3

    mul-int v1, v1, v0

    .line 6
    iget-wide v5, p0, Lcom/google/android/datatransport/cct/a/zzi;->zzf:J

    ushr-long v2, v5, v2

    xor-long/2addr v2, v5

    long-to-int v3, v2

    xor-int/2addr v1, v3

    mul-int v1, v1, v0

    .line 7
    iget-object v0, p0, Lcom/google/android/datatransport/cct/a/zzi;->zzg:Lcom/google/android/datatransport/cct/a/zzt;

    if-nez v0, :cond_49

    goto :goto_4d

    :cond_49
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    :goto_4d
    xor-int v0, v1, v4

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LogEvent{eventTimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/google/android/datatransport/cct/a/zzi;->zza:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", eventCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/datatransport/cct/a/zzi;->zzb:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", eventUptimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/google/android/datatransport/cct/a/zzi;->zzc:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", sourceExtension="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/datatransport/cct/a/zzi;->zzd:[B

    .line 2
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sourceExtensionJsonProto3="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/datatransport/cct/a/zzi;->zze:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", timezoneOffsetSeconds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/google/android/datatransport/cct/a/zzi;->zzf:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", networkConnectionInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/datatransport/cct/a/zzi;->zzg:Lcom/google/android/datatransport/cct/a/zzt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zza()Ljava/lang/Integer;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/datatransport/cct/a/zzi;->zzb:Ljava/lang/Integer;

    return-object v0
.end method

.method public zzb()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/google/android/datatransport/cct/a/zzi;->zza:J

    return-wide v0
.end method

.method public zzc()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/google/android/datatransport/cct/a/zzi;->zzc:J

    return-wide v0
.end method

.method public zzd()Lcom/google/android/datatransport/cct/a/zzt;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/datatransport/cct/a/zzi;->zzg:Lcom/google/android/datatransport/cct/a/zzt;

    return-object v0
.end method

.method public zze()[B
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/datatransport/cct/a/zzi;->zzd:[B

    return-object v0
.end method

.method public zzf()Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/datatransport/cct/a/zzi;->zze:Ljava/lang/String;

    return-object v0
.end method

.method public zzg()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/google/android/datatransport/cct/a/zzi;->zzf:J

    return-wide v0
.end method
