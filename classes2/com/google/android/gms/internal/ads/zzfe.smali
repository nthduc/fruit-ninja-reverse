.class final Lcom/google/android/gms/internal/ads/zzfe;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# static fields
.field static zzaaa:Lcom/google/android/gms/internal/ads/zzeac;


# direct methods
.method static zzb(Lcom/google/android/gms/internal/ads/zzex;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfe;->zzaaa:Lcom/google/android/gms/internal/ads/zzeac;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    .line 3
    :cond_6
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabb;->zzcrd:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 5
    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_1c

    .line 6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_37

    :cond_1c
    if-nez p0, :cond_20

    :goto_1e
    move-object v0, v2

    goto :goto_34

    :cond_20
    const-string v0, "TkuK+8ZKbIcxeUe4msY7eeifKf/tICuqqRvwzwQUhsKM0HemvJhBrPQYp0qpvgcE"

    const-string v4, "eNJuSXkridnHpFkTgNBQFH0ivDH801goaJfT5bONEac="

    .line 13
    invoke-virtual {p0, v0, v4}, Lcom/google/android/gms/internal/ads/zzex;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object p0

    if-nez p0, :cond_2b

    goto :goto_1e

    .line 16
    :cond_2b
    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    move-object v0, p0

    :goto_34
    if-nez v0, :cond_37

    return v3

    .line 20
    :cond_37
    :try_start_37
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzcv;->zzb(Ljava/lang/String;Z)[B

    move-result-object p0
    :try_end_3b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_37 .. :try_end_3b} :catch_120

    .line 24
    :try_start_3b
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzeal;->zzl([B)Lcom/google/android/gms/internal/ads/zzeah;

    move-result-object p0

    .line 25
    sget-object v0, Lcom/google/android/gms/internal/ads/zzece;->zzhvl:Lcom/google/android/gms/internal/ads/zzefw;

    .line 26
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzefw;->zzbdf()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_49
    :goto_49
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_115

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzefi;

    .line 29
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzefi;->zzbbt()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_10d

    .line 31
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzefi;->zzbcb()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_105

    .line 33
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzefi;->zzbce()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_fd

    .line 35
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzefi;->zzbce()Ljava/lang/String;

    move-result-object v5

    const-string v6, "TinkAead"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_49

    .line 36
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzefi;->zzbce()Ljava/lang/String;

    move-result-object v5

    const-string v6, "TinkMac"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_49

    .line 37
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzefi;->zzbce()Ljava/lang/String;

    move-result-object v5

    const-string v6, "TinkHybridDecrypt"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_49

    .line 38
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzefi;->zzbce()Ljava/lang/String;

    move-result-object v5

    const-string v6, "TinkHybridEncrypt"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_49

    .line 39
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzefi;->zzbce()Ljava/lang/String;

    move-result-object v5

    const-string v6, "TinkPublicKeySign"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_49

    .line 40
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzefi;->zzbce()Ljava/lang/String;

    move-result-object v5

    const-string v6, "TinkPublicKeyVerify"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_49

    .line 41
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzefi;->zzbce()Ljava/lang/String;

    move-result-object v5

    const-string v6, "TinkStreamingAead"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_49

    .line 42
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzefi;->zzbce()Ljava/lang/String;

    move-result-object v5

    const-string v6, "TinkDeterministicAead"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d5

    goto/16 :goto_49

    .line 44
    :cond_d5
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzefi;->zzbce()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzear;->zzhn(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdzy;

    move-result-object v5

    .line 45
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzdzy;->zzayj()Lcom/google/android/gms/internal/ads/zzeaq;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzear;->zza(Lcom/google/android/gms/internal/ads/zzeaq;)V

    .line 47
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzefi;->zzbbt()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzefi;->zzbcb()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzefi;->zzbcc()I

    move-result v8

    .line 48
    invoke-interface {v5, v6, v7, v8}, Lcom/google/android/gms/internal/ads/zzdzy;->zzb(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/internal/ads/zzeab;

    move-result-object v5

    .line 49
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzefi;->zzbcd()Z

    move-result v4

    invoke-static {v5, v4}, Lcom/google/android/gms/internal/ads/zzear;->zza(Lcom/google/android/gms/internal/ads/zzeab;Z)V

    goto/16 :goto_49

    .line 34
    :cond_fd
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Missing catalogue_name."

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 32
    :cond_105
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Missing primitive_name."

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 30
    :cond_10d
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Missing type_url."

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 52
    :cond_115
    invoke-static {p0, v2}, Lcom/google/android/gms/internal/ads/zzeci;->zza(Lcom/google/android/gms/internal/ads/zzeah;Lcom/google/android/gms/internal/ads/zzeab;)Lcom/google/android/gms/internal/ads/zzeac;

    move-result-object p0

    .line 53
    sput-object p0, Lcom/google/android/gms/internal/ads/zzfe;->zzaaa:Lcom/google/android/gms/internal/ads/zzeac;
    :try_end_11b
    .catch Ljava/security/GeneralSecurityException; {:try_start_3b .. :try_end_11b} :catch_120

    .line 57
    sget-object p0, Lcom/google/android/gms/internal/ads/zzfe;->zzaaa:Lcom/google/android/gms/internal/ads/zzeac;

    if-eqz p0, :cond_120

    return v1

    :catch_120
    :cond_120
    return v3
.end method
