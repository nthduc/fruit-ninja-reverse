.class final Lcom/google/android/datatransport/cct/a/zzk;
.super Lcom/google/android/datatransport/cct/a/zzr;
.source "com.google.android.datatransport:transport-backend-cct@@2.2.1"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/datatransport/cct/a/zzk$zza;
    }
.end annotation


# instance fields
.field private final zza:J

.field private final zzb:J

.field private final zzc:Lcom/google/android/datatransport/cct/a/zzp;

.field private final zzd:Ljava/lang/Integer;

.field private final zze:Ljava/lang/String;

.field private final zzf:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/datatransport/cct/a/zzq;",
            ">;"
        }
    .end annotation
.end field

.field private final zzg:Lcom/google/android/datatransport/cct/a/zzu;


# direct methods
.method synthetic constructor <init>(JJLcom/google/android/datatransport/cct/a/zzp;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Lcom/google/android/datatransport/cct/a/zzu;Lcom/google/android/datatransport/cct/a/zzj;)V
    .registers 11

    .line 1
    invoke-direct {p0}, Lcom/google/android/datatransport/cct/a/zzr;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/google/android/datatransport/cct/a/zzk;->zza:J

    .line 3
    iput-wide p3, p0, Lcom/google/android/datatransport/cct/a/zzk;->zzb:J

    .line 4
    iput-object p5, p0, Lcom/google/android/datatransport/cct/a/zzk;->zzc:Lcom/google/android/datatransport/cct/a/zzp;

    .line 5
    iput-object p6, p0, Lcom/google/android/datatransport/cct/a/zzk;->zzd:Ljava/lang/Integer;

    .line 6
    iput-object p7, p0, Lcom/google/android/datatransport/cct/a/zzk;->zze:Ljava/lang/String;

    .line 7
    iput-object p8, p0, Lcom/google/android/datatransport/cct/a/zzk;->zzf:Ljava/util/List;

    .line 8
    iput-object p9, p0, Lcom/google/android/datatransport/cct/a/zzk;->zzg:Lcom/google/android/datatransport/cct/a/zzu;

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
    instance-of v1, p1, Lcom/google/android/datatransport/cct/a/zzr;

    const/4 v2, 0x0

    if-eqz v1, :cond_93

    .line 2
    check-cast p1, Lcom/google/android/datatransport/cct/a/zzr;

    .line 3
    iget-wide v3, p0, Lcom/google/android/datatransport/cct/a/zzk;->zza:J

    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/a/zzr;->zzg()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_91

    iget-wide v3, p0, Lcom/google/android/datatransport/cct/a/zzk;->zzb:J

    .line 4
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/a/zzr;->zzh()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_91

    iget-object v1, p0, Lcom/google/android/datatransport/cct/a/zzk;->zzc:Lcom/google/android/datatransport/cct/a/zzp;

    if-nez v1, :cond_2b

    .line 5
    move-object v1, p1

    check-cast v1, Lcom/google/android/datatransport/cct/a/zzk;

    .line 6
    iget-object v1, v1, Lcom/google/android/datatransport/cct/a/zzk;->zzc:Lcom/google/android/datatransport/cct/a/zzp;

    if-nez v1, :cond_91

    goto :goto_36

    .line 7
    :cond_2b
    move-object v3, p1

    check-cast v3, Lcom/google/android/datatransport/cct/a/zzk;

    .line 8
    iget-object v3, v3, Lcom/google/android/datatransport/cct/a/zzk;->zzc:Lcom/google/android/datatransport/cct/a/zzp;

    .line 9
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_91

    :goto_36
    iget-object v1, p0, Lcom/google/android/datatransport/cct/a/zzk;->zzd:Ljava/lang/Integer;

    if-nez v1, :cond_42

    .line 10
    move-object v1, p1

    check-cast v1, Lcom/google/android/datatransport/cct/a/zzk;

    .line 11
    iget-object v1, v1, Lcom/google/android/datatransport/cct/a/zzk;->zzd:Ljava/lang/Integer;

    if-nez v1, :cond_91

    goto :goto_4d

    .line 12
    :cond_42
    move-object v3, p1

    check-cast v3, Lcom/google/android/datatransport/cct/a/zzk;

    .line 13
    iget-object v3, v3, Lcom/google/android/datatransport/cct/a/zzk;->zzd:Ljava/lang/Integer;

    .line 14
    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_91

    :goto_4d
    iget-object v1, p0, Lcom/google/android/datatransport/cct/a/zzk;->zze:Ljava/lang/String;

    if-nez v1, :cond_59

    .line 15
    move-object v1, p1

    check-cast v1, Lcom/google/android/datatransport/cct/a/zzk;

    .line 16
    iget-object v1, v1, Lcom/google/android/datatransport/cct/a/zzk;->zze:Ljava/lang/String;

    if-nez v1, :cond_91

    goto :goto_64

    .line 17
    :cond_59
    move-object v3, p1

    check-cast v3, Lcom/google/android/datatransport/cct/a/zzk;

    .line 18
    iget-object v3, v3, Lcom/google/android/datatransport/cct/a/zzk;->zze:Ljava/lang/String;

    .line 19
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_91

    :goto_64
    iget-object v1, p0, Lcom/google/android/datatransport/cct/a/zzk;->zzf:Ljava/util/List;

    if-nez v1, :cond_70

    .line 20
    move-object v1, p1

    check-cast v1, Lcom/google/android/datatransport/cct/a/zzk;

    .line 21
    iget-object v1, v1, Lcom/google/android/datatransport/cct/a/zzk;->zzf:Ljava/util/List;

    if-nez v1, :cond_91

    goto :goto_7b

    .line 22
    :cond_70
    move-object v3, p1

    check-cast v3, Lcom/google/android/datatransport/cct/a/zzk;

    .line 23
    iget-object v3, v3, Lcom/google/android/datatransport/cct/a/zzk;->zzf:Ljava/util/List;

    .line 24
    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_91

    :goto_7b
    iget-object v1, p0, Lcom/google/android/datatransport/cct/a/zzk;->zzg:Lcom/google/android/datatransport/cct/a/zzu;

    if-nez v1, :cond_86

    .line 25
    check-cast p1, Lcom/google/android/datatransport/cct/a/zzk;

    .line 26
    iget-object p1, p1, Lcom/google/android/datatransport/cct/a/zzk;->zzg:Lcom/google/android/datatransport/cct/a/zzu;

    if-nez p1, :cond_91

    goto :goto_92

    .line 27
    :cond_86
    check-cast p1, Lcom/google/android/datatransport/cct/a/zzk;

    .line 28
    iget-object p1, p1, Lcom/google/android/datatransport/cct/a/zzk;->zzg:Lcom/google/android/datatransport/cct/a/zzu;

    .line 29
    invoke-virtual {v1, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_91

    goto :goto_92

    :cond_91
    const/4 v0, 0x0

    :goto_92
    return v0

    :cond_93
    return v2
.end method

.method public hashCode()I
    .registers 8

    .line 1
    iget-wide v0, p0, Lcom/google/android/datatransport/cct/a/zzk;->zza:J

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v1, v0

    const v0, 0xf4243

    xor-int/2addr v1, v0

    mul-int v1, v1, v0

    .line 2
    iget-wide v3, p0, Lcom/google/android/datatransport/cct/a/zzk;->zzb:J

    ushr-long v5, v3, v2

    xor-long/2addr v3, v5

    long-to-int v2, v3

    xor-int/2addr v1, v2

    mul-int v1, v1, v0

    .line 3
    iget-object v2, p0, Lcom/google/android/datatransport/cct/a/zzk;->zzc:Lcom/google/android/datatransport/cct/a/zzp;

    const/4 v3, 0x0

    if-nez v2, :cond_1e

    const/4 v2, 0x0

    goto :goto_22

    :cond_1e
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_22
    xor-int/2addr v1, v2

    mul-int v1, v1, v0

    .line 4
    iget-object v2, p0, Lcom/google/android/datatransport/cct/a/zzk;->zzd:Ljava/lang/Integer;

    if-nez v2, :cond_2b

    const/4 v2, 0x0

    goto :goto_2f

    :cond_2b
    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :goto_2f
    xor-int/2addr v1, v2

    mul-int v1, v1, v0

    .line 5
    iget-object v2, p0, Lcom/google/android/datatransport/cct/a/zzk;->zze:Ljava/lang/String;

    if-nez v2, :cond_38

    const/4 v2, 0x0

    goto :goto_3c

    :cond_38
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3c
    xor-int/2addr v1, v2

    mul-int v1, v1, v0

    .line 6
    iget-object v2, p0, Lcom/google/android/datatransport/cct/a/zzk;->zzf:Ljava/util/List;

    if-nez v2, :cond_45

    const/4 v2, 0x0

    goto :goto_49

    :cond_45
    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    :goto_49
    xor-int/2addr v1, v2

    mul-int v1, v1, v0

    .line 7
    iget-object v0, p0, Lcom/google/android/datatransport/cct/a/zzk;->zzg:Lcom/google/android/datatransport/cct/a/zzu;

    if-nez v0, :cond_51

    goto :goto_55

    :cond_51
    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v3

    :goto_55
    xor-int v0, v1, v3

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LogRequest{requestTimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/google/android/datatransport/cct/a/zzk;->zza:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", requestUptimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/google/android/datatransport/cct/a/zzk;->zzb:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", clientInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/datatransport/cct/a/zzk;->zzc:Lcom/google/android/datatransport/cct/a/zzp;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", logSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/datatransport/cct/a/zzk;->zzd:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", logSourceName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/datatransport/cct/a/zzk;->zze:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", logEvents="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/datatransport/cct/a/zzk;->zzf:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", qosTier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/datatransport/cct/a/zzk;->zzg:Lcom/google/android/datatransport/cct/a/zzu;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zzb()Lcom/google/android/datatransport/cct/a/zzp;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/datatransport/cct/a/zzk;->zzc:Lcom/google/android/datatransport/cct/a/zzp;

    return-object v0
.end method

.method public zzc()Ljava/util/List;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/google/firebase/encoders/annotations/Encodable$Field;
        name = "logEvent"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/datatransport/cct/a/zzq;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/datatransport/cct/a/zzk;->zzf:Ljava/util/List;

    return-object v0
.end method

.method public zzd()Ljava/lang/Integer;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/datatransport/cct/a/zzk;->zzd:Ljava/lang/Integer;

    return-object v0
.end method

.method public zze()Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/datatransport/cct/a/zzk;->zze:Ljava/lang/String;

    return-object v0
.end method

.method public zzf()Lcom/google/android/datatransport/cct/a/zzu;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/datatransport/cct/a/zzk;->zzg:Lcom/google/android/datatransport/cct/a/zzu;

    return-object v0
.end method

.method public zzg()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/google/android/datatransport/cct/a/zzk;->zza:J

    return-wide v0
.end method

.method public zzh()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/google/android/datatransport/cct/a/zzk;->zzb:J

    return-wide v0
.end method
