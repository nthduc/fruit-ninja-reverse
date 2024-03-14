.class public final Lcom/google/android/gms/internal/ads/zzato;
.super Lcom/google/android/gms/internal/ads/zzatq;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private final lock:Ljava/lang/Object;

.field private final zzaai:Landroid/content/Context;

.field private zzdvn:Landroid/content/SharedPreferences;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzdvo:Lcom/google/android/gms/internal/ads/zzalt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzalt<",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzalt;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/ads/zzalt<",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzatq;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzato;->lock:Ljava/lang/Object;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzato;->zzaai:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzato;->zzdvo:Lcom/google/android/gms/internal/ads/zzalt;

    return-void
.end method

.method public static zzz(Landroid/content/Context;)Lorg/json/JSONObject;
    .registers 4

    .line 24
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v1, "js"

    .line 25
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbx;->zzyv()Lcom/google/android/gms/internal/ads/zzbbx;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzbbx;->zzbre:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mf"

    .line 26
    sget-object v2, Lcom/google/android/gms/internal/ads/zzacw;->zzdbr:Lcom/google/android/gms/internal/ads/zzaci;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzaci;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "cl"

    const-string v2, "330794610"

    .line 27
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "rapid_rc"

    const-string v2, "dev"

    .line 28
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "rapid_rollup"

    const-string v2, "HEAD"

    .line 29
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "admob_module_version"

    const/16 v2, 0x4f88

    .line 30
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "dynamite_local_version"

    const/16 v2, 0x55f0

    .line 31
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "dynamite_version"

    const-string v2, "com.google.android.gms.ads.dynamite"

    .line 33
    invoke-static {p0, v2}, Lcom/google/android/gms/dynamite/DynamiteModule;->getRemoteVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    .line 34
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "container_version"

    const v1, 0xbdfcc1

    .line 35
    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_51
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_51} :catch_51

    :catch_51
    return-object v0
.end method


# virtual methods
.method final synthetic zzf(Lorg/json/JSONObject;)Ljava/lang/Void;
    .registers 5

    .line 39
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzato;->zzaai:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzabb;->zza(Landroid/content/Context;ILorg/json/JSONObject;)V

    .line 41
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzato;->zzdvn:Landroid/content/SharedPreferences;

    .line 42
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 43
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzky()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "js_last_update"

    invoke-interface {p1, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 44
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final zzvo()Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzato;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 8
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzato;->zzdvn:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_9

    .line 9
    monitor-exit v0

    goto :goto_15

    .line 10
    :cond_9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzato;->zzaai:Landroid/content/Context;

    const-string v2, "google_ads_flags_meta"

    const/4 v3, 0x0

    .line 11
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzato;->zzdvn:Landroid/content/SharedPreferences;

    .line 12
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_56

    .line 14
    :goto_15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzato;->zzdvn:Landroid/content/SharedPreferences;

    const-wide/16 v1, 0x0

    const-string v3, "js_last_update"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 16
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzky()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 17
    sget-object v0, Lcom/google/android/gms/internal/ads/zzacw;->zzdbs:Lcom/google/android/gms/internal/ads/zzaci;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaci;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v4, v2, v0

    if-gez v4, :cond_3e

    const/4 v0, 0x0

    .line 18
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdyq;->zzaf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v0

    return-object v0

    .line 19
    :cond_3e
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzato;->zzaai:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzato;->zzz(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    .line 20
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzato;->zzdvo:Lcom/google/android/gms/internal/ads/zzalt;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzalt;->zzi(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v0

    .line 21
    new-instance v1, Lcom/google/android/gms/internal/ads/zzatr;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzatr;-><init>(Lcom/google/android/gms/internal/ads/zzato;)V

    .line 22
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbbz;->zzeeu:Lcom/google/android/gms/internal/ads/zzdzb;

    .line 23
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdyq;->zzb(Lcom/google/android/gms/internal/ads/zzdzc;Lcom/google/android/gms/internal/ads/zzdvu;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v0

    return-object v0

    :catchall_56
    move-exception v1

    .line 12
    :try_start_57
    monitor-exit v0
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_56

    throw v1
.end method
