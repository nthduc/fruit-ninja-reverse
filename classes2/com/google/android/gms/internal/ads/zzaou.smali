.class public final Lcom/google/android/gms/internal/ads/zzaou;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"


# direct methods
.method public static zza(Lcom/google/ads/AdRequest$ErrorCode;)I
    .registers 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzaot;->zzdme:[I

    invoke-virtual {p0}, Lcom/google/ads/AdRequest$ErrorCode;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_15

    const/4 v1, 0x3

    if-eq p0, v1, :cond_14

    const/4 v0, 0x4

    if-eq p0, v0, :cond_13

    const/4 p0, 0x0

    return p0

    :cond_13
    return v1

    :cond_14
    return v0

    :cond_15
    const/4 p0, 0x1

    return p0
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzvg;Z)Lcom/google/ads/mediation/MediationAdRequest;
    .registers 9

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvg;->zzchd:Ljava/util/List;

    if-eqz v0, :cond_c

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvg;->zzchd:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    move-object v4, v0

    .line 7
    new-instance v0, Lcom/google/ads/mediation/MediationAdRequest;

    new-instance v2, Ljava/util/Date;

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzvg;->zzchb:J

    invoke-direct {v2, v5, v6}, Ljava/util/Date;-><init>(J)V

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzvg;->zzchc:I

    const/4 v3, 0x1

    if-eq v1, v3, :cond_26

    const/4 v3, 0x2

    if-eq v1, v3, :cond_23

    .line 11
    sget-object v1, Lcom/google/ads/AdRequest$Gender;->UNKNOWN:Lcom/google/ads/AdRequest$Gender;

    :goto_21
    move-object v3, v1

    goto :goto_29

    .line 9
    :cond_23
    sget-object v1, Lcom/google/ads/AdRequest$Gender;->FEMALE:Lcom/google/ads/AdRequest$Gender;

    goto :goto_21

    .line 10
    :cond_26
    sget-object v1, Lcom/google/ads/AdRequest$Gender;->MALE:Lcom/google/ads/AdRequest$Gender;

    goto :goto_21

    .line 12
    :goto_29
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzvg;->zznb:Landroid/location/Location;

    move-object v1, v0

    move v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/ads/mediation/MediationAdRequest;-><init>(Ljava/util/Date;Lcom/google/ads/AdRequest$Gender;Ljava/util/Set;ZLandroid/location/Location;)V

    return-object v0
.end method
