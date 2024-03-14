.class public final Lcom/google/android/gms/internal/ads/zzcnu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private enabled:Z

.field private final executor:Ljava/util/concurrent/Executor;

.field private final zzbot:Lcom/google/android/gms/internal/ads/zzbbx;

.field private final zzclo:Landroid/content/Context;

.field private final zzfoc:Ljava/util/concurrent/Executor;

.field private final zzfoz:Ljava/util/concurrent/ScheduledExecutorService;

.field private zzgie:Z

.field private zzgif:Z
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final zzgig:J

.field private final zzgih:Lcom/google/android/gms/internal/ads/zzbcg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzbcg<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final zzgii:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final zzgij:Lcom/google/android/gms/internal/ads/zzcku;

.field private final zzgik:Lcom/google/android/gms/internal/ads/zzcne;

.field private zzgil:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzaiq;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Landroid/content/Context;Ljava/lang/ref/WeakReference;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzcku;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/zzcne;Lcom/google/android/gms/internal/ads/zzbbx;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/content/Context;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/internal/ads/zzcku;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Lcom/google/android/gms/internal/ads/zzcne;",
            "Lcom/google/android/gms/internal/ads/zzbbx;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcnu;->zzgie:Z

    .line 3
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcnu;->zzgif:Z

    .line 5
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbcg;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzbcg;-><init>()V

    .line 6
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcnu;->zzgih:Lcom/google/android/gms/internal/ads/zzbcg;

    .line 7
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcnu;->zzgil:Ljava/util/Map;

    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcnu;->enabled:Z

    .line 9
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzcnu;->zzgij:Lcom/google/android/gms/internal/ads/zzcku;

    .line 10
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcnu;->zzclo:Landroid/content/Context;

    .line 11
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcnu;->zzgii:Ljava/lang/ref/WeakReference;

    .line 12
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcnu;->executor:Ljava/util/concurrent/Executor;

    .line 13
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzcnu;->zzfoz:Ljava/util/concurrent/ScheduledExecutorService;

    .line 14
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcnu;->zzfoc:Ljava/util/concurrent/Executor;

    .line 15
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzcnu;->zzgik:Lcom/google/android/gms/internal/ads/zzcne;

    .line 16
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzcnu;->zzbot:Lcom/google/android/gms/internal/ads/zzbbx;

    .line 17
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzky()Lcom/google/android/gms/common/util/Clock;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzcnu;->zzgig:J

    const-string p1, "com.google.android.gms.ads.MobileAds"

    const-string p2, ""

    .line 18
    invoke-direct {p0, p1, v0, p2, v0}, Lcom/google/android/gms/internal/ads/zzcnu;->zza(Ljava/lang/String;ZLjava/lang/String;I)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzcnu;)J
    .registers 3

    .line 165
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcnu;->zzgig:J

    return-wide v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzcnu;Ljava/lang/String;)V
    .registers 2

    .line 169
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzcnu;->zzgl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzcnu;Ljava/lang/String;ZLjava/lang/String;I)V
    .registers 5

    .line 166
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzcnu;->zza(Ljava/lang/String;ZLjava/lang/String;I)V

    return-void
.end method

.method private final zza(Ljava/lang/String;ZLjava/lang/String;I)V
    .registers 7

    .line 127
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcnu;->zzgil:Ljava/util/Map;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaiq;

    invoke-direct {v1, p1, p2, p4, p3}, Lcom/google/android/gms/internal/ads/zzaiq;-><init>(Ljava/lang/String;ZILjava/lang/String;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzcnu;Z)Z
    .registers 2

    const/4 p1, 0x1

    .line 164
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcnu;->zzgif:Z

    return p1
.end method

