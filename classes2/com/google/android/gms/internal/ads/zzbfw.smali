.class public final Lcom/google/android/gms/internal/ads/zzbfw;
.super Lcom/google/android/gms/internal/ads/zzbfl;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbey;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# instance fields
.field private zzegt:Ljava/lang/String;

.field private zzema:Z

.field private zzemd:Lcom/google/android/gms/internal/ads/zzber;

.field private zzeme:Ljava/lang/Exception;

.field private zzemf:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbdu;Lcom/google/android/gms/internal/ads/zzbdv;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbfl;-><init>(Lcom/google/android/gms/internal/ads/zzbdu;)V

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbdu;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzber;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzber;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbdv;)V

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfw;->zzemd:Lcom/google/android/gms/internal/ads/zzber;

    .line 5
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbfw;->zzemd:Lcom/google/android/gms/internal/ads/zzber;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzber;->zza(Lcom/google/android/gms/internal/ads/zzbey;)V

    return-void
.end method

.method private static zzb(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;
    .registers 5

    .line 136
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final zzfq(Ljava/lang/String;)V
    .registers 5

    .line 115
    monitor-enter p0

    const/4 v0, 0x1

    .line 116
    :try_start_2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbfw;->zzema:Z

    .line 117
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 118
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbfl;->release()V

    .line 119
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_2d

    .line 120
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfw;->zzegt:Ljava/lang/String;

    if-eqz v0, :cond_2c

    .line 121
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzbfl;->zzfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 122
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbfw;->zzeme:Ljava/lang/Exception;

    if-eqz v1, :cond_23

    .line 123
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbfw;->zzegt:Ljava/lang/String;

    .line 124
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzbfw;->zzb(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "badUrl"

    .line 125
    invoke-virtual {p0, v2, v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzbfl;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 126
    :cond_23
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbfw;->zzegt:Ljava/lang/String;

    const-string v1, "externalAbort"

    const-string v2, "Programmatic precache abort."

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbfl;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2c
    return-void

    :catchall_2d
    move-exception p1

    .line 119
    :try_start_2e
    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw p1
.end method


# virtual methods
.method public final abort()V
    .registers 2

    const/4 v0, 0x0

    .line 113
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzbfw;->zzfq(Ljava/lang/String;)V

    return-void
.end method

.method public final release()V
    .registers 3

    .line 39
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfw;->zzemd:Lcom/google/android/gms/internal/ads/zzber;

    if-eqz v0, :cond_d

    const/4 v1, 0x0

    .line 40
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzber;->zza(Lcom/google/android/gms/internal/ads/zzbey;)V

    .line 41
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfw;->zzemd:Lcom/google/android/gms/internal/ads/zzber;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzber;->release()V

    .line 42
    :cond_d
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzbfl;->release()V

    return-void
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 5

    .line 13
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabb;->zzcmd:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 14
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 15
    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_30

    const-string v1, ","

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "all"

    .line 18
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    return-void

    .line 20
    :cond_21
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    .line 21
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    return-void

    .line 23
    :cond_30
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbfw;->zzeme:Ljava/lang/Exception;

    const-string v0, "Precache error"

    .line 24
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/ads/zzayp;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 25
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbfw;->zzfq(Ljava/lang/String;)V

    return-void
.end method

.method public final zzaaz()Lcom/google/android/gms/internal/ads/zzber;
    .registers 3

    .line 128
    monitor-enter p0

    const/4 v0, 0x1

    .line 129
    :try_start_2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbfw;->zzemf:Z

    .line 130
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 131
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_13

    .line 132
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfw;->zzemd:Lcom/google/android/gms/internal/ads/zzber;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzber;->zza(Lcom/google/android/gms/internal/ads/zzbey;)V

    .line 133
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfw;->zzemd:Lcom/google/android/gms/internal/ads/zzber;

    .line 134
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbfw;->zzemd:Lcom/google/android/gms/internal/ads/zzber;

    return-object v0

    :catchall_13
    move-exception v0

    .line 131
    :try_start_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public final zzb(ZJ)V
    .registers 7

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfw;->zzels:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbdu;

    if-eqz v0, :cond_14

    .line 9
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbbz;->zzeet:Lcom/google/android/gms/internal/ads/zzdzb;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbfz;

    invoke-direct {v2, v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbfz;-><init>(Lcom/google/android/gms/internal/ads/zzbdu;ZJ)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzdzb;->execute(Ljava/lang/Runnable;)V

    :cond_14
    return-void
.end method

.method public final zzdl(I)V
    .registers 3

    .line 30
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfw;->zzemd:Lcom/google/android/gms/internal/ads/zzber;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzber;->zzaax()Lcom/google/android/gms/internal/ads/zzbeo;

    move-result-object v0

    .line 31
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbeo;->zzds(I)V

    return-void
.end method

.method public final zzdm(I)V
    .registers 3

    .line 27
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfw;->zzemd:Lcom/google/android/gms/internal/ads/zzber;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzber;->zzaax()Lcom/google/android/gms/internal/ads/zzbeo;

    move-result-object v0

    .line 28
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbeo;->zzdt(I)V

    return-void
.end method

.method public final zzdn(I)V
    .registers 3

    .line 33
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfw;->zzemd:Lcom/google/android/gms/internal/ads/zzber;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzber;->zzaax()Lcom/google/android/gms/internal/ads/zzbeo;

    move-result-object v0

    .line 34
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbeo;->zzdn(I)V

    return-void
.end method

.method public final zzdo(I)V
    .registers 3

    .line 36
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfw;->zzemd:Lcom/google/android/gms/internal/ads/zzber;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzber;->zzaax()Lcom/google/android/gms/internal/ads/zzbeo;

    move-result-object v0

    .line 37
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbeo;->zzdo(I)V

    return-void
.end method

.method public final zzdq(I)V
    .registers 2

    return-void
.end method

.method public final zze(Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 36

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v0, p2

    .line 46
    iput-object v12, v11, Lcom/google/android/gms/internal/ads/zzbfw;->zzegt:Ljava/lang/String;

    .line 47
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzbfl;->zzfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "error"

    .line 49
    :try_start_e
    array-length v1, v0

    new-array v1, v1, [Landroid/net/Uri;

    const/4 v2, 0x0

    .line 50
    :goto_12
    array-length v3, v0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_13} :catch_165

    if-ge v2, v3, :cond_23

    .line 51
    :try_start_15
    aget-object v3, v0, v2

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v1, v2
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1d} :catch_20

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :catch_20
    move-exception v0

    goto/16 :goto_168

    .line 53
    :cond_23
    :try_start_23
    iget-object v0, v11, Lcom/google/android/gms/internal/ads/zzbfw;->zzemd:Lcom/google/android/gms/internal/ads/zzber;

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzbfw;->zzedk:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzber;->zza([Landroid/net/Uri;Ljava/lang/String;)V

    .line 54
    iget-object v0, v11, Lcom/google/android/gms/internal/ads/zzbfw;->zzels:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbdu;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_32} :catch_165

    if-eqz v0, :cond_37

    .line 56
    :try_start_34
    invoke-interface {v0, v13, v11}, Lcom/google/android/gms/internal/ads/zzbdu;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbfl;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_37} :catch_20

    .line 57
    :cond_37
    :try_start_37
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzky()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    .line 58
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v16

    .line 59
    sget-object v1, Lcom/google/android/gms/internal/ads/zzabb;->zzcmk:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 60
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v1

    .line 61
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 62
    sget-object v1, Lcom/google/android/gms/internal/ads/zzabb;->zzcmj:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 63
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v1

    .line 64
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long v6, v1, v3

    .line 65
    sget-object v1, Lcom/google/android/gms/internal/ads/zzabb;->zzcmi:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 66
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v1

    .line 67
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v4, v1

    const-wide/16 v1, -0x1

    .line 69
    :goto_76
    monitor-enter p0
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_77} :catch_165

    .line 70
    :try_start_77
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v18

    sub-long v18, v18, v16

    cmp-long v3, v18, v6

    if-gtz v3, :cond_131

    .line 73
    iget-boolean v3, v11, Lcom/google/android/gms/internal/ads/zzbfw;->zzema:Z
    :try_end_83
    .catchall {:try_start_77 .. :try_end_83} :catchall_15e

    if-eqz v3, :cond_98

    .line 74
    :try_start_85
    iget-object v0, v11, Lcom/google/android/gms/internal/ads/zzbfw;->zzeme:Ljava/lang/Exception;

    if-eqz v0, :cond_8e

    const-string v1, "badUrl"
    :try_end_8b
    .catchall {:try_start_85 .. :try_end_8b} :catchall_163

    .line 76
    :try_start_8b
    iget-object v0, v11, Lcom/google/android/gms/internal/ads/zzbfw;->zzeme:Ljava/lang/Exception;

    throw v0
    :try_end_8e
    .catchall {:try_start_8b .. :try_end_8e} :catchall_157

    :cond_8e
    :try_start_8e
    const-string v1, "externalAbort"
    :try_end_90
    .catchall {:try_start_8e .. :try_end_90} :catchall_163

    .line 78
    :try_start_90
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Abort requested before buffering finished. "

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_98
    .catchall {:try_start_90 .. :try_end_98} :catchall_157

    .line 79
    :cond_98
    :try_start_98
    iget-boolean v3, v11, Lcom/google/android/gms/internal/ads/zzbfw;->zzemf:Z
    :try_end_9a
    .catchall {:try_start_98 .. :try_end_9a} :catchall_15e

    const/16 v18, 0x1

    if-eqz v3, :cond_a1

    .line 80
    :try_start_9e
    monitor-exit p0
    :try_end_9f
    .catchall {:try_start_9e .. :try_end_9f} :catchall_163

    goto/16 :goto_102

    .line 81
    :cond_a1
    :try_start_a1
    iget-object v3, v11, Lcom/google/android/gms/internal/ads/zzbfw;->zzemd:Lcom/google/android/gms/internal/ads/zzber;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzber;->zzaau()Lcom/google/android/gms/internal/ads/zzhc;

    move-result-object v3
    :try_end_a7
    .catchall {:try_start_a1 .. :try_end_a7} :catchall_15e

    if-eqz v3, :cond_125

    move-object/from16 v20, v14

    .line 85
    :try_start_ab
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzhc;->getDuration()J

    move-result-wide v14

    const-wide/16 v21, 0x0

    cmp-long v8, v14, v21

    if-lez v8, :cond_107

    .line 87
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzhc;->getBufferedPosition()J

    move-result-wide v23

    cmp-long v3, v23, v1

    if-eqz v3, :cond_e4

    cmp-long v1, v23, v21

    if-lez v1, :cond_c3

    const/4 v8, 0x1

    goto :goto_c4

    :cond_c3
    const/4 v8, 0x0

    .line 91
    :goto_c4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzber;->zzaav()I

    move-result v25

    .line 92
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzber;->zzaaw()I

    move-result v26

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v13

    move-wide/from16 v27, v4

    move-wide/from16 v4, v23

    move-wide/from16 v29, v6

    move-wide v6, v14

    move-wide/from16 v31, v9

    move/from16 v9, v25

    move/from16 v10, v26

    .line 93
    invoke-virtual/range {v1 .. v10}, Lcom/google/android/gms/internal/ads/zzbfl;->zza(Ljava/lang/String;Ljava/lang/String;JJZII)V

    move-wide/from16 v1, v23

    goto :goto_ea

    :cond_e4
    move-wide/from16 v27, v4

    move-wide/from16 v29, v6

    move-wide/from16 v31, v9

    :goto_ea
    cmp-long v3, v23, v14

    if-ltz v3, :cond_f3

    .line 96
    invoke-virtual {v11, v12, v13, v14, v15}, Lcom/google/android/gms/internal/ads/zzbfl;->zzc(Ljava/lang/String;Ljava/lang/String;J)V

    .line 97
    monitor-exit p0

    goto :goto_102

    .line 98
    :cond_f3
    iget-object v3, v11, Lcom/google/android/gms/internal/ads/zzbfw;->zzemd:Lcom/google/android/gms/internal/ads/zzber;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzber;->getBytesTransferred()J

    move-result-wide v3

    cmp-long v5, v3, v27

    if-ltz v5, :cond_103

    cmp-long v3, v23, v21

    if-lez v3, :cond_103

    .line 99
    monitor-exit p0
    :try_end_102
    .catchall {:try_start_ab .. :try_end_102} :catchall_15a

    :goto_102
    return v18

    :cond_103
    move-wide v3, v1

    move-wide/from16 v1, v31

    goto :goto_10d

    :cond_107
    move-wide/from16 v27, v4

    move-wide/from16 v29, v6

    move-wide v3, v1

    move-wide v1, v9

    .line 100
    :goto_10d
    :try_start_10d
    invoke-virtual {v11, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_110
    .catch Ljava/lang/InterruptedException; {:try_start_10d .. :try_end_110} :catch_11b
    .catchall {:try_start_10d .. :try_end_110} :catchall_15a

    .line 105
    :try_start_110
    monitor-exit p0

    move-wide v9, v1

    move-wide v1, v3

    move-object/from16 v14, v20

    move-wide/from16 v4, v27

    move-wide/from16 v6, v29

    goto/16 :goto_76

    :catch_11b
    const-string v1, "interrupted"
    :try_end_11d
    .catchall {:try_start_110 .. :try_end_11d} :catchall_15a

    .line 104
    :try_start_11d
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Wait interrupted."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_125
    .catchall {:try_start_11d .. :try_end_125} :catchall_157

    :cond_125
    move-object/from16 v20, v14

    :try_start_127
    const-string v1, "exoPlayerReleased"
    :try_end_129
    .catchall {:try_start_127 .. :try_end_129} :catchall_15a

    .line 84
    :try_start_129
    new-instance v0, Ljava/io/IOException;

    const-string v2, "ExoPlayer was released during preloading."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_131
    .catchall {:try_start_129 .. :try_end_131} :catchall_157

    :cond_131
    move-wide/from16 v29, v6

    move-object/from16 v20, v14

    :try_start_135
    const-string v1, "downloadTimeout"
    :try_end_137
    .catchall {:try_start_135 .. :try_end_137} :catchall_15a

    .line 72
    :try_start_137
    new-instance v0, Ljava/io/IOException;

    const/16 v2, 0x2f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Timeout reached. Limit: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v4, v29

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ms"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_157
    .catchall {:try_start_137 .. :try_end_157} :catchall_157

    :catchall_157
    move-exception v0

    move-object v14, v1

    goto :goto_161

    :catchall_15a
    move-exception v0

    move-object/from16 v14, v20

    goto :goto_161

    :catchall_15e
    move-exception v0

    move-object/from16 v20, v14

    .line 105
    :goto_161
    :try_start_161
    monitor-exit p0
    :try_end_162
    .catchall {:try_start_161 .. :try_end_162} :catchall_163

    :try_start_162
    throw v0
    :try_end_163
    .catch Ljava/lang/Exception; {:try_start_162 .. :try_end_163} :catch_20

    :catchall_163
    move-exception v0

    goto :goto_161

    :catch_165
    move-exception v0

    move-object/from16 v20, v14

    .line 107
    :goto_168
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x22

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Failed to preload url "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Exception: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzayp;->zzfe(Ljava/lang/String;)V

    .line 108
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbfl;->release()V

    .line 109
    invoke-static {v14, v0}, Lcom/google/android/gms/internal/ads/zzbfw;->zzb(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    .line 110
    invoke-virtual {v11, v12, v13, v14, v0}, Lcom/google/android/gms/internal/ads/zzbfl;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    return v1
.end method

.method public final zzfn(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x1

    .line 45
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbfl;->zze(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected final zzfo(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 44
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzbfl;->zzfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "cache:"

    if-eqz v0, :cond_15

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_15
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method public final zzn(II)V
    .registers 3

    return-void
.end method
