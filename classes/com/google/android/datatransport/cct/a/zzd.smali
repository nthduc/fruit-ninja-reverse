.class final Lcom/google/android/datatransport/cct/a/zzd;
.super Lcom/google/android/datatransport/cct/a/zza;
.source "com.google.android.datatransport:transport-backend-cct@@2.2.1"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/datatransport/cct/a/zzd$zza;
    }
.end annotation


# instance fields
.field private final zza:Ljava/lang/Integer;

.field private final zzb:Ljava/lang/String;

.field private final zzc:Ljava/lang/String;

.field private final zzd:Ljava/lang/String;

.field private final zze:Ljava/lang/String;

.field private final zzf:Ljava/lang/String;

.field private final zzg:Ljava/lang/String;

.field private final zzh:Ljava/lang/String;


# direct methods
.method synthetic constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/datatransport/cct/a/zzc;)V
    .registers 10

    .line 1
    invoke-direct {p0}, Lcom/google/android/datatransport/cct/a/zza;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/datatransport/cct/a/zzd;->zza:Ljava/lang/Integer;

    .line 3
    iput-object p2, p0, Lcom/google/android/datatransport/cct/a/zzd;->zzb:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/google/android/datatransport/cct/a/zzd;->zzc:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/google/android/datatransport/cct/a/zzd;->zzd:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/google/android/datatransport/cct/a/zzd;->zze:Ljava/lang/String;

    .line 7
    iput-object p6, p0, Lcom/google/android/datatransport/cct/a/zzd;->zzf:Ljava/lang/String;

    .line 8
    iput-object p7, p0, Lcom/google/android/datatransport/cct/a/zzd;->zzg:Ljava/lang/String;

    .line 9
    iput-object p8, p0, Lcom/google/android/datatransport/cct/a/zzd;->zzh:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Lcom/google/android/datatransport/cct/a/zza;

    const/4 v2, 0x0

    if-eqz v1, :cond_c2

    .line 2
    iget-object v1, p0, Lcom/google/android/datatransport/cct/a/zzd;->zza:Ljava/lang/Integer;

    if-nez v1, :cond_15

    move-object v1, p1

    check-cast v1, Lcom/google/android/datatransport/cct/a/zzd;

    .line 3
    iget-object v1, v1, Lcom/google/android/datatransport/cct/a/zzd;->zza:Ljava/lang/Integer;

    if-nez v1, :cond_c0

    goto :goto_20

    .line 4
    :cond_15
    move-object v3, p1

    check-cast v3, Lcom/google/android/datatransport/cct/a/zzd;

    .line 5
    iget-object v3, v3, Lcom/google/android/datatransport/cct/a/zzd;->zza:Ljava/lang/Integer;

    .line 6
    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c0

    :goto_20
    iget-object v1, p0, Lcom/google/android/datatransport/cct/a/zzd;->zzb:Ljava/lang/String;

    if-nez v1, :cond_2c

    .line 7
    move-object v1, p1

    check-cast v1, Lcom/google/android/datatransport/cct/a/zzd;

    .line 8
    iget-object v1, v1, Lcom/google/android/datatransport/cct/a/zzd;->zzb:Ljava/lang/String;

    if-nez v1, :cond_c0

    goto :goto_37

    .line 9
    :cond_2c
    move-object v3, p1

    check-cast v3, Lcom/google/android/datatransport/cct/a/zzd;

    .line 10
    iget-object v3, v3, Lcom/google/android/datatransport/cct/a/zzd;->zzb:Ljava/lang/String;

    .line 11
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c0

    :goto_37
    iget-object v1, p0, Lcom/google/android/datatransport/cct/a/zzd;->zzc:Ljava/lang/String;

    if-nez v1, :cond_43

    .line 12
    move-object v1, p1

    check-cast v1, Lcom/google/android/datatransport/cct/a/zzd;

    .line 13
    iget-object v1, v1, Lcom/google/android/datatransport/cct/a/zzd;->zzc:Ljava/lang/String;

    if-nez v1, :cond_c0

    goto :goto_4e

    .line 14
    :cond_43
    move-object v3, p1

    check-cast v3, Lcom/google/android/datatransport/cct/a/zzd;

    .line 15
    iget-object v3, v3, Lcom/google/android/datatransport/cct/a/zzd;->zzc:Ljava/lang/String;

    .line 16
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c0

    :goto_4e
    iget-object v1, p0, Lcom/google/android/datatransport/cct/a/zzd;->zzd:Ljava/lang/String;

    if-nez v1, :cond_5a

    .line 17
    move-object v1, p1

    check-cast v1, Lcom/google/android/datatransport/cct/a/zzd;

    .line 18
    iget-object v1, v1, Lcom/google/android/datatransport/cct/a/zzd;->zzd:Ljava/lang/String;

    if-nez v1, :cond_c0

    goto :goto_65

    .line 19
    :cond_5a
    move-object v3, p1

    check-cast v3, Lcom/google/android/datatransport/cct/a/zzd;

    .line 20
    iget-object v3, v3, Lcom/google/android/datatransport/cct/a/zzd;->zzd:Ljava/lang/String;

    .line 21
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c0

    :goto_65
    iget-object v1, p0, Lcom/google/android/datatransport/cct/a/zzd;->zze:Ljava/lang/String;

    if-nez v1, :cond_71

    .line 22
    move-object v1, p1

    check-cast v1, Lcom/google/android/datatransport/cct/a/zzd;

    .line 23
    iget-object v1, v1, Lcom/google/android/datatransport/cct/a/zzd;->zze:Ljava/lang/String;

    if-nez v1, :cond_c0

    goto :goto_7c

    .line 24
    :cond_71
    move-object v3, p1

    check-cast v3, Lcom/google/android/datatransport/cct/a/zzd;

    .line 25
    iget-object v3, v3, Lcom/google/android/datatransport/cct/a/zzd;->zze:Ljava/lang/String;

    .line 26
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c0

    :goto_7c
    iget-object v1, p0, Lcom/google/android/datatransport/cct/a/zzd;->zzf:Ljava/lang/String;

    if-nez v1, :cond_88

    .line 27
    move-object v1, p1

    check-cast v1, Lcom/google/android/datatransport/cct/a/zzd;

    .line 28
    iget-object v1, v1, Lcom/google/android/datatransport/cct/a/zzd;->zzf:Ljava/lang/String;

    if-nez v1, :cond_c0

    goto :goto_93

    .line 29
    :cond_88
    move-object v3, p1

    check-cast v3, Lcom/google/android/datatransport/cct/a/zzd;

    .line 30
    iget-object v3, v3, Lcom/google/android/datatransport/cct/a/zzd;->zzf:Ljava/lang/String;

    .line 31
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c0

    :goto_93
    iget-object v1, p0, Lcom/google/android/datatransport/cct/a/zzd;->zzg:Ljava/lang/String;

    if-nez v1, :cond_9f

    .line 32
    move-object v1, p1

    check-cast v1, Lcom/google/android/datatransport/cct/a/zzd;

    .line 33
    iget-object v1, v1, Lcom/google/android/datatransport/cct/a/zzd;->zzg:Ljava/lang/String;

    if-nez v1, :cond_c0

    goto :goto_aa

    .line 34
    :cond_9f
    move-object v3, p1

    check-cast v3, Lcom/google/android/datatransport/cct/a/zzd;

    .line 35
    iget-object v3, v3, Lcom/google/android/datatransport/cct/a/zzd;->zzg:Ljava/lang/String;

    .line 36
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c0

    :goto_aa
    iget-object v1, p0, Lcom/google/android/datatransport/cct/a/zzd;->zzh:Ljava/lang/String;

    if-nez v1, :cond_b5

    .line 37
    check-cast p1, Lcom/google/android/datatransport/cct/a/zzd;

    .line 38
    iget-object p1, p1, Lcom/google/android/datatransport/cct/a/zzd;->zzh:Ljava/lang/String;

    if-nez p1, :cond_c0

    goto :goto_c1

    .line 39
    :cond_b5
    check-cast p1, Lcom/google/android/datatransport/cct/a/zzd;

    .line 40
    iget-object p1, p1, Lcom/google/android/datatransport/cct/a/zzd;->zzh:Ljava/lang/String;

    .line 41
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c0

    goto :goto_c1

    :cond_c0
    const/4 v0, 0x0

    :goto_c1
    return v0

    :cond_c2
    return v2
