.class public final Lcom/google/android/gms/internal/ads/zzeal;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public static final zzl([B)Lcom/google/android/gms/internal/ads/zzeah;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzejm;->zzbft()Lcom/google/android/gms/internal/ads/zzejm;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzefj;->zzc([BLcom/google/android/gms/internal/ads/zzejm;)Lcom/google/android/gms/internal/ads/zzefj;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzefj;->zzbch()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_49

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzefj$zzb;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzefj$zzb;->zzbcl()Lcom/google/android/gms/internal/ads/zzefb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzefb;->zzbbv()Lcom/google/android/gms/internal/ads/zzefb$zza;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/ads/zzefb$zza;->zzhzl:Lcom/google/android/gms/internal/ads/zzefb$zza;

    if-eq v2, v3, :cond_41

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzefj$zzb;->zzbcl()Lcom/google/android/gms/internal/ads/zzefb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzefb;->zzbbv()Lcom/google/android/gms/internal/ads/zzefb$zza;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/ads/zzefb$zza;->zzhzm:Lcom/google/android/gms/internal/ads/zzefb$zza;

    if-eq v2, v3, :cond_41

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzefj$zzb;->zzbcl()Lcom/google/android/gms/internal/ads/zzefb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzefb;->zzbbv()Lcom/google/android/gms/internal/ads/zzefb$zza;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzefb$zza;->zzhzn:Lcom/google/android/gms/internal/ads/zzefb$zza;

    if-eq v1, v2, :cond_41

    goto :goto_10

    .line 7
    :cond_41
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "keyset contains secret key material"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 9
    :cond_49
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzeah;->zza(Lcom/google/android/gms/internal/ads/zzefj;)Lcom/google/android/gms/internal/ads/zzeah;

    move-result-object p0
    :try_end_4d
    .catch Lcom/google/android/gms/internal/ads/zzekj; {:try_start_0 .. :try_end_4d} :catch_4e

    return-object p0

    .line 11
    :catch_4e
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "invalid keyset"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    return-void
.end method
