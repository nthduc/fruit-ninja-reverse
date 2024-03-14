.class public final Lcom/google/android/gms/internal/ads/zzbdv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field public final zzeip:Z

.field public final zzeiq:I

.field public final zzeir:I

.field public final zzeis:I

.field private final zzeit:Ljava/lang/String;

.field public final zzeiu:I

.field public final zzeiv:I

.field public final zzeiw:I

.field public final zzeix:I

.field public final zzeiy:Z

.field public final zzeiz:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-eqz p1, :cond_c

    .line 4
    :try_start_6
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_b} :catch_c

    move-object v0, v1

    .line 7
    :catch_c
    :cond_c
    sget-object p1, Lcom/google/android/gms/internal/ads/zzabb;->zzcmt:Lcom/google/android/gms/internal/ads/zzaaq;

    const-string v1, "aggressive_media_codec_release"

    .line 8
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzbdv;->zza(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaaq;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbdv;->zzeip:Z

    .line 9
    sget-object p1, Lcom/google/android/gms/internal/ads/zzabb;->zzcmb:Lcom/google/android/gms/internal/ads/zzaaq;

    const-string v1, "byte_buffer_precache_limit"

    .line 10
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzbdv;->zzb(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaaq;)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbdv;->zzeiq:I

    .line 11
    sget-object p1, Lcom/google/android/gms/internal/ads/zzabb;->zzcmi:Lcom/google/android/gms/internal/ads/zzaaq;

    const-string v1, "exo_cache_buffer_size"

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzbdv;->zzb(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaaq;)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbdv;->zzeir:I

    .line 12
    sget-object p1, Lcom/google/android/gms/internal/ads/zzabb;->zzclx:Lcom/google/android/gms/internal/ads/zzaaq;

    const-string v1, "exo_connect_timeout_millis"

    .line 13
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzbdv;->zzb(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaaq;)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbdv;->zzeis:I

    .line 14
    sget-object p1, Lcom/google/android/gms/internal/ads/zzabb;->zzclw:Lcom/google/android/gms/internal/ads/zzaaq;

    const-string v1, "exo_player_version"

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzbdv;->zzc(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbdv;->zzeit:Ljava/lang/String;

    .line 15
    sget-object p1, Lcom/google/android/gms/internal/ads/zzabb;->zzcly:Lcom/google/android/gms/internal/ads/zzaaq;

    const-string v1, "exo_read_timeout_millis"

    .line 16
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzbdv;->zzb(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaaq;)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbdv;->zzeiu:I

    .line 17
    sget-object p1, Lcom/google/android/gms/internal/ads/zzabb;->zzclz:Lcom/google/android/gms/internal/ads/zzaaq;

    const-string v1, "load_check_interval_bytes"

    .line 18
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzbdv;->zzb(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaaq;)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbdv;->zzeiv:I

    .line 19
    sget-object p1, Lcom/google/android/gms/internal/ads/zzabb;->zzcma:Lcom/google/android/gms/internal/ads/zzaaq;

    const-string v1, "player_precache_limit"

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzbdv;->zzb(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaaq;)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbdv;->zzeiw:I

    .line 20
    sget-object p1, Lcom/google/android/gms/internal/ads/zzabb;->zzcmc:Lcom/google/android/gms/internal/ads/zzaaq;

    const-string v1, "socket_receive_buffer_size"

    .line 21
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzbdv;->zzb(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaaq;)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbdv;->zzeix:I

    .line 22
    sget-object p1, Lcom/google/android/gms/internal/ads/zzabb;->zzctc:Lcom/google/android/gms/internal/ads/zzaaq;

    const-string v1, "use_cache_data_source"

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzbdv;->zza(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaaq;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbdv;->zzeiy:Z

    .line 23
    sget-object p1, Lcom/google/android/gms/internal/ads/zzabb;->zzcme:Lcom/google/android/gms/internal/ads/zzaaq;

    const-string v1, "min_retry_count"

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzbdv;->zzb(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaaq;)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbdv;->zzeiz:I

    return-void
.end method

.method private static zza(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaaq;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzaaq<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 26
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object p2

    .line 27
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbdv;->zza(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private static zza(Lorg/json/JSONObject;Ljava/lang/String;Z)Z
    .registers 3

    if-eqz p0, :cond_7

    .line 29
    :try_start_2
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p0
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_6} :catch_7

    return p0

    :catch_7
    :cond_7
    return p2
.end method

.method private static zzb(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaaq;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzaaq<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    if-eqz p0, :cond_7

    .line 34
    :try_start_2
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_6} :catch_7

    return p0

    .line 38
    :catch_7
    :cond_7
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object p0

    .line 39
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private static zzc(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzaaq<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_7

    .line 41
    :try_start_2
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_6} :catch_7

    return-object p0

    .line 45
    :catch_7
    :cond_7
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object p0

    .line 46
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method
