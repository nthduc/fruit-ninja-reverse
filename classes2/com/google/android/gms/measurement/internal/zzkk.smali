.class public final Lcom/google/android/gms/measurement/internal/zzkk;
.super Lcom/google/android/gms/measurement/internal/zzkd;
.source "com.google.android.gms:play-services-measurement@@17.4.1"


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzkg;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzkd;-><init>(Lcom/google/android/gms/measurement/internal/zzkg;)V

    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;Ljava/lang/String;)I
    .registers 5

    const/4 v0, -0x1

    if-nez p0, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    .line 540
    :goto_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;->zze()I

    move-result v2

    if-ge v1, v2, :cond_1d

    .line 541
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;->zzd(I)Lcom/google/android/gms/internal/measurement/zzbw$zzk;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbw$zzk;->zzc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    return v1

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_1d
    return v0
.end method

.method static zza(Lcom/google/android/gms/internal/measurement/zzbw$zzc;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbw$zze;
    .registers 4

    .line 27
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzbw$zzc;->zza()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzbw$zze;

    .line 28
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzbw$zze;->zzb()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    return-object v0

    :cond_1f
    const/4 p0, 0x0

    return-object p0
.end method

.method static zza(Lcom/google/android/gms/internal/measurement/zzgs;[B)Lcom/google/android/gms/internal/measurement/zzgs;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Builder::",
            "Lcom/google/android/gms/internal/measurement/zzgs;",
            ">(TBuilder;[B)TBuilder;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzft;
        }
    .end annotation

    .line 534
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzev;->zzb()Lcom/google/android/gms/internal/measurement/zzev;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 536
    invoke-interface {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzgs;->zza([BLcom/google/android/gms/internal/measurement/zzev;)Lcom/google/android/gms/internal/measurement/zzgs;

    move-result-object p0

    return-object p0

    .line 537
    :cond_b
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/measurement/zzgs;->zza([B)Lcom/google/android/gms/internal/measurement/zzgs;

    move-result-object p0

    return-object p0
.end method

.method private static zza(ZZZ)Ljava/lang/String;
    .registers 4

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_c

    const-string p0, "Dynamic "

    .line 257
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    if-eqz p1, :cond_13

    const-string p0, "Sequence "

    .line 259
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_13
    if-eqz p2, :cond_1a

    const-string p0, "Session-Scoped "

    .line 261
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    :cond_1a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static zza(Ljava/util/BitSet;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/BitSet;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 445
    invoke-virtual {p0}, Ljava/util/BitSet;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x3f

    const/16 v1, 0x40

    div-int/2addr v0, v1

    .line 446
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_10
    if-ge v4, v0, :cond_38

    const-wide/16 v5, 0x0

    move-wide v6, v5

    const/4 v5, 0x0

    :goto_16
    if-ge v5, v1, :cond_2e

    shl-int/lit8 v8, v4, 0x6

    add-int/2addr v8, v5

    .line 450
    invoke-virtual {p0}, Ljava/util/BitSet;->length()I

    move-result v9

    if-ge v8, v9, :cond_2e

    .line 451
    invoke-virtual {p0, v8}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-eqz v8, :cond_2b

    const-wide/16 v8, 0x1

    shl-long/2addr v8, v5

    or-long/2addr v6, v8

    :cond_2b
    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    .line 454
    :cond_2e
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    :cond_38
    return-object v2
.end method

.method private static zza([Landroid/os/Bundle;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzbw$zze;",
            ">;"
        }
    .end annotation

    .line 545
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 546
    array-length v1, p0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_6e

    aget-object v3, p0, v2

    if-eqz v3, :cond_6b

    .line 548
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzbw$zze;->zzk()Lcom/google/android/gms/internal/measurement/zzbw$zze$zza;

    move-result-object v4

    .line 549
    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_19
    :goto_19
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 550
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzbw$zze;->zzk()Lcom/google/android/gms/internal/measurement/zzbw$zze$zza;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/measurement/zzbw$zze$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbw$zze$zza;

    move-result-object v7

    .line 551
    invoke-virtual {v3, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 552
    instance-of v8, v6, Ljava/lang/Long;

    if-eqz v8, :cond_3f

    .line 553
    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/internal/measurement/zzbw$zze$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzbw$zze$zza;

    goto :goto_56

    .line 554
    :cond_3f
    instance-of v8, v6, Ljava/lang/String;

    if-eqz v8, :cond_49

    .line 555
    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/measurement/zzbw$zze$zza;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbw$zze$zza;

    goto :goto_56

    .line 556
    :cond_49
    instance-of v8, v6, Ljava/lang/Double;

    if-eqz v8, :cond_19

    .line 557
    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/internal/measurement/zzbw$zze$zza;->zza(D)Lcom/google/android/gms/internal/measurement/zzbw$zze$zza;

    .line 558
    :goto_56
    invoke-virtual {v4, v7}, Lcom/google/android/gms/internal/measurement/zzbw$zze$zza;->zza(Lcom/google/android/gms/internal/measurement/zzbw$zze$zza;)Lcom/google/android/gms/internal/measurement/zzbw$zze$zza;

    goto :goto_19

    .line 560
    :cond_5a
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzbw$zze$zza;->zzd()I

    move-result v3

    if-lez v3, :cond_6b

    .line 561
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfi$zzb;->zzu()Lcom/google/android/gms/internal/measurement/zzgt;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzfi;

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzbw$zze;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6b
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_6e
    return-object v0
.end method

.method private static zza(Ljava/lang/StringBuilder;I)V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_b

    const-string v1, "  "

    .line 408
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_b
    return-void
.end method

.method private final zza(Ljava/lang/StringBuilder;ILcom/google/android/gms/internal/measurement/zzbo$zzc;)V
    .registers 9

    if-nez p3, :cond_3

    return-void

    .line 371
    :cond_3
    invoke-static {p1, p2}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Ljava/lang/StringBuilder;I)V

    const-string v0, "filter {\n"

    .line 372
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzbo$zzc;->zze()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 374
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzbo$zzc;->zzf()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "complement"

    invoke-static {p1, p2, v1, v0}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 375
    :cond_1e
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzbo$zzc;->zzg()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 377
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzo()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v0

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzbo$zzc;->zzh()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzer;->zzb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "param_name"

    .line 378
    invoke-static {p1, p2, v1, v0}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 379
    :cond_35
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzbo$zzc;->zza()Z

    move-result v0

    const-string v1, "}\n"

    if-eqz v0, :cond_c2

    add-int/lit8 v0, p2, 0x1

    .line 380
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzbo$zzc;->zzb()Lcom/google/android/gms/internal/measurement/zzbo$zzf;

    move-result-object v2

    if-eqz v2, :cond_c2

    .line 382
    invoke-static {p1, v0}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Ljava/lang/StringBuilder;I)V

    const-string v3, "string_filter"

    .line 383
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " {\n"

    .line 384
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbo$zzf;->zza()Z

    move-result v3

    if-eqz v3, :cond_65

    .line 386
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbo$zzf;->zzb()Lcom/google/android/gms/internal/measurement/zzbo$zzf$zzb;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzbo$zzf$zzb;->name()Ljava/lang/String;

    move-result-object v3

    const-string v4, "match_type"

    invoke-static {p1, v0, v4, v3}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 387
    :cond_65
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbo$zzf;->zzc()Z

    move-result v3

    if-eqz v3, :cond_74

    .line 388
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbo$zzf;->zzd()Ljava/lang/String;

    move-result-object v3

    const-string v4, "expression"

    invoke-static {p1, v0, v4, v3}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 389
    :cond_74
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbo$zzf;->zze()Z

    move-result v3

    if-eqz v3, :cond_87

    .line 390
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbo$zzf;->zzf()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "case_sensitive"

    invoke-static {p1, v0, v4, v3}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 391
    :cond_87
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbo$zzf;->zzh()I

    move-result v3

    if-lez v3, :cond_bc

    add-int/lit8 v3, v0, 0x1

    .line 392
    invoke-static {p1, v3}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Ljava/lang/StringBuilder;I)V

    const-string v3, "expression_list {\n"

    .line 393
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbo$zzf;->zzg()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    add-int/lit8 v4, v0, 0x2

    .line 395
    invoke-static {p1, v4}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Ljava/lang/StringBuilder;I)V

    .line 396
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    .line 397
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9f

    .line 399
    :cond_b9
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    :cond_bc
    invoke-static {p1, v0}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Ljava/lang/StringBuilder;I)V

    .line 401
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    :cond_c2
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzbo$zzc;->zzc()Z

    move-result v0

    if-eqz v0, :cond_d3

    add-int/lit8 v0, p2, 0x1

    .line 403
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzbo$zzc;->zzd()Lcom/google/android/gms/internal/measurement/zzbo$zzd;

    move-result-object p3

    const-string v2, "number_filter"

    invoke-direct {p0, p1, v0, v2, p3}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/measurement/zzbo$zzd;)V

    .line 404
    :cond_d3
    invoke-static {p1, p2}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Ljava/lang/StringBuilder;I)V

    .line 405
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private final zza(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/measurement/zzbo$zzd;)V
    .registers 6

    if-nez p4, :cond_3

    return-void

    .line 353
    :cond_3
    invoke-static {p1, p2}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Ljava/lang/StringBuilder;I)V

    .line 354
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " {\n"

    .line 355
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    invoke-virtual {p4}, Lcom/google/android/gms/internal/measurement/zzbo$zzd;->zza()Z

    move-result p3

    if-eqz p3, :cond_21

    .line 357
    invoke-virtual {p4}, Lcom/google/android/gms/internal/measurement/zzbo$zzd;->zzb()Lcom/google/android/gms/internal/measurement/zzbo$zzd$zza;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzbo$zzd$zza;->name()Ljava/lang/String;

    move-result-object p3

    const-string v0, "comparison_type"

    invoke-static {p1, p2, v0, p3}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 358
    :cond_21
    invoke-virtual {p4}, Lcom/google/android/gms/internal/measurement/zzbo$zzd;->zzc()Z

    move-result p3

    if-eqz p3, :cond_34

    .line 359
    invoke-virtual {p4}, Lcom/google/android/gms/internal/measurement/zzbo$zzd;->zzd()Z

    move-result p3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    const-string v0, "match_as_float"

    invoke-static {p1, p2, v0, p3}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 360
    :cond_34
    invoke-virtual {p4}, Lcom/google/android/gms/internal/measurement/zzbo$zzd;->zze()Z

    move-result p3

    if-eqz p3, :cond_43

    .line 361
    invoke-virtual {p4}, Lcom/google/android/gms/internal/measurement/zzbo$zzd;->zzf()Ljava/lang/String;

    move-result-object p3

    const-string v0, "comparison_value"

    invoke-static {p1, p2, v0, p3}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 362
    :cond_43
    invoke-virtual {p4}, Lcom/google/android/gms/internal/measurement/zzbo$zzd;->zzg()Z

    move-result p3

    if-eqz p3, :cond_52

    .line 363
    invoke-virtual {p4}, Lcom/google/android/gms/internal/measurement/zzbo$zzd;->zzh()Ljava/lang/String;

    move-result-object p3

    const-string v0, "min_comparison_value"

    invoke-static {p1, p2, v0, p3}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 364
    :cond_52
    invoke-virtual {p4}, Lcom/google/android/gms/internal/measurement/zzbo$zzd;->zzi()Z

    move-result p3

    if-eqz p3, :cond_61

    .line 365
    invoke-virtual {p4}, Lcom/google/android/gms/internal/measurement/zzbo$zzd;->zzj()Ljava/lang/String;

    move-result-object p3

    const-string p4, "max_comparison_value"

    invoke-static {p1, p2, p4, p3}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 366
    :cond_61
    invoke-static {p1, p2}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Ljava/lang/StringBuilder;I)V

    const-string p2, "}\n"

    .line 367
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static zza(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/measurement/zzbw$zzi;Ljava/lang/String;)V
    .registers 13

    if-nez p3, :cond_3

    return-void

    :cond_3
    const/4 p1, 0x3

    .line 296
    invoke-static {p0, p1}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Ljava/lang/StringBuilder;I)V

    .line 297
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " {\n"

    .line 298
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzbw$zzi;->zzd()I

    move-result p2

    const/16 p4, 0xa

    const/4 v0, 0x4

    const-string v1, ", "

    const/4 v2, 0x0

    if-eqz p2, :cond_47

    .line 300
    invoke-static {p0, v0}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Ljava/lang/StringBuilder;I)V

    const-string p2, "results: "

    .line 301
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzbw$zzi;->zzc()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v3, 0x0

    :goto_2c
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_44

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    add-int/lit8 v5, v3, 0x1

    if-eqz v3, :cond_3f

    .line 305
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    :cond_3f
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move v3, v5

    goto :goto_2c

    .line 308
    :cond_44
    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 309
    :cond_47
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzbw$zzi;->zzb()I

    move-result p2

    if-eqz p2, :cond_79

    .line 310
    invoke-static {p0, v0}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Ljava/lang/StringBuilder;I)V

    const-string p2, "status: "

    .line 311
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzbw$zzi;->zza()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v3, 0x0

    :goto_5e
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_76

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    add-int/lit8 v5, v3, 0x1

    if-eqz v3, :cond_71

    .line 315
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    :cond_71
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move v3, v5

    goto :goto_5e

    .line 318
    :cond_76
    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 319
    :cond_79
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzbw$zzi;->zzf()I

    move-result p2

    const/4 p4, 0x0

    const-string v3, "}\n"

    if-eqz p2, :cond_d6

    .line 320
    invoke-static {p0, v0}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Ljava/lang/StringBuilder;I)V

    const-string p2, "dynamic_filter_timestamps: {"

    .line 321
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzbw$zzi;->zze()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v4, 0x0

    :goto_93
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzbw$zzb;

    add-int/lit8 v6, v4, 0x1

    if-eqz v4, :cond_a6

    .line 325
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    :cond_a6
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzbw$zzb;->zza()Z

    move-result v4

    if-eqz v4, :cond_b5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzbw$zzb;->zzb()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_b6

    :cond_b5
    move-object v4, p4

    :goto_b6
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    .line 327
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzbw$zzb;->zzc()Z

    move-result v4

    if-eqz v4, :cond_cd

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzbw$zzb;->zzd()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    goto :goto_ce

    :cond_cd
    move-object v4, p4

    :goto_ce
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move v4, v6

    goto :goto_93

    .line 330
    :cond_d3
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    :cond_d6
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzbw$zzi;->zzh()I

    move-result p2

    if-eqz p2, :cond_147

    .line 332
    invoke-static {p0, v0}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Ljava/lang/StringBuilder;I)V

    const-string p2, "sequence_filter_timestamps: {"

    .line 333
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzbw$zzi;->zzg()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 p3, 0x0

    :goto_ed
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_144

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzbw$zzj;

    add-int/lit8 v4, p3, 0x1

    if-eqz p3, :cond_100

    .line 337
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    :cond_100
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzbw$zzj;->zza()Z

    move-result p3

    if-eqz p3, :cond_10f

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzbw$zzj;->zzb()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    goto :goto_110

    :cond_10f
    move-object p3, p4

    :goto_110
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ": ["

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzbw$zzj;->zzc()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    const/4 v0, 0x0

    :goto_121
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_13d

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    add-int/lit8 v7, v0, 0x1

    if-eqz v0, :cond_138

    .line 342
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    :cond_138
    invoke-virtual {p0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move v0, v7

    goto :goto_121

    :cond_13d
    const-string p3, "]"

    .line 345
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move p3, v4

    goto :goto_ed

    .line 347
    :cond_144
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    :cond_147
    invoke-static {p0, p1}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Ljava/lang/StringBuilder;I)V

    .line 349
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V
    .registers 4

    if-nez p3, :cond_3

    return-void

    :cond_3
    add-int/lit8 p1, p1, 0x1

    .line 413
    invoke-static {p0, p1}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Ljava/lang/StringBuilder;I)V

    .line 414
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    .line 415
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    .line 417
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method private final zza(Ljava/lang/StringBuilder;ILjava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "I",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzbw$zze;",
            ">;)V"
        }
    .end annotation

    if-nez p3, :cond_3

    return-void

    :cond_3
    add-int/lit8 p2, p2, 0x1

    .line 266
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_9
    :goto_9
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d6

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzbw$zze;

    if-eqz v0, :cond_9

    .line 268
    invoke-static {p1, p2}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Ljava/lang/StringBuilder;I)V

    const-string v1, "param {\n"

    .line 269
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzjt;->zzb()Z

    move-result v1

    const-string v2, "double_value"

    const-string v3, "int_value"

    const-string v4, "string_value"

    const-string v5, "name"

    const/4 v6, 0x0

    if-eqz v1, :cond_92

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzt()Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v1

    sget-object v7, Lcom/google/android/gms/measurement/internal/zzas;->zzce:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v1, v7}, Lcom/google/android/gms/measurement/internal/zzaa;->zza(Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result v1

    if-eqz v1, :cond_92

    .line 272
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzbw$zze;->zza()Z

    move-result v1

    if-eqz v1, :cond_4d

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzo()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzbw$zze;->zzb()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/google/android/gms/measurement/internal/zzer;->zzb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4e

    :cond_4d
    move-object v1, v6

    .line 273
    :goto_4e
    invoke-static {p1, p2, v5, v1}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 275
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzbw$zze;->zzc()Z

    move-result v1

    if-eqz v1, :cond_5c

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzbw$zze;->zzd()Ljava/lang/String;

    move-result-object v1

    goto :goto_5d

    :cond_5c
    move-object v1, v6

    .line 276
    :goto_5d
    invoke-static {p1, p2, v4, v1}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 277
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzbw$zze;->zze()Z

    move-result v1

    if-eqz v1, :cond_6f

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzbw$zze;->zzf()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_70

    :cond_6f
    move-object v1, v6

    :goto_70
    invoke-static {p1, p2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 279
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzbw$zze;->zzg()Z

    move-result v1

    if-eqz v1, :cond_81

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzbw$zze;->zzh()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    .line 280
    :cond_81
    invoke-static {p1, p2, v2, v6}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 281
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzbw$zze;->zzj()I

    move-result v1

    if-lez v1, :cond_cc

    .line 282
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzbw$zze;->zzi()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Ljava/lang/StringBuilder;ILjava/util/List;)V

    goto :goto_cc

    .line 283
    :cond_92
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzo()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzbw$zze;->zzb()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/google/android/gms/measurement/internal/zzer;->zzb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, v5, v1}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 284
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzbw$zze;->zzd()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, v4, v1}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 285
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzbw$zze;->zze()Z

    move-result v1

    if-eqz v1, :cond_b7

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzbw$zze;->zzf()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_b8

    :cond_b7
    move-object v1, v6

    :goto_b8
    invoke-static {p1, p2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 287
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzbw$zze;->zzg()Z

    move-result v1

    if-eqz v1, :cond_c9

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzbw$zze;->zzh()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    .line 288
    :cond_c9
    invoke-static {p1, p2, v2, v6}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 289
    :cond_cc
    :goto_cc
    invoke-static {p1, p2}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Ljava/lang/StringBuilder;I)V

    const-string v0, "}\n"

    .line 290
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    :cond_d6
    return-void
