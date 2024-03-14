.class public final Lcom/google/android/gms/internal/ads/zzbc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# direct methods
.method public static zzb(Lcom/google/android/gms/internal/ads/zzy;)Lcom/google/android/gms/internal/ads/zzn;
    .registers 19
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    move-object/from16 v0, p0

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 2
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzy;->zzam:Ljava/util/Map;

    const/4 v4, 0x0

    if-nez v3, :cond_c

    return-object v4

    :cond_c
    const-string v5, "Date"

    .line 14
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_1b

    .line 16
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzbc;->zzg(Ljava/lang/String;)J

    move-result-wide v8

    goto :goto_1d

    :cond_1b
    const-wide/16 v8, 0x0

    :goto_1d
    const-string v5, "Cache-Control"

    .line 17
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/4 v11, 0x0

    if-eqz v5, :cond_8c

    const-string v12, ","

    .line 20
    invoke-virtual {v5, v12, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    .line 21
    :goto_33
    array-length v10, v5

    if-ge v11, v10, :cond_88

    .line 22
    aget-object v10, v5, v11

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    const-string v6, "no-cache"

    .line 23
    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_87

    const-string v6, "no-store"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4d

    goto :goto_87

    :cond_4d
    const-string v6, "max-age="

    .line 25
    invoke-virtual {v10, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_60

    const/16 v6, 0x8

    .line 26
    :try_start_57
    invoke-virtual {v10, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_5f} :catch_84

    goto :goto_84

    :cond_60
    const-string v6, "stale-while-revalidate="

    .line 30
    invoke-virtual {v10, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_73

    const/16 v6, 0x17

    .line 31
    :try_start_6a
    invoke-virtual {v10, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v15
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_72} :catch_84

    goto :goto_84

    :cond_73
    const-string v6, "must-revalidate"

    .line 35
    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_83

    const-string v6, "proxy-revalidate"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_84

    :cond_83
    const/4 v14, 0x1

    :catch_84
    :cond_84
    :goto_84
    add-int/lit8 v11, v11, 0x1

    goto :goto_33

    :cond_87
    :goto_87
    return-object v4

    :cond_88
    move v11, v14

    const/16 v17, 0x1

    goto :goto_92

    :cond_8c
    const-wide/16 v12, 0x0

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    :goto_92
    const-string v4, "Expires"

    .line 38
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_a1

    .line 40
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzbc;->zzg(Ljava/lang/String;)J

    move-result-wide v6

    goto :goto_a3

    :cond_a1
    const-wide/16 v6, 0x0

    :goto_a3
    const-string v4, "Last-Modified"

    .line 41
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_b2

    .line 43
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzbc;->zzg(Ljava/lang/String;)J

    move-result-wide v4

    goto :goto_b4

    :cond_b2
    const-wide/16 v4, 0x0

    :goto_b4
    const-string v10, "ETag"

    .line 44
    invoke-interface {v3, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    if-eqz v17, :cond_ce

    const-wide/16 v6, 0x3e8

    mul-long v12, v12, v6

    add-long/2addr v1, v12

    if-eqz v11, :cond_c6

    goto :goto_dd

    .line 47
    :cond_c6
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->signum(J)I

    mul-long v15, v15, v6

    add-long/2addr v15, v1

    move-wide v6, v15

    goto :goto_de

    :cond_ce
    const-wide/16 v11, 0x0

    cmp-long v13, v8, v11

    if-lez v13, :cond_dc

    cmp-long v13, v6, v8

    if-ltz v13, :cond_dc

    sub-long/2addr v6, v8

    add-long/2addr v6, v1

    move-wide v1, v6

    goto :goto_de

    :cond_dc
    move-wide v1, v11

    :goto_dd
    move-wide v6, v1

    .line 51
    :goto_de
    new-instance v11, Lcom/google/android/gms/internal/ads/zzn;

    invoke-direct {v11}, Lcom/google/android/gms/internal/ads/zzn;-><init>()V

    .line 52
    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzy;->data:[B

    iput-object v12, v11, Lcom/google/android/gms/internal/ads/zzn;->data:[B

    .line 53
    iput-object v10, v11, Lcom/google/android/gms/internal/ads/zzn;->zzr:Ljava/lang/String;

    .line 54
    iput-wide v1, v11, Lcom/google/android/gms/internal/ads/zzn;->zzv:J

    .line 55
    iput-wide v6, v11, Lcom/google/android/gms/internal/ads/zzn;->zzu:J

    .line 56
    iput-wide v8, v11, Lcom/google/android/gms/internal/ads/zzn;->zzs:J

    .line 57
    iput-wide v4, v11, Lcom/google/android/gms/internal/ads/zzn;->zzt:J

    .line 58
    iput-object v3, v11, Lcom/google/android/gms/internal/ads/zzn;->zzw:Ljava/util/Map;

    .line 59
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzy;->allHeaders:Ljava/util/List;

    iput-object v0, v11, Lcom/google/android/gms/internal/ads/zzn;->zzx:Ljava/util/List;

    return-object v11
.end method

.method static zzb(J)Ljava/lang/String;
    .registers 4

    const-string v0, "EEE, dd MMM yyyy HH:mm:ss \'GMT\'"

    .line 68
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbc;->zzh(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static zzg(Ljava/lang/String;)J
    .registers 6

    :try_start_0
    const-string v0, "EEE, dd MMM yyyy HH:mm:ss zzz"

    .line 61
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbc;->zzh(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0
    :try_end_e
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_e} :catch_f

    return-wide v0

    :catch_f
    move-exception v0

    const-string v1, "Unable to parse dateStr: %s, falling back to 0"

    const-string v2, "0"

    .line 64
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_2d

    const-string v2, "-1"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    goto :goto_2d

    .line 66
    :cond_25
    new-array v2, v4, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzaq;->zza(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_34

    .line 65
    :cond_2d
    :goto_2d
    new-array v0, v4, [Ljava/lang/Object;

    aput-object p0, v0, v3

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaq;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_34
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private static zzh(Ljava/lang/String;)Ljava/text/SimpleDateFormat;
    .registers 3

    .line 69
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, p0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string p0, "GMT"

    .line 70
    invoke-static {p0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-object v0
.end method
