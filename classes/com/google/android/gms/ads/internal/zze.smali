.class public final Lcom/google/android/gms/ads/internal/zze;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private zzbop:J

.field private zzvr:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/google/android/gms/ads/internal/zze;->zzbop:J

    return-void
.end method

.method private final zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbx;ZLcom/google/android/gms/internal/ads/zzaxy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 15
    .param p4    # Lcom/google/android/gms/internal/ads/zzaxy;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 8
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzky()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/ads/internal/zze;->zzbop:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v4, v0, v2

    if-gez v4, :cond_17

    const-string p1, "Not retrying to fetch app settings"

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzfe(Ljava/lang/String;)V

    return-void

    .line 11
    :cond_17
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzky()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/ads/internal/zze;->zzbop:J

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p4, :cond_26

    goto :goto_54

    .line 15
    :cond_26
    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzaxy;->zzwe()J

    move-result-wide v2

    .line 16
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzky()Lcom/google/android/gms/common/util/Clock;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    .line 17
    sget-object v2, Lcom/google/android/gms/internal/ads/zzabb;->zzcst:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 19
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v2

    .line 20
    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v6, v4, v2

    if-lez v6, :cond_49

    const/4 v2, 0x1

    goto :goto_4a

    :cond_49
    const/4 v2, 0x0

    :goto_4a
    if-nez v2, :cond_54

    .line 21
    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzaxy;->zzwf()Z

    move-result p4

    if-nez p4, :cond_53

    goto :goto_54

    :cond_53
    const/4 v1, 0x0

    :cond_54
    :goto_54
    if-nez v1, :cond_57

    return-void

    :cond_57
    if-nez p1, :cond_5f

    const-string p1, "Context not provided to fetch application settings"

    .line 25
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzfe(Ljava/lang/String;)V

    return-void

    .line 27
    :cond_5f
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_71

    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_71

    const-string p1, "App settings could not be fetched. Required parameters missing"

    .line 28
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzfe(Ljava/lang/String;)V

    return-void

    .line 30
    :cond_71
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p4

    if-eqz p4, :cond_78

    goto :goto_79

    :cond_78
    move-object p4, p1

    .line 31
    :goto_79
    iput-object p4, p0, Lcom/google/android/gms/ads/internal/zze;->zzvr:Landroid/content/Context;

    .line 32
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzle()Lcom/google/android/gms/internal/ads/zzalw;

    move-result-object p4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zze;->zzvr:Landroid/content/Context;

    .line 33
    invoke-virtual {p4, v0, p2}, Lcom/google/android/gms/internal/ads/zzalw;->zzb(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbx;)Lcom/google/android/gms/internal/ads/zzamb;

    move-result-object p2

    sget-object p4, Lcom/google/android/gms/internal/ads/zzama;->zzdio:Lcom/google/android/gms/internal/ads/zzalx;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzama;->zzdio:Lcom/google/android/gms/internal/ads/zzalx;

    const-string v1, "google.afma.config.fetchAppSettings"

    .line 34
    invoke-virtual {p2, v1, p4, v0}, Lcom/google/android/gms/internal/ads/zzamb;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaly;Lcom/google/android/gms/internal/ads/zzalv;)Lcom/google/android/gms/internal/ads/zzalt;

    move-result-object p2

    .line 35
    :try_start_8f
    new-instance p4, Lorg/json/JSONObject;

    invoke-direct {p4}, Lorg/json/JSONObject;-><init>()V

    .line 36
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a0

    const-string p6, "app_id"

    .line 37
    invoke-virtual {p4, p6, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_ab

    .line 38
    :cond_a0
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    if-nez p5, :cond_ab

    const-string p5, "ad_unit_id"

    .line 39
    invoke-virtual {p4, p5, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_ab
    :goto_ab
    const-string p5, "is_init"

    .line 40
    invoke-virtual {p4, p5, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p3, "pn"

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 42
    invoke-interface {p2, p4}, Lcom/google/android/gms/internal/ads/zzalt;->zzi(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    .line 43
    sget-object p2, Lcom/google/android/gms/ads/internal/zzd;->zzboo:Lcom/google/android/gms/internal/ads/zzdya;

    .line 44
    sget-object p3, Lcom/google/android/gms/internal/ads/zzbbz;->zzeeu:Lcom/google/android/gms/internal/ads/zzdzb;

    .line 45
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzdyq;->zzb(Lcom/google/android/gms/internal/ads/zzdzc;Lcom/google/android/gms/internal/ads/zzdya;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p2

    if-eqz p7, :cond_cc

    .line 48
    sget-object p3, Lcom/google/android/gms/internal/ads/zzbbz;->zzeeu:Lcom/google/android/gms/internal/ads/zzdzb;

    .line 49
    invoke-interface {p1, p7, p3}, Lcom/google/android/gms/internal/ads/zzdzc;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_cc
    const-string p1, "ConfigLoader.maybeFetchNewAppSettings"

    .line 50
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzbcc;->zza(Lcom/google/android/gms/internal/ads/zzdzc;Ljava/lang/String;)V
    :try_end_d1
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_d1} :catch_d2

    return-void

    :catch_d2
    move-exception p1

    const-string p2, "Error requesting application settings"

    .line 53
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbx;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaxy;)V
    .registers 14

    if-eqz p4, :cond_7

    .line 5
    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzaxy;->zzwh()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    move-object v6, v0

    const/4 v4, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    move-object v7, p3

    .line 6
    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/ads/internal/zze;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbx;ZLcom/google/android/gms/internal/ads/zzaxy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbx;Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 13
    .param p4    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v7, p4

    .line 3
    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/ads/internal/zze;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbx;ZLcom/google/android/gms/internal/ads/zzaxy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method