.end method

.method static zza(Lcom/google/android/gms/measurement/internal/zzaq;Lcom/google/android/gms/measurement/internal/zzm;)Z
    .registers 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 433
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    iget-object p0, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzb:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_18

    iget-object p0, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzr:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 p0, 0x0

    return p0

    :cond_18
    const/4 p0, 0x1

    return p0
.end method

.method static zza(Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_14

    const-string v0, "([+-])?([0-9]+\\.?[0-9]*|[0-9]*\\.?[0-9]+)"

    .line 439
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 440
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0x136

    if-gt p0, v0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method static zza(Ljava/util/List;I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;I)Z"
        }
    .end annotation

    .line 442
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    shl-int/lit8 v0, v0, 0x6

    if-ge p1, v0, :cond_23

    div-int/lit8 v0, p1, 0x40

    .line 443
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    rem-int/lit8 p1, p1, 0x40

    shl-long p0, v2, p1

    and-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-eqz v2, :cond_23

    const/4 p0, 0x1

    return p0

    :cond_23
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final bridge synthetic e_()Lcom/google/android/gms/measurement/internal/zzq;
    .registers 2

    .line 565
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->e_()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v0

    return-object v0
.end method

.method final zza([B)J
    .registers 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 479
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzp()Lcom/google/android/gms/measurement/internal/zzko;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzd()V

    .line 481
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzko;->zzi()Ljava/security/MessageDigest;

    move-result-object v0

    if-nez v0, :cond_20

    .line 483
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object p1

    const-string v0, "Failed to get MD5"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    return-wide v0

    .line 485
    :cond_20
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    .line 486
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzko;->zza([B)J

    move-result-wide v0

    return-wide v0
.end method

.method final zza([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">([B",
            "Landroid/os/Parcelable$Creator<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 421
    :cond_4
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 422
    :try_start_8
    array-length v2, p1

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 423
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 424
    invoke-interface {p2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Parcelable;
    :try_end_16
    .catch Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader$ParseException; {:try_start_8 .. :try_end_16} :catch_1c
    .catchall {:try_start_8 .. :try_end_16} :catchall_1a

    .line 425
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_1a
    move-exception p1

    goto :goto_2d

    .line 428
    :catch_1c
    :try_start_1c
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object p1

    const-string p2, "Failed to load parcelable from buffer"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;)V
    :try_end_29
    .catchall {:try_start_1c .. :try_end_29} :catchall_1a

    .line 429
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-object v0

    .line 431
    :goto_2d
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 432
    throw p1
.end method

.method final zza(Lcom/google/android/gms/internal/measurement/zzbo$zzb;)Ljava/lang/String;
    .registers 7

    if-nez p1, :cond_5

    const-string p1, "null"

    return-object p1

    .line 214
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nevent_filter {\n"

    .line 215
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbo$zzb;->zza()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_23

    .line 217
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbo$zzb;->zzb()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "filter_id"

    invoke-static {v0, v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 219
    :cond_23
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzo()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbo$zzb;->zzc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zzer;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "event_name"

    .line 220
    invoke-static {v0, v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 222
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbo$zzb;->zzh()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbo$zzb;->zzi()Z

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbo$zzb;->zzk()Z

    move-result v4

    .line 223
    invoke-static {v1, v3, v4}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(ZZZ)Ljava/lang/String;

    move-result-object v1

    .line 224
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4f

    const-string v3, "filter_type"

    .line 225
    invoke-static {v0, v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 226
    :cond_4f
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbo$zzb;->zzf()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_5f

    .line 227
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbo$zzb;->zzg()Lcom/google/android/gms/internal/measurement/zzbo$zzd;

    move-result-object v1

    const-string v3, "event_count_filter"

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/measurement/zzbo$zzd;)V

    .line 228
    :cond_5f
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbo$zzb;->zze()I

    move-result v1

    if-lez v1, :cond_83

    const-string v1, "  filters {\n"

    .line 229
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbo$zzb;->zzd()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_72
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_83

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzbo$zzc;

    const/4 v3, 0x2

    .line 231
    invoke-direct {p0, v0, v3, v1}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Ljava/lang/StringBuilder;ILcom/google/android/gms/internal/measurement/zzbo$zzc;)V

    goto :goto_72

    .line 233
    :cond_83
    invoke-static {v0, v2}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Ljava/lang/StringBuilder;I)V

    const-string p1, "}\n}\n"

    .line 234
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method final zza(Lcom/google/android/gms/internal/measurement/zzbo$zze;)Ljava/lang/String;
    .registers 7

    if-nez p1, :cond_5

    const-string p1, "null"

    return-object p1

    .line 238
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nproperty_filter {\n"

    .line 239
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbo$zze;->zza()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_23

    .line 241
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbo$zze;->zzb()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "filter_id"

    invoke-static {v0, v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 243
    :cond_23
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzo()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbo$zze;->zzc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zzer;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "property_name"

    .line 244
    invoke-static {v0, v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 246
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbo$zze;->zze()Z

    move-result v1

    .line 247
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbo$zze;->zzf()Z

    move-result v3

    .line 248
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbo$zze;->zzh()Z

    move-result v4

    .line 249
    invoke-static {v1, v3, v4}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(ZZZ)Ljava/lang/String;

    move-result-object v1

    .line 250
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4f

    const-string v3, "filter_type"

    .line 251
    invoke-static {v0, v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_4f
    const/4 v1, 0x1

    .line 252
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbo$zze;->zzd()Lcom/google/android/gms/internal/measurement/zzbo$zzc;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Ljava/lang/StringBuilder;ILcom/google/android/gms/internal/measurement/zzbo$zzc;)V

    const-string p1, "}\n"

    .line 253
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method final zza(Lcom/google/android/gms/internal/measurement/zzbw$zzf;)Ljava/lang/String;
    .registers 14

    if-nez p1, :cond_5

    const-string p1, ""

    return-object p1

    .line 85
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nbatch {\n"

    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbw$zzf;->zza()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_17
    :goto_17
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "}\n"

    if-eqz v1, :cond_390

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzbw$zzg;

    if-eqz v1, :cond_17

    const/4 v3, 0x1

    .line 90
    invoke-static {v0, v3}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Ljava/lang/StringBuilder;I)V

    const-string v4, "bundle {\n"

    .line 91
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzbw$zzg;->zza()Z

    move-result v4

    if-eqz v4, :cond_43

    .line 93
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzbw$zzg;->zzb()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "protocol_version"

    invoke-static {v0, v3, v5, v4}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 94
    :cond_43
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzbw$zzg;->zzq()Ljava/lang/String;

    move-result-object v4

    const-string v5, "platform"

    invoke-static {v0, v3, v5, v4}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 95
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzbw$zzg;->zzz()Z

    move-result v4

    if-eqz v4, :cond_5f

    .line 96
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzbw$zzg;->zzaa()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "gmp_version"

    invoke-static {v0, v3, v5, v4}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 97
    :cond_5f
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzbw$zzg;->zzab()Z

    move-result v4

    if-eqz v4, :cond_72

    .line 98
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzbw$zzg;->zzac()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "uploading_gmp_version"

    invoke-static {v0, v3, v5, v4}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 99
    :cond_72
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzbw$zzg;->zzbc()Z

    move-result v4

    if-eqz v4, :cond_85

    .line 100
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzbw$zzg;->zzbd()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "dynamite_version"

    invoke-static {v0, v3, v5, v4}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 101
    :cond_85
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzbw$zzg;->zzau()Z

    move-result v4

    if-eqz v4, :cond_98

    .line 102
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzbw$zzg;->zzav()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "config_version"

    invoke-static {v0, v3, v5, v4}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 103
    :cond_98
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzbw$zzg;->zzam()Ljava/lang/String;

    move-result-object v4

    const-string v5, "gmp_app_id"

    invoke-static {v0, v3, v5, v4}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 104
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzbw$zzg;->zzbb()Ljava/lang/String;

    move-result-object v4

    const-string v5, "admob_app_id"

    invoke-static {v0, v3, v5, v4}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 105
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzbw$zzg;->zzx()Ljava/lang/String;

    move-result-object v4

    const-string v5, "app_id"

    invoke-static {v0, v3, v5, v4}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 106
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzbw$zzg;->zzy()Ljava/lang/String;

    move-result-object v4

    const-string v5, "app_version"

    invoke-static {v0, v3, v5, v4}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 107
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzbw$zzg;->zzar()Z

    move-result v4

    if-eqz v4, :cond_cf

    .line 108
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzbw$zzg;->zzas()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "app_version_major"

    invoke-static {v0, v3, v5, v4}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 109
    :cond_cf
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzbw$zzg;->zzaq()Ljava/lang/String;

    move-result-object v4

    const-string v5, "firebase_instance_id"

    invoke-static {v0, v3, v5, v4}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 110
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzbw$zzg;->zzah()Z

    move-result v4

    if-eqz v4, :cond_eb

    .line 111
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzbw$zzg;->zzai()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "dev_cert_hash"

    invoke-static {v0, v3, v5, v4}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 112
    :cond_eb
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzbw$zzg;->zzw()Ljava/lang/String;

    move-result-object v4

    const-string v5, "app_store"

    invoke-static {v0, v3, v5, v4}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 113
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzbw$zzg;->zzg()Z

    move-result v4

    if-eqz v4, :cond_107

    .line 114
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzbw$zzg;->zzh()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "upload_timestamp_millis"

    invoke-static {v0, v3, v5, v4}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 115
    :cond_107
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzbw$zzg;->zzi()Z

    move-result v4

    if-eqz v4, :cond_11a

    .line 116
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzbw$zzg;->zzj()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "start_timestamp_millis"

    invoke-static {v0, v3, v5, v4}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 117
    :cond_11a
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzbw$zzg;->zzk()Z

    move-result v4

    if-eqz v4, :cond_12d

    .line 118
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzbw$zzg;->zzl()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "end_timestamp_millis"

    invoke-static {v0, v3, v5, v4}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 119
    :cond_12d
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzbw$zzg;->zzm()Z

    move-result v4

    if-eqz v4, :cond_140

    .line 121
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzbw$zzg;->zzn()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "previous_bundle_start_timestamp_millis"

    .line 122
    invoke-static {v0, v3, v5, v4}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 123
    :cond_140
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzbw$zzg;->zzo()Z

    move-result v4

    if-eqz v4, :cond_153

    .line 125
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzbw$zzg;->zzp()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "previous_bundle_end_timestamp_millis"

    .line 126
    invoke-static {v0, v3, v5, v4}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 127
    :cond_153
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzbw$zzg;->zzag()Ljava/lang/String;

    move-result-object v4

    const-string v5, "app_instance_id"

    invoke-static {v0, v3, v5, v4}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 128
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzbw$zzg;->zzad()Ljava/lang/String;

    move-result-object v4

    const-string v5, "resettable_device_id"

    invoke-static {v0, v3, v5, v4}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 129
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzbw$zzg;->zzat()Ljava/lang/String;

    move-result-object v4

    const-string v5, "device_id"

    invoke-static {v0, v3, v5, v4}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 130
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzbw$zzg;->zzay()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ds_id"

    invoke-static {v0, v3, v5, v4}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 131
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzbw$zzg;->zzae()Z

    move-result v4

    if-eqz v4, :cond_18a

    .line 132
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzbw$zzg;->zzaf()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, "limited_ad_tracking"

    invoke-static {v0, v3, v5, v4}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 133
    :cond_18a
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzbw$zzg;->zzr()Ljava/lang/String;

    move-result-object v4

    const-string v5, "os_version"

    invoke-static {v0, v3, v5, v4}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 134
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzbw$zzg;->zzs()Ljava/lang/String;

    move-result-object v4

    const-string v5, "device_model"

    invoke-static {v0, v3, v5, v4}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 135
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzbw$zzg;->zzt()Ljava/lang/String;

    move-result-object v4

    const-string v5, "user_default_language"

    invoke-static {v0, v3, v5, v4}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 136
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzbw$zzg;->zzu()Z

    move-result v4

    if-eqz v4, :cond_1b8

    .line 137
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzbw$zzg;->zzv()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "time_zone_offset_minutes"

    invoke-static {v0, v3, v5, v4}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 138
    :cond_1b8
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzbw$zzg;->zzaj()Z

    move-result v4

    if-eqz v4, :cond_1cb

    .line 139
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzbw$zzg;->zzak()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "bundle_sequential_index"

    invoke-static {v0, v3, v5, v4}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 140
    :cond_1cb
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzbw$zzg;->zzan()Z

    move-result v4

    if-eqz v4, :cond_1de

    .line 141
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzbw$zzg;->zzao()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, "service_upload"

    invoke-static {v0, v3, v5, v4}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 142
    :cond_1de
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzbw$zzg;->zzal()Ljava/lang/String;

    move-result-object v4

    const-string v5, "health_monitor"

    invoke-static {v0, v3, v5, v4}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 143
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzt()Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzas;->zzcm:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzaa;->zza(Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result v4

    if-nez v4, :cond_210

    .line 144
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzbw$zzg;->zzaw()Z

    move-result v4

    if-eqz v4, :cond_210

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzbw$zzg;->zzax()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-eqz v8, :cond_210

    .line 145
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzbw$zzg;->zzax()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "android_id"

    invoke-static {v0, v3, v5, v4}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 146
    :cond_210
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzbw$zzg;->zzaz()Z

    move-result v4

    if-eqz v4, :cond_223

    .line 147
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzbw$zzg;->zzba()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "retry_counter"

    invoke-static {v0, v3, v5, v4}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 148
    :cond_223
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzbw$zzg;->zze()Ljava/util/List;

    move-result-object v4

    const-string v5, "name"

    const/4 v6, 0x2

    if-eqz v4, :cond_2a3

    .line 151
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_230
    :goto_230
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2a3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzbw$zzk;

    if-eqz v7, :cond_230

    .line 153
    invoke-static {v0, v6}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Ljava/lang/StringBuilder;I)V

    const-string v8, "user_property {\n"

    .line 154
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzbw$zzk;->zza()Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_256

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzbw$zzk;->zzb()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    goto :goto_257

    :cond_256
    move-object v8, v9

    :goto_257
    const-string v10, "set_timestamp_millis"

    .line 157
    invoke-static {v0, v6, v10, v8}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 159
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzo()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v8

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzbw$zzk;->zzc()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/google/android/gms/measurement/internal/zzer;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 160
    invoke-static {v0, v6, v5, v8}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 161
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzbw$zzk;->zze()Ljava/lang/String;

    move-result-object v8

    const-string v10, "string_value"

    invoke-static {v0, v6, v10, v8}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 162
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzbw$zzk;->zzf()Z

    move-result v8

    if-eqz v8, :cond_283

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzbw$zzk;->zzg()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    goto :goto_284

    :cond_283
    move-object v8, v9

    :goto_284
    const-string v10, "int_value"

    invoke-static {v0, v6, v10, v8}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 164
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzbw$zzk;->zzh()Z

    move-result v8

    if-eqz v8, :cond_297

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzbw$zzk;->zzi()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    :cond_297
    const-string v7, "double_value"

    .line 165
    invoke-static {v0, v6, v7, v9}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 166
    invoke-static {v0, v6}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Ljava/lang/StringBuilder;I)V

    .line 167
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_230

    .line 170
    :cond_2a3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzbw$zzg;->zzap()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzbw$zzg;->zzx()Ljava/lang/String;

    move-result-object v7

    if-eqz v4, :cond_30c

    .line 174
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2b1
    :goto_2b1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_30c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzbw$zza;

    if-eqz v8, :cond_2b1

    .line 176
    invoke-static {v0, v6}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Ljava/lang/StringBuilder;I)V

    const-string v9, "audience_membership {\n"

    .line 177
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzbw$zza;->zza()Z

    move-result v9

    if-eqz v9, :cond_2da

    .line 179
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzbw$zza;->zzb()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "audience_id"

    invoke-static {v0, v6, v10, v9}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 180
    :cond_2da
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzbw$zza;->zzf()Z

    move-result v9

    if-eqz v9, :cond_2ed

    .line 181
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzbw$zza;->zzg()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const-string v10, "new_audience"

    invoke-static {v0, v6, v10, v9}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 182
    :cond_2ed
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzbw$zza;->zzc()Lcom/google/android/gms/internal/measurement/zzbw$zzi;

    move-result-object v9

    const-string v10, "current_data"

    invoke-static {v0, v6, v10, v9, v7}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/measurement/zzbw$zzi;Ljava/lang/String;)V

    .line 183
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzbw$zza;->zzd()Z

    move-result v9

    if-eqz v9, :cond_305

    .line 184
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzbw$zza;->zze()Lcom/google/android/gms/internal/measurement/zzbw$zzi;

    move-result-object v8

    const-string v9, "previous_data"

    invoke-static {v0, v6, v9, v8, v7}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/measurement/zzbw$zzi;Ljava/lang/String;)V

    .line 185
    :cond_305
    invoke-static {v0, v6}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Ljava/lang/StringBuilder;I)V

    .line 186
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2b1

    .line 188
    :cond_30c
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzbw$zzg;->zzc()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_388

    .line 191
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_316
    :goto_316
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_388

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzbw$zzc;

    if-eqz v4, :cond_316

    .line 193
    invoke-static {v0, v6}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Ljava/lang/StringBuilder;I)V

    const-string v7, "event {\n"

    .line 194
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzo()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v7

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzbw$zzc;->zzc()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzer;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v6, v5, v7}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 196
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzbw$zzc;->zzd()Z

    move-result v7

    if-eqz v7, :cond_34e

    .line 197
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzbw$zzc;->zze()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v8, "timestamp_millis"

    invoke-static {v0, v6, v8, v7}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 198
    :cond_34e
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzbw$zzc;->zzf()Z

    move-result v7

    if-eqz v7, :cond_361

    .line 199
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzbw$zzc;->zzg()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v8, "previous_timestamp_millis"

    invoke-static {v0, v6, v8, v7}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 200
    :cond_361
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzbw$zzc;->zzh()Z

    move-result v7

    if-eqz v7, :cond_374

    .line 201
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzbw$zzc;->zzi()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "count"

    invoke-static {v0, v6, v8, v7}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 202
    :cond_374
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzbw$zzc;->zzb()I

    move-result v7

    if-eqz v7, :cond_381

    .line 203
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzbw$zzc;->zza()Ljava/util/List;

    move-result-object v4

    invoke-direct {p0, v0, v6, v4}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Ljava/lang/StringBuilder;ILjava/util/List;)V

    .line 204
    :cond_381
    invoke-static {v0, v6}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Ljava/lang/StringBuilder;I)V

    .line 205
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_316

    .line 207
    :cond_388
    invoke-static {v0, v3}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Ljava/lang/StringBuilder;I)V

    .line 208
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_17

    .line 210
    :cond_390
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method final zza(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 457
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 458
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    .line 459
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gez v1, :cond_29

    .line 460
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzet;->zzi()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v1

    const-string v2, "Ignoring negative bit index to be cleared"

    invoke-virtual {v1, v2, p2}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_9

    .line 462
    :cond_29
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    div-int/lit8 v1, v1, 0x40

    .line 463
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_4b

    .line 464
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v1

    .line 465
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzet;->zzi()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v1

    .line 466
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Ignoring bit index greater than bitSet size"

    invoke-virtual {v1, v3, p2, v2}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_9

    .line 468
    :cond_4b
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    rem-int/lit8 p2, p2, 0x40

    shl-long/2addr v4, p2

    const-wide/16 v6, -0x1

    xor-long/2addr v4, v6

    and-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 470
    :cond_6a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 471
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_74
    move v8, p2

    move p2, p1

    move p1, v8

    if-ltz p1, :cond_8c

    .line 472
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_8c

    add-int/lit8 p2, p1, -0x1

    goto :goto_74

    :cond_8c
    const/4 p1, 0x0

    .line 475
    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic zza()V
    .registers 1

    .line 568
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zza()V

    return-void
.end method

.method final zza(Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 8

    .line 62
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;->zza()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 64
    :goto_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1f

    .line 65
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzbw$zze;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbw$zze;->zzb()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    goto :goto_20

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_1f
    const/4 v1, -0x1

    .line 69
    :goto_20
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzbw$zze;->zzk()Lcom/google/android/gms/internal/measurement/zzbw$zze$zza;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/measurement/zzbw$zze$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbw$zze$zza;

    move-result-object p2

    .line 70
    instance-of v0, p3, Ljava/lang/Long;

    if-eqz v0, :cond_36

    .line 71
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/zzbw$zze$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzbw$zze$zza;

    goto :goto_6d

    .line 72
    :cond_36
    instance-of v0, p3, Ljava/lang/String;

    if-eqz v0, :cond_40

    .line 73
    check-cast p3, Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/measurement/zzbw$zze$zza;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbw$zze$zza;

    goto :goto_6d

    .line 74
    :cond_40
    instance-of v0, p3, Ljava/lang/Double;

    if-eqz v0, :cond_4e

    .line 75
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/zzbw$zze$zza;->zza(D)Lcom/google/android/gms/internal/measurement/zzbw$zze$zza;

    goto :goto_6d

    .line 76
    :cond_4e
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzjt;->zzb()Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 77
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzt()Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzas;->zzcg:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzaa;->zza(Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result v0

    if-eqz v0, :cond_6d

    instance-of v0, p3, [Landroid/os/Bundle;

    if-eqz v0, :cond_6d

    .line 78
    check-cast p3, [Landroid/os/Bundle;

    invoke-static {p3}, Lcom/google/android/gms/measurement/internal/zzkk;->zza([Landroid/os/Bundle;)Ljava/util/List;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/measurement/zzbw$zze$zza;->zza(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzbw$zze$zza;

    :cond_6d
    :goto_6d
    if-ltz v1, :cond_73

    .line 80
    invoke-virtual {p1, v1, p2}, Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;->zza(ILcom/google/android/gms/internal/measurement/zzbw$zze$zza;)Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;

    return-void

    .line 81
    :cond_73
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;->zza(Lcom/google/android/gms/internal/measurement/zzbw$zze$zza;)Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;

    return-void
.end method

.method final zza(Lcom/google/android/gms/internal/measurement/zzbw$zze$zza;Ljava/lang/Object;)V
    .registers 5

    .line 14
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbw$zze$zza;->zza()Lcom/google/android/gms/internal/measurement/zzbw$zze$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzbw$zze$zza;->zzb()Lcom/google/android/gms/internal/measurement/zzbw$zze$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzbw$zze$zza;->zzc()Lcom/google/android/gms/internal/measurement/zzbw$zze$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzbw$zze$zza;->zze()Lcom/google/android/gms/internal/measurement/zzbw$zze$zza;

    .line 16
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_1c

    .line 17
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/zzbw$zze$zza;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbw$zze$zza;

    return-void

    .line 18
    :cond_1c
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_2a

    .line 19
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzbw$zze$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzbw$zze$zza;

    return-void

    .line 20
    :cond_2a
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_38

    .line 21
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzbw$zze$zza;->zza(D)Lcom/google/android/gms/internal/measurement/zzbw$zze$zza;

    return-void

    .line 22
    :cond_38
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzjt;->zzb()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 23
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzt()Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzas;->zzcg:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzaa;->zza(Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result v0

    if-eqz v0, :cond_58

    instance-of v0, p2, [Landroid/os/Bundle;

    if-eqz v0, :cond_58

    .line 24
    check-cast p2, [Landroid/os/Bundle;

    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzkk;->zza([Landroid/os/Bundle;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/zzbw$zze$zza;->zza(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzbw$zze$zza;

    return-void

    .line 25
    :cond_58
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object p1

    const-string v0, "Ignoring invalid (type) event param value"

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method final zza(Lcom/google/android/gms/internal/measurement/zzbw$zzk$zza;Ljava/lang/Object;)V
    .registers 5

    .line 4
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbw$zzk$zza;->zza()Lcom/google/android/gms/internal/measurement/zzbw$zzk$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzbw$zzk$zza;->zzb()Lcom/google/android/gms/internal/measurement/zzbw$zzk$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzbw$zzk$zza;->zzc()Lcom/google/android/gms/internal/measurement/zzbw$zzk$zza;

    .line 6
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_18

    .line 7
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/zzbw$zzk$zza;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbw$zzk$zza;

    return-void

    .line 8
    :cond_18
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_26

    .line 9
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzbw$zzk$zza;->zzb(J)Lcom/google/android/gms/internal/measurement/zzbw$zzk$zza;

    return-void

    .line 10
    :cond_26
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_34

    .line 11
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzbw$zzk$zza;->zza(D)Lcom/google/android/gms/internal/measurement/zzbw$zzk$zza;

    return-void

    .line 12
    :cond_34
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object p1

    const-string v0, "Ignoring invalid (type) user attribute value"

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method final zza(JJ)Z
    .registers 8

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_1e

    cmp-long v2, p3, v0

    if-lez v2, :cond_1e

    .line 477
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzm()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    cmp-long v0, p1, p3

    if-lez v0, :cond_1c

    goto :goto_1e

    :cond_1c
    const/4 p1, 0x0

    return p1

    :cond_1e
    :goto_1e
    const/4 p1, 0x1

    return p1
.end method

.method final zzb(Lcom/google/android/gms/internal/measurement/zzbw$zzc;Ljava/lang/String;)Ljava/lang/Object;
    .registers 9

    .line 32
    invoke-static {p1, p2}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Lcom/google/android/gms/internal/measurement/zzbw$zzc;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbw$zze;

    move-result-object p1

    if-eqz p1, :cond_c8

    .line 34
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbw$zze;->zzc()Z

    move-result p2

    if-eqz p2, :cond_11

    .line 35
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbw$zze;->zzd()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 36
    :cond_11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbw$zze;->zze()Z

    move-result p2

    if-eqz p2, :cond_20

    .line 37
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbw$zze;->zzf()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 38
    :cond_20
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbw$zze;->zzg()Z

    move-result p2

    if-eqz p2, :cond_2f

    .line 39
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbw$zze;->zzh()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 40
    :cond_2f
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzjt;->zzb()Z

    move-result p2

    if-eqz p2, :cond_c8

    .line 41
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzt()Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object p2

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzas;->zzcg:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/measurement/internal/zzaa;->zza(Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result p2

    if-eqz p2, :cond_c8

    .line 42
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbw$zze;->zzj()I

    move-result p2

    if-lez p2, :cond_c8

    .line 43
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbw$zze;->zzi()Ljava/util/List;

    move-result-object p1

    .line 44
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 45
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_54
    :goto_54
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_bb

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzbw$zze;

    if-eqz v0, :cond_54

    .line 47
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 48
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzbw$zze;->zzi()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6f
    :goto_6f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzbw$zze;

    .line 49
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbw$zze;->zzc()Z

    move-result v3

    if-eqz v3, :cond_8d

    .line 50
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbw$zze;->zzb()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbw$zze;->zzd()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6f

    .line 51
    :cond_8d
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbw$zze;->zze()Z

    move-result v3

    if-eqz v3, :cond_9f

    .line 52
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbw$zze;->zzb()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbw$zze;->zzf()J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_6f

    .line 53
    :cond_9f
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbw$zze;->zzg()Z

    move-result v3

    if-eqz v3, :cond_6f

    .line 54
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbw$zze;->zzb()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbw$zze;->zzh()D

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_6f

    .line 56
    :cond_b1
    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_54

    .line 57
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_54

    .line 59
    :cond_bb
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Landroid/os/Bundle;

    invoke-interface {p2, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/os/Bundle;

    return-object p1

    :cond_c8
    const/4 p1, 0x0

    return-object p1
.end method

.method public final bridge synthetic zzb()V
    .registers 1

    .line 569
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzb()V

    return-void
.end method

.method final zzb([B)[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 487
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 488
    new-instance p1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {p1, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 489
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v2, 0x400

    .line 490
    new-array v2, v2, [B

    .line 491
    :goto_13
    invoke-virtual {p1, v2}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_1e

    const/4 v4, 0x0

    .line 493
    invoke-virtual {v1, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_13

    .line 495
    :cond_1e
    invoke-virtual {p1}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 496
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    .line 497
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_28} :catch_29

    return-object p1

    :catch_29
    move-exception p1

    .line 499
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v0

    const-string v1, "Failed to ungzip content"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 500
    throw p1

    return-void
.end method

.method public final bridge synthetic zzc()V
    .registers 1

    .line 570
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzc()V

    return-void
.end method

.method final zzc([B)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 501
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 502
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 503
    invoke-virtual {v1, p1}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 504
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 505
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 506
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_17} :catch_18

    return-object p1

    :catch_18
    move-exception p1

    .line 508
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v0

    const-string v1, "Failed to gzip content"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 509
    throw p1
.end method

.method public final bridge synthetic zzd()V
    .registers 1

    .line 571
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzd()V

    return-void
.end method

.method protected final zze()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method final zzf()Ljava/util/List;
    .registers 8
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 510
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkk;->zza:Lcom/google/android/gms/measurement/internal/zzkg;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzn()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zza(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8e

    .line 511
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_15

    goto/16 :goto_8e

    .line 513
    :cond_15
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 514
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzas;->zzao:Lcom/google/android/gms/measurement/internal/zzem;

    .line 515
    invoke-virtual {v3, v1}, Lcom/google/android/gms/measurement/internal/zzem;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 516
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 517
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2e
    :goto_2e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_86

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 518
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "measurement.id."

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 519
    :try_start_48
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_2e

    .line 521
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 522
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lt v4, v3, :cond_2e

    .line 523
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v4

    .line 524
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzet;->zzi()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v4

    const-string v5, "Too many experiment IDs. Number of IDs"

    .line 525
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_76
    .catch Ljava/lang/NumberFormatException; {:try_start_48 .. :try_end_76} :catch_77

    goto :goto_86

    :catch_77
    move-exception v4

    .line 529
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzet;->zzi()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v5

    const-string v6, "Experiment ID NumberFormatException"

    invoke-virtual {v5, v6, v4}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2e

    .line 531
    :cond_86
    :goto_86
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_8d

    return-object v1

    :cond_8d
    return-object v2

    :cond_8e
    :goto_8e
    return-object v1
.end method

.method public final bridge synthetic zzg()Lcom/google/android/gms/measurement/internal/zzkk;
    .registers 2

    .line 564
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzg()Lcom/google/android/gms/measurement/internal/zzkk;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzi()Lcom/google/android/gms/measurement/internal/zzab;
    .registers 2

    .line 566
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzj()Lcom/google/android/gms/measurement/internal/zzfr;
    .registers 2

    .line 567
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzl()Lcom/google/android/gms/measurement/internal/zzak;
    .registers 2

    .line 572
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzl()Lcom/google/android/gms/measurement/internal/zzak;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzm()Lcom/google/android/gms/common/util/Clock;
    .registers 2

    .line 573
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzm()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzn()Landroid/content/Context;
    .registers 2

    .line 574
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzn()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzo()Lcom/google/android/gms/measurement/internal/zzer;
    .registers 2

    .line 575
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzo()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzp()Lcom/google/android/gms/measurement/internal/zzko;
    .registers 2

    .line 576
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzp()Lcom/google/android/gms/measurement/internal/zzko;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzq()Lcom/google/android/gms/measurement/internal/zzfu;
    .registers 2

    .line 577
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzq()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzr()Lcom/google/android/gms/measurement/internal/zzet;
    .registers 2

    .line 578
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzs()Lcom/google/android/gms/measurement/internal/zzff;
    .registers 2

    .line 579
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzs()Lcom/google/android/gms/measurement/internal/zzff;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzt()Lcom/google/android/gms/measurement/internal/zzaa;
    .registers 2

    .line 580
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzt()Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzu()Lcom/google/android/gms/measurement/internal/zzv;
    .registers 2

    .line 581
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzu()Lcom/google/android/gms/measurement/internal/zzv;

    move-result-object v0

    return-object v0
.end method
