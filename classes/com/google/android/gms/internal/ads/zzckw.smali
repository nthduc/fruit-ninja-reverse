.class public final Lcom/google/android/gms/internal/ads/zzckw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private final executor:Ljava/util/concurrent/Executor;

.field private final zzggb:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;>;"
        }
    .end annotation
.end field

.field private zzggc:Lorg/json/JSONObject;

.field private zzxi:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzckw;->zzggb:Ljava/util/Map;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzckw;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private final declared-synchronized zzaoi()V
    .registers 8

    monitor-enter p0

    const/4 v0, 0x1

    .line 28
    :try_start_2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzckw;->zzxi:Z

    .line 29
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkv()Lcom/google/android/gms/internal/ads/zzayb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzayb;->zzwt()Lcom/google/android/gms/internal/ads/zzayr;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzayr;->zzxk()Lcom/google/android/gms/internal/ads/zzaxy;

    move-result-object v0
    :try_end_10
    .catchall {:try_start_2 .. :try_end_10} :catchall_77

    if-nez v0, :cond_14

    .line 31
    monitor-exit p0

    return-void

    .line 32
    :cond_14
    :try_start_14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaxy;->zzwj()Lorg/json/JSONObject;

    move-result-object v0
    :try_end_18
    .catchall {:try_start_14 .. :try_end_18} :catchall_77

    if-nez v0, :cond_1c

    .line 34
    monitor-exit p0

    return-void

    :cond_1c
    :try_start_1c
    const-string v1, "ad_unit_patterns"

    .line 35
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzckw;->zzggc:Lorg/json/JSONObject;

    const-string v1, "ad_unit_id_settings"

    .line 36
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0
    :try_end_2a
    .catchall {:try_start_1c .. :try_end_2a} :catchall_77

    if-nez v0, :cond_2e

    .line 38
    monitor-exit p0

    return-void

    :cond_2e
    const/4 v1, 0x0

    .line 39
    :goto_2f
    :try_start_2f
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_75

    .line 40
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_72

    const-string v3, "ad_unit_id"

    .line 42
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "format"

    .line 43
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "request_signals"

    .line 44
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v3, :cond_72

    if-eqz v2, :cond_72

    if-eqz v4, :cond_72

    .line 46
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzckw;->zzggb:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_64

    .line 47
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzckw;->zzggb:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    goto :goto_6f

    .line 48
    :cond_64
    new-instance v5, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 49
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzckw;->zzggb:Ljava/util/Map;

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v5

    .line 50
    :goto_6f
    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_72
    .catchall {:try_start_2f .. :try_end_72} :catchall_77

    :cond_72
    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    .line 52
    :cond_75
    monitor-exit p0

    return-void

    :catchall_77
    move-exception v0

    monitor-exit p0

    throw v0

    return-void
.end method


# virtual methods
.method public final zzaoh()V
    .registers 3

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkv()Lcom/google/android/gms/internal/ads/zzayb;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzayb;->zzwt()Lcom/google/android/gms/internal/ads/zzayr;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzckv;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzckv;-><init>(Lcom/google/android/gms/internal/ads/zzckw;)V

    .line 7
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzayr;->zzb(Ljava/lang/Runnable;)V

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckw;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcky;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzcky;-><init>(Lcom/google/android/gms/internal/ads/zzckw;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method final synthetic zzaoj()V
    .registers 1

    .line 53
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzckw;->zzaoi()V

    return-void
.end method

.method final synthetic zzaok()V
    .registers 3

    .line 54
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckw;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzckx;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzckx;-><init>(Lcom/google/android/gms/internal/ads/zzckw;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method final synthetic zzaol()V
    .registers 1

    .line 55
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzckw;->zzaoi()V

    return-void
.end method

.method public final zzq(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 6
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 10
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabb;->zzcsr:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 12
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_14

    return-object v1

    :cond_14
    if-eqz p1, :cond_44

    if-nez p2, :cond_19

    goto :goto_44

    .line 16
    :cond_19
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzckw;->zzxi:Z

    if-nez v0, :cond_20

    .line 17
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzckw;->zzaoi()V

    .line 18
    :cond_20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckw;->zzggb:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_2b

    return-object v1

    .line 21
    :cond_2b
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    if-eqz v2, :cond_34

    return-object v2

    .line 24
    :cond_34
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzckw;->zzggc:Lorg/json/JSONObject;

    invoke-static {v2, p1, p2}, Lcom/google/android/gms/internal/ads/zzckz;->zza(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3d

    return-object v1

    .line 27
    :cond_3d
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    return-object p1

    :cond_44
    :goto_44
    return-object v1
.end method
