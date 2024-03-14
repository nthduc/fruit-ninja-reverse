.class final Lcom/google/android/gms/internal/ads/zzecj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# direct methods
.method public static zza(Lcom/google/android/gms/internal/ads/zzeec;)Lcom/google/android/gms/internal/ads/zzegz;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 17
    sget-object v0, Lcom/google/android/gms/internal/ads/zzecm;->zzhwm:[I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeec;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3c

    const/4 v1, 0x2

    if-eq v0, v1, :cond_39

    const/4 v1, 0x3

    if-ne v0, v1, :cond_14

    .line 20
    sget-object p0, Lcom/google/android/gms/internal/ads/zzegz;->zzicp:Lcom/google/android/gms/internal/ads/zzegz;

    return-object p0

    .line 21
    :cond_14
    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x16

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "unknown point format: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19
    :cond_39
    sget-object p0, Lcom/google/android/gms/internal/ads/zzegz;->zzicq:Lcom/google/android/gms/internal/ads/zzegz;

    return-object p0

    .line 18
    :cond_3c
    sget-object p0, Lcom/google/android/gms/internal/ads/zzegz;->zzico:Lcom/google/android/gms/internal/ads/zzegz;

    return-object p0
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzeeq;)Lcom/google/android/gms/internal/ads/zzeha;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 12
    sget-object v0, Lcom/google/android/gms/internal/ads/zzecm;->zzhwl:[I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeeq;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3c

    const/4 v1, 0x2

    if-eq v0, v1, :cond_39

    const/4 v1, 0x3

    if-ne v0, v1, :cond_14

    .line 15
    sget-object p0, Lcom/google/android/gms/internal/ads/zzeha;->zzicu:Lcom/google/android/gms/internal/ads/zzeha;

    return-object p0

    .line 16
    :cond_14
    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x14

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "unknown curve type: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14
    :cond_39
    sget-object p0, Lcom/google/android/gms/internal/ads/zzeha;->zzict:Lcom/google/android/gms/internal/ads/zzeha;

    return-object p0

    .line 13
    :cond_3c
    sget-object p0, Lcom/google/android/gms/internal/ads/zzeha;->zzics:Lcom/google/android/gms/internal/ads/zzeha;

    return-object p0
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzeer;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/google/android/gms/internal/ads/zzecm;->zzhwk:[I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeer;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3c

    const/4 v1, 0x2

    if-eq v0, v1, :cond_39

    const/4 v1, 0x3

    if-ne v0, v1, :cond_14

    const-string p0, "HmacSha512"

    return-object p0

    .line 11
    :cond_14
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "hash unsupported for HMAC: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_39
    const-string p0, "HmacSha256"

    return-object p0

    :cond_3c
    const-string p0, "HmacSha1"

    return-object p0
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzeei;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeei;->zzbas()Lcom/google/android/gms/internal/ads/zzeep;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeep;->zzbbf()Lcom/google/android/gms/internal/ads/zzeeq;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzecj;->zza(Lcom/google/android/gms/internal/ads/zzeeq;)Lcom/google/android/gms/internal/ads/zzeha;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzegy;->zza(Lcom/google/android/gms/internal/ads/zzeha;)Ljava/security/spec/ECParameterSpec;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeei;->zzbas()Lcom/google/android/gms/internal/ads/zzeep;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeep;->zzbbg()Lcom/google/android/gms/internal/ads/zzeer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzecj;->zza(Lcom/google/android/gms/internal/ads/zzeer;)Ljava/lang/String;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeei;->zzbau()Lcom/google/android/gms/internal/ads/zzeec;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzeec;->zzhxr:Lcom/google/android/gms/internal/ads/zzeec;

    if-eq v0, v1, :cond_2e

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeei;->zzbat()Lcom/google/android/gms/internal/ads/zzeed;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeed;->zzban()Lcom/google/android/gms/internal/ads/zzefe;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzear;->zza(Lcom/google/android/gms/internal/ads/zzefe;)Lcom/google/android/gms/internal/ads/zzefb;

    return-void

    .line 4
    :cond_2e
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "unknown EC point format"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
