.class final Lcom/google/android/gms/internal/ads/zzeay;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# static fields
.field private static final UTF_8:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "UTF-8"

    .line 41
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzeay;->UTF_8:Ljava/nio/charset/Charset;

    return-void
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzefj;)Lcom/google/android/gms/internal/ads/zzefm;
    .registers 5

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzefm;->zzbco()Lcom/google/android/gms/internal/ads/zzefm$zzb;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzefj;->zzbcg()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzefm$zzb;->zzfi(I)Lcom/google/android/gms/internal/ads/zzefm$zzb;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzefj;->zzbch()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_54

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzefj$zzb;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzefm$zza;->zzbcq()Lcom/google/android/gms/internal/ads/zzefm$zza$zza;

    move-result-object v2

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzefj$zzb;->zzbcl()Lcom/google/android/gms/internal/ads/zzefb;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzefb;->zzbbt()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzefm$zza$zza;->zzhr(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzefm$zza$zza;

    move-result-object v2

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzefj$zzb;->zzayu()Lcom/google/android/gms/internal/ads/zzefc;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzefm$zza$zza;->zzb(Lcom/google/android/gms/internal/ads/zzefc;)Lcom/google/android/gms/internal/ads/zzefm$zza$zza;

    move-result-object v2

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzefj$zzb;->zzayv()Lcom/google/android/gms/internal/ads/zzefv;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzefm$zza$zza;->zzb(Lcom/google/android/gms/internal/ads/zzefv;)Lcom/google/android/gms/internal/ads/zzefm$zza$zza;

    move-result-object v2

    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzefj$zzb;->zzbcm()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzefm$zza$zza;->zzfj(I)Lcom/google/android/gms/internal/ads/zzefm$zza$zza;

    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zzbgt()Lcom/google/android/gms/internal/ads/zzelj;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzejz;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzefm$zza;

    .line 10
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzefm$zzb;->zzb(Lcom/google/android/gms/internal/ads/zzefm$zza;)Lcom/google/android/gms/internal/ads/zzefm$zzb;

    goto :goto_14

    .line 12
    :cond_54
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zzbgt()Lcom/google/android/gms/internal/ads/zzelj;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzejz;

    check-cast p0, Lcom/google/android/gms/internal/ads/zzefm;

    return-object p0
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzefj;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzefj;->zzbcg()I

    move-result v0

    .line 17
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzefj;->zzbch()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    :cond_11
    :goto_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/ads/zzefj$zzb;

    .line 18
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzefj$zzb;->zzayu()Lcom/google/android/gms/internal/ads/zzefc;

    move-result-object v7

    sget-object v8, Lcom/google/android/gms/internal/ads/zzefc;->zzhzt:Lcom/google/android/gms/internal/ads/zzefc;

    if-ne v7, v8, :cond_11

    .line 20
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzefj$zzb;->zzbck()Z

    move-result v7

    if-eqz v7, :cond_8d

    .line 22
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzefj$zzb;->zzayv()Lcom/google/android/gms/internal/ads/zzefv;

    move-result-object v7

    sget-object v8, Lcom/google/android/gms/internal/ads/zzefv;->zziay:Lcom/google/android/gms/internal/ads/zzefv;

    if-eq v7, v8, :cond_75

    .line 25
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzefj$zzb;->zzayu()Lcom/google/android/gms/internal/ads/zzefc;

    move-result-object v7

    sget-object v8, Lcom/google/android/gms/internal/ads/zzefc;->zzhzs:Lcom/google/android/gms/internal/ads/zzefc;

    if-eq v7, v8, :cond_5d

    .line 28
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzefj$zzb;->zzbcm()I

    move-result v7

    if-ne v7, v0, :cond_4d

    if-nez v4, :cond_45

    const/4 v4, 0x1

    goto :goto_4d

    .line 30
    :cond_45
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "keyset contains multiple primary keys"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 32
    :cond_4d
    :goto_4d
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzefj$zzb;->zzbcl()Lcom/google/android/gms/internal/ads/zzefb;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzefb;->zzbbv()Lcom/google/android/gms/internal/ads/zzefb$zza;

    move-result-object v6

    sget-object v7, Lcom/google/android/gms/internal/ads/zzefb$zza;->zzhzo:Lcom/google/android/gms/internal/ads/zzefb$zza;

    if-eq v6, v7, :cond_5a

    const/4 v5, 0x0

    :cond_5a
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 26
    :cond_5d
    new-instance p0, Ljava/security/GeneralSecurityException;

    new-array v0, v1, [Ljava/lang/Object;

    .line 27
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzefj$zzb;->zzbcm()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "key %d has unknown status"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 23
    :cond_75
    new-instance p0, Ljava/security/GeneralSecurityException;

    new-array v0, v1, [Ljava/lang/Object;

    .line 24
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzefj$zzb;->zzbcm()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "key %d has unknown prefix"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 21
    :cond_8d
    new-instance p0, Ljava/security/GeneralSecurityException;

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzefj$zzb;->zzbcm()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "key %d has no key data"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a5
    if-eqz v3, :cond_b5

    if-nez v4, :cond_b4

    if-eqz v5, :cond_ac

    goto :goto_b4

    .line 39
    :cond_ac
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "keyset doesn\'t contain a valid primary key"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b4
    :goto_b4
    return-void

    .line 37
    :cond_b5
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "keyset must contain at least one ENABLED key"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    return-void
.end method
