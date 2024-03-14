.class final Lcom/google/android/gms/internal/ads/zzdti;
.super Lcom/google/android/gms/internal/ads/zzdtd;
.source "com.google.android.gms:play-services-gass@@19.4.0"


# instance fields
.field private final zzhmg:Ljava/lang/String;

.field private final zzxj:Z

.field private final zzzf:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;ZZ)V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdtd;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdti;->zzhmg:Ljava/lang/String;

    .line 3
    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzdti;->zzxj:Z

    .line 4
    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzdti;->zzzf:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/zzdth;)V
    .registers 5

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzdti;-><init>(Ljava/lang/String;ZZ)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 12
    :cond_4
    instance-of v1, p1, Lcom/google/android/gms/internal/ads/zzdtd;

    const/4 v2, 0x0

    if-eqz v1, :cond_28

    .line 13
    check-cast p1, Lcom/google/android/gms/internal/ads/zzdtd;

    .line 14
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdti;->zzhmg:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdtd;->zzavt()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzdti;->zzxj:Z

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdtd;->zzavu()Z

    move-result v3

    if-ne v1, v3, :cond_28

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzdti;->zzzf:Z

    .line 16
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdtd;->zzcm()Z

    move-result p1

    if-ne v1, p1, :cond_28

    return v0

    :cond_28
    return v2
.end method

.method public final hashCode()I
    .registers 6

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdti;->zzhmg:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 21
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzdti;->zzxj:Z

    const/16 v3, 0x4cf

    const/16 v4, 0x4d5

    if-eqz v2, :cond_17

    const/16 v2, 0x4cf

    goto :goto_19

    :cond_17
    const/16 v2, 0x4d5

    :goto_19
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 23
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzdti;->zzzf:Z

    if-eqz v1, :cond_21

    goto :goto_23

    :cond_21
    const/16 v3, 0x4d5

    :goto_23
    xor-int/2addr v0, v3

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 6

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdti;->zzhmg:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzdti;->zzxj:Z

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzdti;->zzzf:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x63

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "AdShield2Options{clientVersion="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", shouldGetAdvertisingId="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isGooglePlayServicesAvailable="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzavt()Ljava/lang/String;
    .registers 2

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdti;->zzhmg:Ljava/lang/String;

    return-object v0
.end method

.method public final zzavu()Z
    .registers 2

    .line 7
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdti;->zzxj:Z

    return v0
.end method

.method public final zzcm()Z
    .registers 2

    .line 8
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdti;->zzzf:Z

    return v0
.end method