.end method

.method public hashCode()I
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/datatransport/cct/a/zzd;->zza:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_b
    const v2, 0xf4243

    xor-int/2addr v0, v2

    mul-int v0, v0, v2

    .line 2
    iget-object v3, p0, Lcom/google/android/datatransport/cct/a/zzd;->zzb:Ljava/lang/String;

    if-nez v3, :cond_17

    const/4 v3, 0x0

    goto :goto_1b

    :cond_17
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1b
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 3
    iget-object v3, p0, Lcom/google/android/datatransport/cct/a/zzd;->zzc:Ljava/lang/String;

    if-nez v3, :cond_24

    const/4 v3, 0x0

    goto :goto_28

    :cond_24
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_28
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 4
    iget-object v3, p0, Lcom/google/android/datatransport/cct/a/zzd;->zzd:Ljava/lang/String;

    if-nez v3, :cond_31

    const/4 v3, 0x0

    goto :goto_35

    :cond_31
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_35
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 5
    iget-object v3, p0, Lcom/google/android/datatransport/cct/a/zzd;->zze:Ljava/lang/String;

    if-nez v3, :cond_3e

    const/4 v3, 0x0

    goto :goto_42

    :cond_3e
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_42
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 6
    iget-object v3, p0, Lcom/google/android/datatransport/cct/a/zzd;->zzf:Ljava/lang/String;

    if-nez v3, :cond_4b

    const/4 v3, 0x0

    goto :goto_4f

    :cond_4b
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_4f
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 7
    iget-object v3, p0, Lcom/google/android/datatransport/cct/a/zzd;->zzg:Ljava/lang/String;

    if-nez v3, :cond_58

    const/4 v3, 0x0

    goto :goto_5c

    :cond_58
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_5c
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 8
    iget-object v2, p0, Lcom/google/android/datatransport/cct/a/zzd;->zzh:Ljava/lang/String;

    if-nez v2, :cond_64

    goto :goto_68

    :cond_64
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_68
    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AndroidClientInfo{sdkVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/datatransport/cct/a/zzd;->zza:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", model="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/datatransport/cct/a/zzd;->zzb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", hardware="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/datatransport/cct/a/zzd;->zzc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", device="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/datatransport/cct/a/zzd;->zzd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", product="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/datatransport/cct/a/zzd;->zze:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", osBuild="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/datatransport/cct/a/zzd;->zzf:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", manufacturer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/datatransport/cct/a/zzd;->zzg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fingerprint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/datatransport/cct/a/zzd;->zzh:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zzb()Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/datatransport/cct/a/zzd;->zzd:Ljava/lang/String;

    return-object v0
.end method

.method public zzc()Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/datatransport/cct/a/zzd;->zzh:Ljava/lang/String;

    return-object v0
.end method

.method public zzd()Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/datatransport/cct/a/zzd;->zzc:Ljava/lang/String;

    return-object v0
.end method

.method public zze()Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/datatransport/cct/a/zzd;->zzg:Ljava/lang/String;

    return-object v0
.end method

.method public zzf()Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/datatransport/cct/a/zzd;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method public zzg()Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/datatransport/cct/a/zzd;->zzf:Ljava/lang/String;

    return-object v0
.end method

.method public zzh()Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/datatransport/cct/a/zzd;->zze:Ljava/lang/String;

    return-object v0
.end method

.method public zzi()Ljava/lang/Integer;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/datatransport/cct/a/zzd;->zza:Ljava/lang/Integer;

    return-object v0
.end method
