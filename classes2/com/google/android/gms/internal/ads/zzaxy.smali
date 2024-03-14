.class public final Lcom/google/android/gms/internal/ads/zzaxy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private zzdro:Ljava/lang/String;

.field private final zzdyp:J

.field private final zzdyq:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzdyr:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzdys:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzana;",
            ">;"
        }
    .end annotation
.end field

.field private zzdyt:Ljava/lang/String;

.field private zzdyu:Lorg/json/JSONObject;

.field private zzdyv:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .registers 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaxy;->zzdyq:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaxy;->zzdyr:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaxy;->zzdys:Ljava/util/Map;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaxy;->zzdyv:Z

    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaxy;->zzdro:Ljava/lang/String;

    .line 7
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzaxy;->zzdyp:J

    .line 9
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_d1

    .line 10
    :try_start_25
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaxy;->zzdyu:Lorg/json/JSONObject;

    .line 11
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaxy;->zzdyu:Lorg/json/JSONObject;

    const-string p2, "status"

    const/4 p3, -0x1

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_40

    .line 13
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaxy;->zzdyv:Z

    const-string p1, "App settings could not be fetched successfully."

    .line 14
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzfe(Ljava/lang/String;)V

    return-void

    .line 16
    :cond_40
    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzaxy;->zzdyv:Z

    .line 17
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaxy;->zzdyu:Lorg/json/JSONObject;

    const-string p2, "app_id"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaxy;->zzdyt:Ljava/lang/String;

    .line 18
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaxy;->zzdyu:Lorg/json/JSONObject;

    const-string p2, "ad_unit_id_settings"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_a5

    const/4 p2, 0x0

    .line 20
    :goto_57
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p3

    if-ge p2, p3, :cond_a5

    .line 21
    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p3

    const-string v1, "format"

    .line 23
    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ad_unit_id"

    .line 24
    invoke-virtual {p3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 25
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7a

    goto :goto_a2

    :cond_7a
    const-string v3, "interstitial"

    .line 27
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_88

    .line 28
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzaxy;->zzdyr:Ljava/util/List;

    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a2

    :cond_88
    const-string v3, "rewarded"

    .line 29
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a2

    const-string v1, "mediation_config"

    .line 30
    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p3

    if-eqz p3, :cond_a2

    .line 32
    new-instance v1, Lcom/google/android/gms/internal/ads/zzana;

    invoke-direct {v1, p3}, Lcom/google/android/gms/internal/ads/zzana;-><init>(Lorg/json/JSONObject;)V

    .line 33
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzaxy;->zzdys:Ljava/util/Map;

    invoke-interface {p3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a2
    :goto_a2
    add-int/lit8 p2, p2, 0x1

    goto :goto_57

    .line 35
    :cond_a5
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaxy;->zzdyu:Lorg/json/JSONObject;

    const-string p2, "persistable_banner_ad_unit_ids"

    .line 37
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_c1

    .line 39
    :goto_af
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p2

    if-ge v0, p2, :cond_c1

    .line 40
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object p2

    .line 41
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzaxy;->zzdyq:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_be
    .catch Lorg/json/JSONException; {:try_start_25 .. :try_end_be} :catch_c2

    add-int/lit8 v0, v0, 0x1

    goto :goto_af

    :cond_c1
    return-void

    :catch_c2
    move-exception p1

    const-string p2, "Exception occurred while processing app setting json"

    .line 45
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 46
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkv()Lcom/google/android/gms/internal/ads/zzayb;

    move-result-object p2

    const-string p3, "AppSettings.parseAppSettingsJson"

    invoke-virtual {p2, p1, p3}, Lcom/google/android/gms/internal/ads/zzayb;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_d1
    return-void
.end method


# virtual methods
.method public final zzwe()J
    .registers 3

    .line 48
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaxy;->zzdyp:J

    return-wide v0
.end method

.method public final zzwf()Z
    .registers 2

    .line 49
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaxy;->zzdyv:Z

    return v0
.end method

.method public final zzwg()Ljava/lang/String;
    .registers 2

    .line 50
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaxy;->zzdro:Ljava/lang/String;

    return-object v0
.end method

.method public final zzwh()Ljava/lang/String;
    .registers 2

    .line 51
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaxy;->zzdyt:Ljava/lang/String;

    return-object v0
.end method

.method public final zzwi()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzana;",
            ">;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaxy;->zzdys:Ljava/util/Map;

    return-object v0
.end method

.method public final zzwj()Lorg/json/JSONObject;
    .registers 2

    .line 53
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaxy;->zzdyu:Lorg/json/JSONObject;

    return-object v0
.end method
