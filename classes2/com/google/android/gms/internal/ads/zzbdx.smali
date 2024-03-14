.class public final Lcom/google/android/gms/internal/ads/zzbdx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private final zzdqm:Lcom/google/android/gms/internal/ads/zzbbx;

.field private final zzdrb:Ljava/lang/String;

.field private final zzegj:Lcom/google/android/gms/internal/ads/zzabs;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzegn:Z

.field private final zzeja:Lcom/google/android/gms/internal/ads/zzabq;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzejb:Lcom/google/android/gms/internal/ads/zzbac;

.field private final zzejc:[J

.field private final zzejd:[Ljava/lang/String;

.field private zzeje:Z

.field private zzejf:Z

.field private zzejg:Z

.field private zzejh:Z

.field private zzeji:Lcom/google/android/gms/internal/ads/zzbdf;

.field private zzejj:Z

.field private zzejk:Z

.field private zzejl:J

.field private final zzvr:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbx;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzabs;Lcom/google/android/gms/internal/ads/zzabq;)V
    .registers 20
    .param p4    # Lcom/google/android/gms/internal/ads/zzabs;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/google/android/gms/internal/ads/zzabq;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object v1, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v2, Lcom/google/android/gms/internal/ads/zzbah;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzbah;-><init>()V

    const-string v3, "min_1"

    const-wide/16 v4, 0x1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 3
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzbah;->zza(Ljava/lang/String;DD)Lcom/google/android/gms/internal/ads/zzbah;

    move-result-object v8

    const-string v9, "1_5"

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v12, 0x4014000000000000L    # 5.0

    .line 4
    invoke-virtual/range {v8 .. v13}, Lcom/google/android/gms/internal/ads/zzbah;->zza(Ljava/lang/String;DD)Lcom/google/android/gms/internal/ads/zzbah;

    move-result-object v2

    const-string v3, "5_10"

    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    .line 5
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzbah;->zza(Ljava/lang/String;DD)Lcom/google/android/gms/internal/ads/zzbah;

    move-result-object v8

    const-string v9, "10_20"

    const-wide/high16 v10, 0x4024000000000000L    # 10.0

    const-wide/high16 v12, 0x4034000000000000L    # 20.0

    .line 6
    invoke-virtual/range {v8 .. v13}, Lcom/google/android/gms/internal/ads/zzbah;->zza(Ljava/lang/String;DD)Lcom/google/android/gms/internal/ads/zzbah;

    move-result-object v2

    const-string v3, "20_30"

    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    const-wide/high16 v6, 0x403e000000000000L    # 30.0

    .line 7
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzbah;->zza(Ljava/lang/String;DD)Lcom/google/android/gms/internal/ads/zzbah;

    move-result-object v8

    const-string v9, "30_max"

    const-wide/high16 v10, 0x403e000000000000L    # 30.0

    const-wide v12, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 8
    invoke-virtual/range {v8 .. v13}, Lcom/google/android/gms/internal/ads/zzbah;->zza(Ljava/lang/String;DD)Lcom/google/android/gms/internal/ads/zzbah;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbah;->zzyi()Lcom/google/android/gms/internal/ads/zzbac;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzbdx;->zzejb:Lcom/google/android/gms/internal/ads/zzbac;

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzbdx;->zzeje:Z

    .line 11
    iput-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzbdx;->zzejf:Z

    .line 12
    iput-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzbdx;->zzejg:Z

    .line 13
    iput-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzbdx;->zzejh:Z

    const-wide/16 v2, -0x1

    .line 14
    iput-wide v2, v1, Lcom/google/android/gms/internal/ads/zzbdx;->zzejl:J

    move-object v4, p1

    .line 15
    iput-object v4, v1, Lcom/google/android/gms/internal/ads/zzbdx;->zzvr:Landroid/content/Context;

    move-object/from16 v4, p2

    .line 16
    iput-object v4, v1, Lcom/google/android/gms/internal/ads/zzbdx;->zzdqm:Lcom/google/android/gms/internal/ads/zzbbx;

    move-object/from16 v4, p3

    .line 17
    iput-object v4, v1, Lcom/google/android/gms/internal/ads/zzbdx;->zzdrb:Ljava/lang/String;

    move-object/from16 v4, p4

    .line 18
    iput-object v4, v1, Lcom/google/android/gms/internal/ads/zzbdx;->zzegj:Lcom/google/android/gms/internal/ads/zzabs;

    move-object/from16 v4, p5

    .line 19
    iput-object v4, v1, Lcom/google/android/gms/internal/ads/zzbdx;->zzeja:Lcom/google/android/gms/internal/ads/zzabq;

    .line 20
    sget-object v4, Lcom/google/android/gms/internal/ads/zzabb;->zzcmm:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 21
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v4

    .line 22
    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_85

    .line 24
    new-array v2, v0, [Ljava/lang/String;

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzbdx;->zzejd:[Ljava/lang/String;

    .line 25
    new-array v0, v0, [J

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzbdx;->zzejc:[J

    return-void

    :cond_85
    const-string v5, ","

    .line 27
    invoke-static {v4, v5}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 28
    array-length v5, v4

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, v1, Lcom/google/android/gms/internal/ads/zzbdx;->zzejd:[Ljava/lang/String;

    .line 29
    array-length v5, v4

    new-array v5, v5, [J

    iput-object v5, v1, Lcom/google/android/gms/internal/ads/zzbdx;->zzejc:[J

    const/4 v5, 0x0

    .line 30
    :goto_96
    array-length v0, v4

    if-ge v5, v0, :cond_b1

    .line 31
    :try_start_99
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzbdx;->zzejc:[J

    aget-object v6, v4, v5

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    aput-wide v6, v0, v5
    :try_end_a3
    .catch Ljava/lang/NumberFormatException; {:try_start_99 .. :try_end_a3} :catch_a4

    goto :goto_ae

    :catch_a4
    move-exception v0

    const-string v6, "Unable to parse frame hash target time number."

    .line 34
    invoke-static {v6, v0}, Lcom/google/android/gms/internal/ads/zzayp;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzbdx;->zzejc:[J

    aput-wide v2, v0, v5

    :goto_ae
    add-int/lit8 v5, v5, 0x1

    goto :goto_96

    :cond_b1
    return-void
.end method


# virtual methods
.method public final onStop()V
    .registers 8

    .line 49
    sget-object v0, Lcom/google/android/gms/internal/ads/zzadi;->zzdcv:Lcom/google/android/gms/internal/ads/zzaci;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaci;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_d5

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->zzejj:Z

    if-nez v0, :cond_d5

    .line 50
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v0, "type"

    const-string v1, "native-player-metrics"

    .line 51
    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->zzdrb:Ljava/lang/String;

    const-string v1, "request"

    invoke-virtual {v5, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->zzeji:Lcom/google/android/gms/internal/ads/zzbdf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdf;->zzyx()Ljava/lang/String;

    move-result-object v0

    const-string v1, "player"

    invoke-virtual {v5, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->zzejb:Lcom/google/android/gms/internal/ads/zzbac;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbac;->zzyh()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbae;

    const-string v2, "fps_c_"

    .line 55
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzbae;->name:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_59

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_5f

    :cond_59
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    :goto_5f
    iget v3, v1, Lcom/google/android/gms/internal/ads/zzbae;->count:I

    .line 56
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 57
    invoke-virtual {v5, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "fps_p_"

    .line 58
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzbae;->name:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_7b

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_81

    :cond_7b
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    :goto_81
    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/zzbae;->zzecl:D

    .line 59
    invoke-static {v3, v4}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    .line 60
    invoke-virtual {v5, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3a

    :cond_8b
    const/4 v0, 0x0

    .line 62
    :goto_8c
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbdx;->zzejc:[J

    array-length v2, v1

    if-ge v0, v2, :cond_c2

    .line 63
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbdx;->zzejd:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-eqz v2, :cond_bf

    .line 65
    aget-wide v3, v1, v0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "fh_"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_bf
    add-int/lit8 v0, v0, 0x1

    goto :goto_8c

    .line 67
    :cond_c2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkr()Lcom/google/android/gms/internal/ads/zzayu;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbdx;->zzvr:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->zzdqm:Lcom/google/android/gms/internal/ads/zzbbx;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzbbx;->zzbre:Ljava/lang/String;

    const/4 v6, 0x1

    const-string v4, "gmob-apps"

    .line 68
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzayu;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V

    const/4 v0, 0x1

    .line 69
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->zzejj:Z

    :cond_d5
    return-void
.end method

.method public final zzaac()V
    .registers 5

    const/4 v0, 0x1

    .line 110
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->zzegn:Z

    .line 111
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbdx;->zzejf:Z

    if-eqz v1, :cond_1a

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbdx;->zzejg:Z

    if-nez v1, :cond_1a

    .line 112
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbdx;->zzegj:Lcom/google/android/gms/internal/ads/zzabs;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbdx;->zzeja:Lcom/google/android/gms/internal/ads/zzabq;

    const-string v3, "vfp2"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzabj;->zza(Lcom/google/android/gms/internal/ads/zzabs;Lcom/google/android/gms/internal/ads/zzabq;[Ljava/lang/String;)Z

    .line 113
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->zzejg:Z

    :cond_1a
    return-void
.end method

.method public final zzaad()V
    .registers 2

    const/4 v0, 0x0

    .line 115
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->zzegn:Z

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzbdf;)V
    .registers 5

    .line 38
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->zzegj:Lcom/google/android/gms/internal/ads/zzabs;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbdx;->zzeja:Lcom/google/android/gms/internal/ads/zzabq;

    const-string v2, "vpc2"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzabj;->zza(Lcom/google/android/gms/internal/ads/zzabs;Lcom/google/android/gms/internal/ads/zzabq;[Ljava/lang/String;)Z

    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->zzeje:Z

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->zzegj:Lcom/google/android/gms/internal/ads/zzabs;

    if-eqz v0, :cond_1d

    .line 41
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbdf;->zzyx()Ljava/lang/String;

    move-result-object v1

    const-string v2, "vpn"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzabs;->zzh(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    :cond_1d
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbdx;->zzeji:Lcom/google/android/gms/internal/ads/zzbdf;

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzbdf;)V
    .registers 21

    move-object/from16 v0, p0

    .line 72
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzbdx;->zzejg:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_29

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzbdx;->zzejh:Z

    if-nez v1, :cond_29

    .line 73
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzayp;->zzxa()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 74
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzbdx;->zzejh:Z

    if-nez v1, :cond_1a

    const-string v1, "VideoMetricsMixin first frame"

    .line 75
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzayp;->zzei(Ljava/lang/String;)V

    .line 76
    :cond_1a
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzbdx;->zzegj:Lcom/google/android/gms/internal/ads/zzabs;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzbdx;->zzeja:Lcom/google/android/gms/internal/ads/zzabq;

    const-string v4, "vff2"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzabj;->zza(Lcom/google/android/gms/internal/ads/zzabs;Lcom/google/android/gms/internal/ads/zzabq;[Ljava/lang/String;)Z

    .line 77
    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzbdx;->zzejh:Z

    .line 78
    :cond_29
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzky()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->nanoTime()J

    move-result-wide v3

    .line 79
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzbdx;->zzegn:Z

    const-wide/16 v5, 0x1

    if-eqz v1, :cond_5b

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzbdx;->zzejk:Z

    if-eqz v1, :cond_5b

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzbdx;->zzejl:J

    const-wide/16 v9, -0x1

    cmp-long v1, v7, v9

    if-eqz v1, :cond_5b

    .line 80
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v5, v6}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v7

    long-to-double v7, v7

    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/zzbdx;->zzejl:J

    sub-long v9, v3, v9

    long-to-double v9, v9

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v7, v9

    .line 81
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzbdx;->zzejb:Lcom/google/android/gms/internal/ads/zzbac;

    invoke-virtual {v1, v7, v8}, Lcom/google/android/gms/internal/ads/zzbac;->zza(D)V

    .line 82
    :cond_5b
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzbdx;->zzegn:Z

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzbdx;->zzejk:Z

    .line 83
    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/zzbdx;->zzejl:J

    .line 85
    sget-object v1, Lcom/google/android/gms/internal/ads/zzabb;->zzcmn:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 86
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v1

    .line 87
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 88
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzbdf;->getCurrentPosition()I

    move-result v1

    int-to-long v7, v1

    const/4 v1, 0x0

    const/4 v9, 0x0

    .line 89
    :goto_78
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzbdx;->zzejd:[Ljava/lang/String;

    array-length v11, v10

    if-ge v9, v11, :cond_eb

    .line 90
    aget-object v10, v10, v9

    if-nez v10, :cond_e6

    .line 91
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzbdx;->zzejc:[J

    aget-wide v11, v10, v9

    sub-long v11, v7, v11

    .line 92
    invoke-static {v11, v12}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    cmp-long v12, v3, v10

    if-lez v12, :cond_e6

    .line 93
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzbdx;->zzejd:[Ljava/lang/String;

    const/16 v4, 0x8

    move-object/from16 v10, p1

    .line 94
    invoke-virtual {v10, v4, v4}, Landroid/view/TextureView;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v7

    const-wide/16 v10, 0x3f

    move-wide v14, v10

    const/4 v8, 0x0

    const-wide/16 v10, 0x0

    :goto_9f
    if-ge v8, v4, :cond_d5

    move-wide v12, v14

    move-wide v14, v10

    const/4 v10, 0x0

    :goto_a4
    if-ge v10, v4, :cond_ce

    .line 99
    invoke-virtual {v7, v10, v8}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v11

    .line 100
    invoke-static {v11}, Landroid/graphics/Color;->blue(I)I

    move-result v16

    invoke-static {v11}, Landroid/graphics/Color;->red(I)I

    move-result v17

    add-int v16, v16, v17

    invoke-static {v11}, Landroid/graphics/Color;->green(I)I

    move-result v11

    add-int v11, v16, v11

    const/16 v4, 0x80

    if-le v11, v4, :cond_c1

    move-wide/from16 v17, v5

    goto :goto_c3

    :cond_c1
    const-wide/16 v17, 0x0

    :goto_c3
    long-to-int v4, v12

    shl-long v17, v17, v4

    or-long v14, v14, v17

    add-int/lit8 v10, v10, 0x1

    sub-long/2addr v12, v5

    const/16 v4, 0x8

    goto :goto_a4

    :cond_ce
    add-int/lit8 v8, v8, 0x1

    move-wide v10, v14

    const/16 v4, 0x8

    move-wide v14, v12

    goto :goto_9f

    .line 105
    :cond_d5
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v1

    const-string v1, "%016X"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 106
    aput-object v1, v3, v9

    return-void

    :cond_e6
    move-object/from16 v10, p1

    add-int/lit8 v9, v9, 0x1

    goto :goto_78

    :cond_eb
    return-void
.end method

.method public final zzfb()V
    .registers 4

    .line 44
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->zzeje:Z

    if-eqz v0, :cond_19

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->zzejf:Z

    if-eqz v0, :cond_9

    goto :goto_19

    .line 46
    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->zzegj:Lcom/google/android/gms/internal/ads/zzabs;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbdx;->zzeja:Lcom/google/android/gms/internal/ads/zzabq;

    const-string v2, "vfr2"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzabj;->zza(Lcom/google/android/gms/internal/ads/zzabs;Lcom/google/android/gms/internal/ads/zzabq;[Ljava/lang/String;)Z

    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->zzejf:Z

    :cond_19
    :goto_19
    return-void
.end method
