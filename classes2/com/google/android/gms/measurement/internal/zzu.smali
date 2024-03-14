.class final Lcom/google/android/gms/measurement/internal/zzu;
.super Lcom/google/android/gms/measurement/internal/zzt;
.source "com.google.android.gms:play-services-measurement@@17.4.1"


# instance fields
.field private zzg:Lcom/google/android/gms/internal/measurement/zzbo$zzb;

.field private final synthetic zzh:Lcom/google/android/gms/measurement/internal/zzq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzq;Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzbo$zzb;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzu;->zzh:Lcom/google/android/gms/measurement/internal/zzq;

    .line 2
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/measurement/internal/zzt;-><init>(Ljava/lang/String;I)V

    .line 3
    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzu;->zzg:Lcom/google/android/gms/internal/measurement/zzbo$zzb;

    return-void
.end method


# virtual methods
.method final zza()I
    .registers 2

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzu;->zzg:Lcom/google/android/gms/internal/measurement/zzbo$zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzbo$zzb;->zzb()I

    move-result v0

    return v0
.end method

.method final zza(Ljava/lang/Long;Ljava/lang/Long;Lcom/google/android/gms/internal/measurement/zzbw$zzc;JLcom/google/android/gms/measurement/internal/zzam;Z)Z
    .registers 25

    move-object/from16 v0, p0

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkf;->zzb()Z

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    if-eqz v1, :cond_24

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzu;->zzh:Lcom/google/android/gms/measurement/internal/zzq;

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgs;->zzt()Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v1

    iget-object v6, v0, Lcom/google/android/gms/measurement/internal/zzu;->zza:Ljava/lang/String;

    sget-object v7, Lcom/google/android/gms/measurement/internal/zzas;->zzbg:Lcom/google/android/gms/measurement/internal/zzem;

    .line 10
    invoke-virtual {v1, v6, v7}, Lcom/google/android/gms/measurement/internal/zzaa;->zzd(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result v1

    if-eqz v1, :cond_24

    const/4 v1, 0x1

    goto :goto_25

    :cond_24
    const/4 v1, 0x0

    .line 13
    :goto_25
    iget-object v6, v0, Lcom/google/android/gms/measurement/internal/zzu;->zzg:Lcom/google/android/gms/internal/measurement/zzbo$zzb;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzbo$zzb;->zzk()Z

    move-result v6

    if-eqz v6, :cond_32

    move-object/from16 v6, p6

    .line 14
    iget-wide v6, v6, Lcom/google/android/gms/measurement/internal/zzam;->zze:J

    goto :goto_34

    :cond_32
    move-wide/from16 v6, p4

    .line 15
    :goto_34
    iget-object v8, v0, Lcom/google/android/gms/measurement/internal/zzu;->zzh:Lcom/google/android/gms/measurement/internal/zzq;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/zzet;->zza(I)Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_96

    .line 16
    iget-object v8, v0, Lcom/google/android/gms/measurement/internal/zzu;->zzh:Lcom/google/android/gms/measurement/internal/zzq;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v8

    .line 17
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzet;->zzx()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v8

    iget v10, v0, Lcom/google/android/gms/measurement/internal/zzu;->zzb:I

    .line 18
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 19
    iget-object v11, v0, Lcom/google/android/gms/measurement/internal/zzu;->zzg:Lcom/google/android/gms/internal/measurement/zzbo$zzb;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzbo$zzb;->zza()Z

    move-result v11

    if-eqz v11, :cond_65

    iget-object v11, v0, Lcom/google/android/gms/measurement/internal/zzu;->zzg:Lcom/google/android/gms/internal/measurement/zzbo$zzb;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzbo$zzb;->zzb()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    goto :goto_66

    :cond_65
    move-object v11, v9

    :goto_66
    iget-object v12, v0, Lcom/google/android/gms/measurement/internal/zzu;->zzh:Lcom/google/android/gms/measurement/internal/zzq;

    .line 20
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzgs;->zzo()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v12

    iget-object v13, v0, Lcom/google/android/gms/measurement/internal/zzu;->zzg:Lcom/google/android/gms/internal/measurement/zzbo$zzb;

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzbo$zzb;->zzc()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/google/android/gms/measurement/internal/zzer;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "Evaluating filter. audience, filter, event"

    .line 21
    invoke-virtual {v8, v13, v10, v11, v12}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 22
    iget-object v8, v0, Lcom/google/android/gms/measurement/internal/zzu;->zzh:Lcom/google/android/gms/measurement/internal/zzq;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v8

    .line 23
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzet;->zzx()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v8

    iget-object v10, v0, Lcom/google/android/gms/measurement/internal/zzu;->zzh:Lcom/google/android/gms/measurement/internal/zzq;

    .line 24
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzke;->zzg()Lcom/google/android/gms/measurement/internal/zzkk;

    move-result-object v10

    iget-object v11, v0, Lcom/google/android/gms/measurement/internal/zzu;->zzg:Lcom/google/android/gms/internal/measurement/zzbo$zzb;

    invoke-virtual {v10, v11}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Lcom/google/android/gms/internal/measurement/zzbo$zzb;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "Filter definition"

    invoke-virtual {v8, v11, v10}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 25
    :cond_96
    iget-object v8, v0, Lcom/google/android/gms/measurement/internal/zzu;->zzg:Lcom/google/android/gms/internal/measurement/zzbo$zzb;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzbo$zzb;->zza()Z

    move-result v8

    if-eqz v8, :cond_3fb

    iget-object v8, v0, Lcom/google/android/gms/measurement/internal/zzu;->zzg:Lcom/google/android/gms/internal/measurement/zzbo$zzb;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzbo$zzb;->zzb()I

    move-result v8

    const/16 v10, 0x100

    if-le v8, v10, :cond_aa

    goto/16 :goto_3fb

    .line 36
    :cond_aa
    iget-object v8, v0, Lcom/google/android/gms/measurement/internal/zzu;->zzg:Lcom/google/android/gms/internal/measurement/zzbo$zzb;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzbo$zzb;->zzh()Z

    move-result v8

    .line 37
    iget-object v10, v0, Lcom/google/android/gms/measurement/internal/zzu;->zzg:Lcom/google/android/gms/internal/measurement/zzbo$zzb;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzbo$zzb;->zzi()Z

    move-result v10

    .line 38
    iget-object v11, v0, Lcom/google/android/gms/measurement/internal/zzu;->zzg:Lcom/google/android/gms/internal/measurement/zzbo$zzb;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzbo$zzb;->zzk()Z

    move-result v11

    if-nez v8, :cond_c5

    if-nez v10, :cond_c5

    if-eqz v11, :cond_c3

    goto :goto_c5

    :cond_c3
    const/4 v8, 0x0

    goto :goto_c6

    :cond_c5
    :goto_c5
    const/4 v8, 0x1

    :goto_c6
    if-eqz p7, :cond_f2

    if-nez v8, :cond_f2

    .line 41
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzu;->zzh:Lcom/google/android/gms/measurement/internal/zzq;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v1

    .line 42
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzet;->zzx()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v1

    iget v3, v0, Lcom/google/android/gms/measurement/internal/zzu;->zzb:I

    .line 43
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 44
    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzu;->zzg:Lcom/google/android/gms/internal/measurement/zzbo$zzb;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzbo$zzb;->zza()Z

    move-result v4

    if-eqz v4, :cond_ec

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzu;->zzg:Lcom/google/android/gms/internal/measurement/zzbo$zzb;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzbo$zzb;->zzb()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    :cond_ec
    const-string v4, "Event filter already evaluated true and it is not associated with an enhanced audience. audience ID, filter ID"

    .line 45
    invoke-virtual {v1, v4, v3, v9}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v2

    .line 47
    :cond_f2
    iget-object v10, v0, Lcom/google/android/gms/measurement/internal/zzu;->zzg:Lcom/google/android/gms/internal/measurement/zzbo$zzb;

    .line 48
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/zzbw$zzc;->zzc()Ljava/lang/String;

    move-result-object v11

    .line 49
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzbo$zzb;->zzf()Z

    move-result v12

    if-eqz v12, :cond_113

    .line 50
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzbo$zzb;->zzg()Lcom/google/android/gms/internal/measurement/zzbo$zzd;

    move-result-object v12

    invoke-static {v6, v7, v12}, Lcom/google/android/gms/measurement/internal/zzu;->zza(JLcom/google/android/gms/internal/measurement/zzbo$zzd;)Ljava/lang/Boolean;

    move-result-object v6

    if-nez v6, :cond_10a

    goto/16 :goto_3a2

    .line 53
    :cond_10a
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_113

    :goto_110
    move-object v9, v5

    goto/16 :goto_3a2

    .line 55
    :cond_113
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 56
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzbo$zzb;->zzd()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_120
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_159

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/measurement/zzbo$zzc;

    .line 57
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzbo$zzc;->zzh()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_151

    .line 58
    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzu;->zzh:Lcom/google/android/gms/measurement/internal/zzq;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v5

    .line 59
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzet;->zzi()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v5

    iget-object v6, v0, Lcom/google/android/gms/measurement/internal/zzu;->zzh:Lcom/google/android/gms/measurement/internal/zzq;

    .line 60
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgs;->zzo()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v6

    invoke-virtual {v6, v11}, Lcom/google/android/gms/measurement/internal/zzer;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "null or empty param name in filter. event"

    .line 61
    invoke-virtual {v5, v7, v6}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_3a2

    .line 63
    :cond_151
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzbo$zzc;->zzh()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_120

    .line 65
    :cond_159
    new-instance v7, Landroidx/collection/ArrayMap;

    invoke-direct {v7}, Landroidx/collection/ArrayMap;-><init>()V

    .line 66
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/zzbw$zzc;->zza()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_166
    :goto_166
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1f3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/measurement/zzbw$zze;

    .line 67
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzbw$zze;->zzb()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v6, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_166

    .line 68
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzbw$zze;->zze()Z

    move-result v14

    if-eqz v14, :cond_19a

    .line 69
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzbw$zze;->zzb()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzbw$zze;->zze()Z

    move-result v15

    if-eqz v15, :cond_195

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzbw$zze;->zzf()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    goto :goto_196

    :cond_195
    move-object v13, v9

    :goto_196
    invoke-interface {v7, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_166

    .line 70
    :cond_19a
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzbw$zze;->zzg()Z

    move-result v14

    if-eqz v14, :cond_1b8

    .line 72
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzbw$zze;->zzb()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzbw$zze;->zzg()Z

    move-result v15

    if-eqz v15, :cond_1b3

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzbw$zze;->zzh()D

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    goto :goto_1b4

    :cond_1b3
    move-object v13, v9

    .line 73
    :goto_1b4
    invoke-interface {v7, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_166

    .line 74
    :cond_1b8
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzbw$zze;->zzc()Z

    move-result v14

    if-eqz v14, :cond_1ca

    .line 75
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzbw$zze;->zzb()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzbw$zze;->zzd()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v7, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_166

    .line 76
    :cond_1ca
    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzu;->zzh:Lcom/google/android/gms/measurement/internal/zzq;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v5

    .line 77
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzet;->zzi()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v5

    iget-object v6, v0, Lcom/google/android/gms/measurement/internal/zzu;->zzh:Lcom/google/android/gms/measurement/internal/zzq;

    .line 78
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgs;->zzo()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v6

    invoke-virtual {v6, v11}, Lcom/google/android/gms/measurement/internal/zzer;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/zzu;->zzh:Lcom/google/android/gms/measurement/internal/zzq;

    .line 79
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgs;->zzo()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v7

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzbw$zze;->zzb()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/google/android/gms/measurement/internal/zzer;->zzb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v10, "Unknown value for param. event, param"

    .line 80
    invoke-virtual {v5, v10, v6, v7}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_3a2

    .line 83
    :cond_1f3
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzbo$zzb;->zzd()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1fb
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3a1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzbo$zzc;

    .line 84
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzbo$zzc;->zze()Z

    move-result v12

    if-eqz v12, :cond_215

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzbo$zzc;->zzf()Z

    move-result v12

    if-eqz v12, :cond_215

    const/4 v12, 0x1

    goto :goto_216

    :cond_215
    const/4 v12, 0x0

    .line 85
    :goto_216
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzbo$zzc;->zzh()Ljava/lang/String;

    move-result-object v13

    .line 86
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_23b

    .line 87
    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzu;->zzh:Lcom/google/android/gms/measurement/internal/zzq;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v5

    .line 88
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzet;->zzi()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v5

    iget-object v6, v0, Lcom/google/android/gms/measurement/internal/zzu;->zzh:Lcom/google/android/gms/measurement/internal/zzq;

    .line 89
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgs;->zzo()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v6

    invoke-virtual {v6, v11}, Lcom/google/android/gms/measurement/internal/zzer;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Event has empty param name. event"

    .line 90
    invoke-virtual {v5, v7, v6}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_3a2

    .line 92
    :cond_23b
    invoke-interface {v7, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 93
    instance-of v15, v14, Ljava/lang/Long;

    if-eqz v15, :cond_288

    .line 94
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzbo$zzc;->zzc()Z

    move-result v15

    if-nez v15, :cond_26e

    .line 95
    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzu;->zzh:Lcom/google/android/gms/measurement/internal/zzq;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v5

    .line 96
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzet;->zzi()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v5

    iget-object v6, v0, Lcom/google/android/gms/measurement/internal/zzu;->zzh:Lcom/google/android/gms/measurement/internal/zzq;

    .line 97
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgs;->zzo()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v6

    invoke-virtual {v6, v11}, Lcom/google/android/gms/measurement/internal/zzer;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/zzu;->zzh:Lcom/google/android/gms/measurement/internal/zzq;

    .line 98
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgs;->zzo()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v7

    invoke-virtual {v7, v13}, Lcom/google/android/gms/measurement/internal/zzer;->zzb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v10, "No number filter for long param. event, param"

    .line 99
    invoke-virtual {v5, v10, v6, v7}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_3a2

    .line 101
    :cond_26e
    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzbo$zzc;->zzd()Lcom/google/android/gms/internal/measurement/zzbo$zzd;

    move-result-object v10

    invoke-static {v13, v14, v10}, Lcom/google/android/gms/measurement/internal/zzu;->zza(JLcom/google/android/gms/internal/measurement/zzbo$zzd;)Ljava/lang/Boolean;

    move-result-object v10

    if-nez v10, :cond_280

    goto/16 :goto_3a2

    .line 104
    :cond_280
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-ne v10, v12, :cond_1fb

    goto/16 :goto_110

    .line 106
    :cond_288
    instance-of v15, v14, Ljava/lang/Double;

    if-eqz v15, :cond_2d1

    .line 107
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzbo$zzc;->zzc()Z

    move-result v15

    if-nez v15, :cond_2b7

    .line 108
    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzu;->zzh:Lcom/google/android/gms/measurement/internal/zzq;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v5

    .line 109
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzet;->zzi()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v5

    iget-object v6, v0, Lcom/google/android/gms/measurement/internal/zzu;->zzh:Lcom/google/android/gms/measurement/internal/zzq;

    .line 110
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgs;->zzo()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v6

    invoke-virtual {v6, v11}, Lcom/google/android/gms/measurement/internal/zzer;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/zzu;->zzh:Lcom/google/android/gms/measurement/internal/zzq;

    .line 111
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgs;->zzo()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v7

    invoke-virtual {v7, v13}, Lcom/google/android/gms/measurement/internal/zzer;->zzb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v10, "No number filter for double param. event, param"

    .line 112
    invoke-virtual {v5, v10, v6, v7}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_3a2

    .line 114
    :cond_2b7
    check-cast v14, Ljava/lang/Double;

    invoke-virtual {v14}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzbo$zzc;->zzd()Lcom/google/android/gms/internal/measurement/zzbo$zzd;

    move-result-object v10

    invoke-static {v13, v14, v10}, Lcom/google/android/gms/measurement/internal/zzu;->zza(DLcom/google/android/gms/internal/measurement/zzbo$zzd;)Ljava/lang/Boolean;

    move-result-object v10

    if-nez v10, :cond_2c9

    goto/16 :goto_3a2

    .line 117
    :cond_2c9
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-ne v10, v12, :cond_1fb

    goto/16 :goto_110

    .line 119
    :cond_2d1
    instance-of v15, v14, Ljava/lang/String;

    if-eqz v15, :cond_356

    .line 120
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzbo$zzc;->zza()Z

    move-result v15

    if-eqz v15, :cond_2ec

    .line 121
    check-cast v14, Ljava/lang/String;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzbo$zzc;->zzb()Lcom/google/android/gms/internal/measurement/zzbo$zzf;

    move-result-object v10

    iget-object v13, v0, Lcom/google/android/gms/measurement/internal/zzu;->zzh:Lcom/google/android/gms/measurement/internal/zzq;

    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v13

    invoke-static {v14, v10, v13}, Lcom/google/android/gms/measurement/internal/zzu;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzbo$zzf;Lcom/google/android/gms/measurement/internal/zzet;)Ljava/lang/Boolean;

    move-result-object v10

    goto :goto_302

    .line 122
    :cond_2ec
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzbo$zzc;->zzc()Z

    move-result v15

    if-eqz v15, :cond_332

    .line 123
    check-cast v14, Ljava/lang/String;

    invoke-static {v14}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_30e

    .line 124
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzbo$zzc;->zzd()Lcom/google/android/gms/internal/measurement/zzbo$zzd;

    move-result-object v10

    invoke-static {v14, v10}, Lcom/google/android/gms/measurement/internal/zzu;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzbo$zzd;)Ljava/lang/Boolean;

    move-result-object v10

    :goto_302
    if-nez v10, :cond_306

    goto/16 :goto_3a2

    .line 139
    :cond_306
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-ne v10, v12, :cond_1fb

    goto/16 :goto_110

    .line 125
    :cond_30e
    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzu;->zzh:Lcom/google/android/gms/measurement/internal/zzq;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v5

    .line 126
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzet;->zzi()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v5

    iget-object v6, v0, Lcom/google/android/gms/measurement/internal/zzu;->zzh:Lcom/google/android/gms/measurement/internal/zzq;

    .line 127
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgs;->zzo()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v6

    invoke-virtual {v6, v11}, Lcom/google/android/gms/measurement/internal/zzer;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/zzu;->zzh:Lcom/google/android/gms/measurement/internal/zzq;

    .line 128
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgs;->zzo()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v7

    invoke-virtual {v7, v13}, Lcom/google/android/gms/measurement/internal/zzer;->zzb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v10, "Invalid param value for number filter. event, param"

    .line 129
    invoke-virtual {v5, v10, v6, v7}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3a2

    .line 131
    :cond_332
    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzu;->zzh:Lcom/google/android/gms/measurement/internal/zzq;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v5

    .line 132
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzet;->zzi()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v5

    iget-object v6, v0, Lcom/google/android/gms/measurement/internal/zzu;->zzh:Lcom/google/android/gms/measurement/internal/zzq;

    .line 133
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgs;->zzo()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v6

    invoke-virtual {v6, v11}, Lcom/google/android/gms/measurement/internal/zzer;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/zzu;->zzh:Lcom/google/android/gms/measurement/internal/zzq;

    .line 134
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgs;->zzo()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v7

    invoke-virtual {v7, v13}, Lcom/google/android/gms/measurement/internal/zzer;->zzb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v10, "No filter for String param. event, param"

    .line 135
    invoke-virtual {v5, v10, v6, v7}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3a2

    :cond_356
    if-nez v14, :cond_37d

    .line 142
    iget-object v6, v0, Lcom/google/android/gms/measurement/internal/zzu;->zzh:Lcom/google/android/gms/measurement/internal/zzq;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v6

    .line 143
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzet;->zzx()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v6

    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/zzu;->zzh:Lcom/google/android/gms/measurement/internal/zzq;

    .line 144
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgs;->zzo()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v7

    invoke-virtual {v7, v11}, Lcom/google/android/gms/measurement/internal/zzer;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v9, v0, Lcom/google/android/gms/measurement/internal/zzu;->zzh:Lcom/google/android/gms/measurement/internal/zzq;

    .line 145
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzgs;->zzo()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v9

    invoke-virtual {v9, v13}, Lcom/google/android/gms/measurement/internal/zzer;->zzb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "Missing param for filter. event, param"

    .line 146
    invoke-virtual {v6, v10, v7, v9}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_110

    .line 148
    :cond_37d
    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzu;->zzh:Lcom/google/android/gms/measurement/internal/zzq;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v5

    .line 149
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzet;->zzi()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v5

    iget-object v6, v0, Lcom/google/android/gms/measurement/internal/zzu;->zzh:Lcom/google/android/gms/measurement/internal/zzq;

    .line 150
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgs;->zzo()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v6

    invoke-virtual {v6, v11}, Lcom/google/android/gms/measurement/internal/zzer;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/zzu;->zzh:Lcom/google/android/gms/measurement/internal/zzq;

    .line 151
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgs;->zzo()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v7

    invoke-virtual {v7, v13}, Lcom/google/android/gms/measurement/internal/zzer;->zzb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v10, "Unknown param type. event, param"

    .line 152
    invoke-virtual {v5, v10, v6, v7}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3a2

    :cond_3a1
    move-object v9, v3

    .line 156
    :goto_3a2
    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzu;->zzh:Lcom/google/android/gms/measurement/internal/zzq;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzet;->zzx()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v5

    if-nez v9, :cond_3b1

    const-string v6, "null"

    goto :goto_3b2

    :cond_3b1
    move-object v6, v9

    :goto_3b2
    const-string v7, "Event filter result"

    invoke-virtual {v5, v7, v6}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    if-nez v9, :cond_3ba

    return v4

    .line 159
    :cond_3ba
    iput-object v3, v0, Lcom/google/android/gms/measurement/internal/zzu;->zzc:Ljava/lang/Boolean;

    .line 160
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_3c3

    return v2

    .line 162
    :cond_3c3
    iput-object v3, v0, Lcom/google/android/gms/measurement/internal/zzu;->zzd:Ljava/lang/Boolean;

    if-eqz v8, :cond_3fa

    .line 163
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/zzbw$zzc;->zzd()Z

    move-result v3

    if-eqz v3, :cond_3fa

    .line 165
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/zzbw$zzc;->zze()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 166
    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzu;->zzg:Lcom/google/android/gms/internal/measurement/zzbo$zzb;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzbo$zzb;->zzi()Z

    move-result v4

    if-eqz v4, :cond_3ec

    if-eqz v1, :cond_3e9

    .line 167
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzu;->zzg:Lcom/google/android/gms/internal/measurement/zzbo$zzb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzbo$zzb;->zzf()Z

    move-result v1

    if-eqz v1, :cond_3e9

    move-object/from16 v3, p1

    .line 169
    :cond_3e9
    iput-object v3, v0, Lcom/google/android/gms/measurement/internal/zzu;->zzf:Ljava/lang/Long;

    goto :goto_3fa

    :cond_3ec
    if-eqz v1, :cond_3f8

    .line 170
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzu;->zzg:Lcom/google/android/gms/internal/measurement/zzbo$zzb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzbo$zzb;->zzf()Z

    move-result v1

    if-eqz v1, :cond_3f8

    move-object/from16 v3, p2

    .line 172
    :cond_3f8
    iput-object v3, v0, Lcom/google/android/gms/measurement/internal/zzu;->zze:Ljava/lang/Long;

    :cond_3fa
    :goto_3fa
    return v2

    .line 26
    :cond_3fb
    :goto_3fb
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzu;->zzh:Lcom/google/android/gms/measurement/internal/zzq;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v1

    .line 27
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzet;->zzi()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v1

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzu;->zza:Ljava/lang/String;

    .line 28
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 29
    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzu;->zzg:Lcom/google/android/gms/internal/measurement/zzbo$zzb;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzbo$zzb;->zza()Z

    move-result v5

    if-eqz v5, :cond_41d

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzu;->zzg:Lcom/google/android/gms/internal/measurement/zzbo$zzb;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzbo$zzb;->zzb()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    :cond_41d
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Invalid event filter ID. appId, id"

    .line 30
    invoke-virtual {v1, v6, v3, v5}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 31
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzu;->zzh:Lcom/google/android/gms/measurement/internal/zzq;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgs;->zzt()Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v1

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzu;->zza:Ljava/lang/String;

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzas;->zzbd:Lcom/google/android/gms/measurement/internal/zzem;

    .line 32
    invoke-virtual {v1, v3, v5}, Lcom/google/android/gms/measurement/internal/zzaa;->zzd(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result v1

    if-eqz v1, :cond_437

    return v4

    :cond_437
    return v2
.end method

.method final zzb()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method final zzc()Z
    .registers 2

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzu;->zzg:Lcom/google/android/gms/internal/measurement/zzbo$zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzbo$zzb;->zzf()Z

    move-result v0

    return v0
.end method
