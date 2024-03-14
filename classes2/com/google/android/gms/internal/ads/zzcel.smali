.class public final Lcom/google/android/gms/internal/ads/zzcel;
.super Lcom/google/android/gms/internal/ads/zzcem;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private final zzdkw:Z

.field private final zzdkx:Z

.field private final zzdtm:Z

.field private final zzgaf:Lorg/json/JSONObject;

.field private final zzgag:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdnv;Lorg/json/JSONObject;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzcem;-><init>(Lcom/google/android/gms/internal/ads/zzdnv;)V

    const-string p1, "tracking_urls_and_actions"

    const-string v0, "active_view"

    .line 2
    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzbao;->zza(Lorg/json/JSONObject;[Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcel;->zzgaf:Lorg/json/JSONObject;

    const-string p1, "allow_pub_owned_ad_view"

    .line 3
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0, p2, p1}, Lcom/google/android/gms/internal/ads/zzbao;->zza(ZLorg/json/JSONObject;[Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcel;->zzdkx:Z

    const-string p1, "attribution"

    const-string v1, "allow_pub_rendering"

    .line 4
    filled-new-array {p1, v1}, [Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {v0, p2, p1}, Lcom/google/android/gms/internal/ads/zzbao;->zza(ZLorg/json/JSONObject;[Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcel;->zzdkw:Z

    const-string p1, "enable_omid"

    .line 6
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p2, p1}, Lcom/google/android/gms/internal/ads/zzbao;->zza(ZLorg/json/JSONObject;[Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcel;->zzdtm:Z

    if-eqz p2, :cond_43

    const-string p1, "overlay"

    .line 8
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_43

    const/4 v0, 0x1

    :cond_43
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcel;->zzgag:Z

    return-void
.end method


# virtual methods
.method public final zzalw()Z
    .registers 2

    .line 17
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcel;->zzdtm:Z

    return v0
.end method

.method public final zzaml()Lorg/json/JSONObject;
    .registers 3

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcel;->zzgaf:Lorg/json/JSONObject;

    if-eqz v0, :cond_5

    return-object v0

    .line 12
    :cond_5
    :try_start_5
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcel;->zzgah:Lcom/google/android/gms/internal/ads/zzdnv;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzdnv;->zzdsv:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_e} :catch_f

    return-object v0

    :catch_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzamm()Z
    .registers 2

    .line 15
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcel;->zzgag:Z

    return v0
.end method

.method public final zzamn()Z
    .registers 2

    .line 16
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcel;->zzdkx:Z

    return v0
.end method

.method public final zzamo()Z
    .registers 2

    .line 18
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcel;->zzdkw:Z

    return v0
.end method