.method private final declared-synchronized zzapn()Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 59
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkv()Lcom/google/android/gms/internal/ads/zzayb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzayb;->zzwt()Lcom/google/android/gms/internal/ads/zzayr;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzayr;->zzxk()Lcom/google/android/gms/internal/ads/zzaxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaxy;->zzwg()Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 61
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdyq;->zzaf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v0
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_34

    monitor-exit p0

    return-object v0

    .line 62
    :cond_1d
    :try_start_1d
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbcg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbcg;-><init>()V

    .line 64
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkv()Lcom/google/android/gms/internal/ads/zzayb;

    move-result-object v1

    .line 65
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzayb;->zzwt()Lcom/google/android/gms/internal/ads/zzayr;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcnv;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/zzcnv;-><init>(Lcom/google/android/gms/internal/ads/zzcnu;Lcom/google/android/gms/internal/ads/zzbcg;)V

    .line 66
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzayr;->zzb(Ljava/lang/Runnable;)V
    :try_end_32
    .catchall {:try_start_1d .. :try_end_32} :catchall_34

    .line 67
    monitor-exit p0

    return-object v0

    :catchall_34
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzcnu;)Ljava/util/concurrent/Executor;
    .registers 1

    .line 167
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcnu;->executor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/ads/zzcnu;)Lcom/google/android/gms/internal/ads/zzbcg;
    .registers 1

    .line 168
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcnu;->zzgih:Lcom/google/android/gms/internal/ads/zzbcg;

    return-object p0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/ads/zzcnu;)Lcom/google/android/gms/internal/ads/zzcne;
    .registers 1

    .line 170
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcnu;->zzgik:Lcom/google/android/gms/internal/ads/zzcne;

    return-object p0
.end method

.method private final zzgl(Ljava/lang/String;)V
    .registers 20

    move-object/from16 v8, p0

    const-string v9, "data"

    .line 68
    :try_start_4
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 69
    new-instance v0, Lorg/json/JSONObject;

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "initializer_settings"

    .line 70
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "config"

    .line 71
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 72
    invoke-virtual {v11}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v12

    .line 73
    :goto_20
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_fd

    .line 74
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 75
    new-instance v13, Ljava/lang/Object;

    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v14, Lcom/google/android/gms/internal/ads/zzbcg;

    invoke-direct {v14}, Lcom/google/android/gms/internal/ads/zzbcg;-><init>()V

    .line 78
    sget-object v1, Lcom/google/android/gms/internal/ads/zzabb;->zzcqk:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 80
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v1

    .line 81
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v4, v8, Lcom/google/android/gms/internal/ads/zzcnu;->zzfoz:Ljava/util/concurrent/ScheduledExecutorService;

    .line 82
    invoke-static {v14, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzdyq;->zza(Lcom/google/android/gms/internal/ads/zzdzc;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v15

    .line 83
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzcnu;->zzgik:Lcom/google/android/gms/internal/ads/zzcne;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzcne;->zzgj(Ljava/lang/String;)V

    .line 84
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzky()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v16

    .line 85
    new-instance v6, Lcom/google/android/gms/internal/ads/zzcnx;

    move-object v1, v6

    move-object/from16 v2, p0

    move-object v3, v13

    move-object v4, v14

    move-object v5, v0

    move-object/from16 p1, v12

    move-object v12, v6

    move-wide/from16 v6, v16

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzcnx;-><init>(Lcom/google/android/gms/internal/ads/zzcnu;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbcg;Ljava/lang/String;J)V

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzcnu;->executor:Ljava/util/concurrent/Executor;

    invoke-interface {v15, v12, v1}, Lcom/google/android/gms/internal/ads/zzdzc;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 86
    invoke-interface {v10, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    new-instance v12, Lcom/google/android/gms/internal/ads/zzcod;

    move-object v1, v12

    move-object/from16 v2, p0

    move-object v3, v13

    move-object v4, v0

    move-wide/from16 v5, v16

    move-object v7, v14

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzcod;-><init>(Lcom/google/android/gms/internal/ads/zzcnu;Ljava/lang/Object;Ljava/lang/String;JLcom/google/android/gms/internal/ads/zzbcg;)V

    .line 88
    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 89
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
    :try_end_89
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_89} :catch_10c

    const-string v7, ""

    if-eqz v1, :cond_d0

    .line 91
    :try_start_8d
    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v3, 0x0

    .line 92
    :goto_92
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_d0

    .line 93
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v6, "format"

    .line 94
    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 95
    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 96
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    if-eqz v4, :cond_c5

    .line 98
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v14

    .line 99
    :goto_b1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_c5

    .line 100
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 101
    invoke-virtual {v4, v15, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v15, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b1

    .line 105
    :cond_c5
    new-instance v2, Lcom/google/android/gms/internal/ads/zzaja;

    invoke-direct {v2, v6, v13}, Lcom/google/android/gms/internal/ads/zzaja;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_cd
    .catch Lorg/json/JSONException; {:try_start_8d .. :try_end_cd} :catch_d0

    add-int/lit8 v3, v3, 0x1

    goto :goto_92

    :catch_d0
    :cond_d0
    const/4 v1, 0x0

    .line 109
    :try_start_d1
    invoke-direct {v8, v0, v1, v7, v1}, Lcom/google/android/gms/internal/ads/zzcnu;->zza(Ljava/lang/String;ZLjava/lang/String;I)V
    :try_end_d4
    .catch Lorg/json/JSONException; {:try_start_d1 .. :try_end_d4} :catch_10c

    .line 111
    :try_start_d4
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzcnu;->zzgij:Lcom/google/android/gms/internal/ads/zzcku;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzcku;->zzd(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzdpa;

    move-result-object v3

    .line 112
    iget-object v13, v8, Lcom/google/android/gms/internal/ads/zzcnu;->zzfoc:Ljava/util/concurrent/Executor;

    new-instance v14, Lcom/google/android/gms/internal/ads/zzcnz;

    move-object v1, v14

    move-object/from16 v2, p0

    move-object v4, v12

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzcnz;-><init>(Lcom/google/android/gms/internal/ads/zzcnu;Lcom/google/android/gms/internal/ads/zzdpa;Lcom/google/android/gms/internal/ads/zzais;Ljava/util/List;Ljava/lang/String;)V

    invoke-interface {v13, v14}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_ee
    .catch Lcom/google/android/gms/internal/ads/zzdos; {:try_start_d4 .. :try_end_ee} :catch_ef
    .catch Lorg/json/JSONException; {:try_start_d4 .. :try_end_ee} :catch_10c

    goto :goto_f4

    :catch_ef
    :try_start_ef
    const-string v0, "Failed to create Adapter."

    .line 115
    invoke-interface {v12, v0}, Lcom/google/android/gms/internal/ads/zzais;->onInitializationFailed(Ljava/lang/String;)V
    :try_end_f4
    .catch Landroid/os/RemoteException; {:try_start_ef .. :try_end_f4} :catch_f8
    .catch Lorg/json/JSONException; {:try_start_ef .. :try_end_f4} :catch_10c

    :goto_f4
    move-object/from16 v12, p1

    goto/16 :goto_20

    :catch_f8
    move-exception v0

    .line 118
    :try_start_f9
    invoke-static {v7, v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_f4

    .line 121
    :cond_fd
    invoke-static {v10}, Lcom/google/android/gms/internal/ads/zzdyq;->zzj(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzdyv;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcoa;

    invoke-direct {v1, v8}, Lcom/google/android/gms/internal/ads/zzcoa;-><init>(Lcom/google/android/gms/internal/ads/zzcnu;)V

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzcnu;->executor:Ljava/util/concurrent/Executor;

    .line 122
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdyv;->zza(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzc;
    :try_end_10b
    .catch Lorg/json/JSONException; {:try_start_f9 .. :try_end_10b} :catch_10c

    return-void

    :catch_10c
    move-exception v0

    const-string v1, "Malformed CLD response"

    .line 125
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzayp;->zza(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final disable()V
    .registers 2

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcnu;->enabled:Z

    return-void
.end method

.method final synthetic zza(Lcom/google/android/gms/internal/ads/zzbcg;)V
    .registers 4

    .line 157
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcnu;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcoc;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzcoc;-><init>(Lcom/google/android/gms/internal/ads/zzcnu;Lcom/google/android/gms/internal/ads/zzbcg;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method final synthetic zza(Lcom/google/android/gms/internal/ads/zzdpa;Lcom/google/android/gms/internal/ads/zzais;Ljava/util/List;Ljava/lang/String;)V
    .registers 6

    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcnu;->zzgii:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_b

    goto :goto_d

    .line 130
    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcnu;->zzclo:Landroid/content/Context;

    .line 131
    :goto_d
    invoke-virtual {p1, v0, p2, p3}, Lcom/google/android/gms/internal/ads/zzdpa;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzais;Ljava/util/List;)V
    :try_end_10
    .catch Lcom/google/android/gms/internal/ads/zzdos; {:try_start_0 .. :try_end_10} :catch_11

    return-void

    .line 134
    :catch_11
    :try_start_11
    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x4a

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "Failed to initialize adapter. "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not implement the initialize() method."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzais;->onInitializationFailed(Ljava/lang/String;)V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_34} :catch_35

    return-void

    :catch_35
    move-exception p1

    const-string p2, ""

    .line 137
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method final synthetic zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbcg;Ljava/lang/String;J)V
    .registers 9

    .line 141
    monitor-enter p1

    .line 142
    :try_start_1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzbcg;->isDone()Z

    move-result v0

    if-nez v0, :cond_25

    const-string v0, "Timeout."

    .line 144
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzky()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v1

    sub-long/2addr v1, p4

    long-to-int p4, v1

    const/4 p5, 0x0

    .line 145
    invoke-direct {p0, p3, p5, v0, p4}, Lcom/google/android/gms/internal/ads/zzcnu;->zza(Ljava/lang/String;ZLjava/lang/String;I)V

    .line 146
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzcnu;->zzgik:Lcom/google/android/gms/internal/ads/zzcne;

    const-string v0, "timeout"

    invoke-virtual {p4, p3, v0}, Lcom/google/android/gms/internal/ads/zzcne;->zzs(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzbcg;->set(Ljava/lang/Object;)Z

    .line 148
    :cond_25
    monitor-exit p1

    return-void

    :catchall_27
    move-exception p2

    monitor-exit p1
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_27

    throw p2
.end method

.method public final zzapl()V
    .registers 7

    .line 24
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabb;->zzcqi:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 25
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 26
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8a

    sget-object v0, Lcom/google/android/gms/internal/ads/zzacx;->zzdbt:Lcom/google/android/gms/internal/ads/zzaci;

    .line 27
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaci;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_8a

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcnu;->zzbot:Lcom/google/android/gms/internal/ads/zzbbx;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzbbx;->zzeem:I

    sget-object v2, Lcom/google/android/gms/internal/ads/zzabb;->zzcqj:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 29
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v2

    .line 30
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v0, v2, :cond_8a

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcnu;->enabled:Z

    if-nez v0, :cond_3c

    goto :goto_8a

    .line 36
    :cond_3c
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcnu;->zzgie:Z

    if-eqz v0, :cond_41

    return-void

    .line 38
    :cond_41
    monitor-enter p0

    .line 39
    :try_start_42
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcnu;->zzgie:Z

    if-eqz v0, :cond_48

    .line 40
    monitor-exit p0

    return-void

    .line 41
    :cond_48
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcnu;->zzgik:Lcom/google/android/gms/internal/ads/zzcne;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcne;->zzapi()V

    .line 42
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcnu;->zzgih:Lcom/google/android/gms/internal/ads/zzbcg;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcnw;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzcnw;-><init>(Lcom/google/android/gms/internal/ads/zzcnu;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcnu;->executor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzbcg;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 43
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcnu;->zzgie:Z

    .line 44
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcnu;->zzapn()Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v0

    .line 46
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcnu;->zzfoz:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcny;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzcny;-><init>(Lcom/google/android/gms/internal/ads/zzcnu;)V

    sget-object v3, Lcom/google/android/gms/internal/ads/zzabb;->zzcql:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 48
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v3

    .line 49
    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 50
    invoke-interface {v1, v2, v3, v4, v5}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 51
    new-instance v1, Lcom/google/android/gms/internal/ads/zzcob;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzcob;-><init>(Lcom/google/android/gms/internal/ads/zzcnu;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcnu;->executor:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdyq;->zza(Lcom/google/android/gms/internal/ads/zzdzc;Lcom/google/android/gms/internal/ads/zzdyr;Ljava/util/concurrent/Executor;)V

    .line 52
    monitor-exit p0

    return-void

    :catchall_87
    move-exception v0

    monitor-exit p0
    :try_end_89
    .catchall {:try_start_42 .. :try_end_89} :catchall_87

    throw v0

    .line 31
    :cond_8a
    :goto_8a
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcnu;->zzgie:Z

    if-nez v0, :cond_a1

    const/4 v0, 0x0

    const-string v2, "com.google.android.gms.ads.MobileAds"

    const-string v3, ""

    .line 32
    invoke-direct {p0, v2, v1, v3, v0}, Lcom/google/android/gms/internal/ads/zzcnu;->zza(Ljava/lang/String;ZLjava/lang/String;I)V

    .line 33
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcnu;->zzgih:Lcom/google/android/gms/internal/ads/zzbcg;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbcg;->set(Ljava/lang/Object;)Z

    .line 34
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcnu;->zzgie:Z

    :cond_a1
    return-void
.end method

.method public final zzapm()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzaiq;",
            ">;"
        }
    .end annotation

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 54
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcnu;->zzgil:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 55
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcnu;->zzgil:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzaiq;

    .line 56
    new-instance v4, Lcom/google/android/gms/internal/ads/zzaiq;

    iget-boolean v5, v3, Lcom/google/android/gms/internal/ads/zzaiq;->zzdga:Z

    iget v6, v3, Lcom/google/android/gms/internal/ads/zzaiq;->zzdgb:I

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzaiq;->description:Ljava/lang/String;

    invoke-direct {v4, v2, v5, v6, v3}, Lcom/google/android/gms/internal/ads/zzaiq;-><init>(Ljava/lang/String;ZILjava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_32
    return-object v0
.end method

.method final synthetic zzapo()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcnu;->zzgih:Lcom/google/android/gms/internal/ads/zzbcg;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbcg;->set(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    return-object v0
.end method

.method final synthetic zzapp()V
    .registers 8

    .line 149
    monitor-enter p0

    .line 150
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcnu;->zzgif:Z

    if-eqz v0, :cond_7

    .line 151
    monitor-exit p0

    return-void

    :cond_7
    const-string v0, "com.google.android.gms.ads.MobileAds"

    const/4 v1, 0x0

    const-string v2, "Timeout."

    .line 153
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzky()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzcnu;->zzgig:J

    sub-long/2addr v3, v5

    long-to-int v4, v3

    .line 154
    invoke-direct {p0, v0, v1, v2, v4}, Lcom/google/android/gms/internal/ads/zzcnu;->zza(Ljava/lang/String;ZLjava/lang/String;I)V

    .line 155
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcnu;->zzgih:Lcom/google/android/gms/internal/ads/zzbcg;

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbcg;->setException(Ljava/lang/Throwable;)Z

    .line 156
    monitor-exit p0

    return-void

    :catchall_27
    move-exception v0

    monitor-exit p0
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_27

    throw v0
.end method

.method final synthetic zzapq()V
    .registers 2

    .line 158
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcnu;->zzgik:Lcom/google/android/gms/internal/ads/zzcne;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcne;->zzapj()V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzait;)V
    .registers 4

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcnu;->zzgih:Lcom/google/android/gms/internal/ads/zzbcg;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcnt;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzcnt;-><init>(Lcom/google/android/gms/internal/ads/zzcnu;Lcom/google/android/gms/internal/ads/zzait;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcnu;->zzfoc:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzbcg;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method final synthetic zzc(Lcom/google/android/gms/internal/ads/zzait;)V
    .registers 3

    .line 159
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcnu;->zzapm()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzait;->zze(Ljava/util/List;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception p1

    const-string v0, ""

    .line 162
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
