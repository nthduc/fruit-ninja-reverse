.class public final Lcom/google/android/gms/internal/ads/zzati;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private final errorCode:I

.field private final type:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private final zzdrb:Ljava/lang/String;

.field private final zzdto:Ljava/lang/String;

.field private final zzdtp:Z

.field private final zzduc:Ljava/lang/String;

.field private final zzdue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzduf:Ljava/lang/String;

.field private final zzdug:Ljava/lang/String;

.field private final zzduh:Z

.field private final zzdui:Ljava/lang/String;

.field private final zzduj:Z

.field private final zzduk:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "url"

    .line 2
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzati;->url:Ljava/lang/String;

    const-string v0, "base_uri"

    .line 3
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzati;->zzduf:Ljava/lang/String;

    const-string v0, "post_parameters"

    .line 4
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzati;->zzdug:Ljava/lang/String;

    const-string v0, "drt_include"

    .line 5
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_37

    const-string v3, "1"

    .line 6
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_35

    const-string v3, "true"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    :cond_35
    const/4 v0, 0x1

    goto :goto_38

    :cond_37
    const/4 v0, 0x0

    .line 7
    :goto_38
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzati;->zzduh:Z

    const-string v0, "request_id"

    .line 8
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzati;->zzdrb:Ljava/lang/String;

    const-string v0, "type"

    .line 9
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzati;->type:Ljava/lang/String;

    const-string v0, "errors"

    .line 10
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_54

    const/4 v0, 0x0

    goto :goto_5e

    :cond_54
    const-string v3, ","

    .line 11
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 12
    :goto_5e
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzati;->zzdue:Ljava/util/List;

    const-string v0, "valid"

    .line 14
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_69

    const/4 v2, -0x2

    .line 16
    :cond_69
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzati;->errorCode:I

    const-string v0, "fetched_ad"

    .line 17
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzati;->zzdui:Ljava/lang/String;

    const-string v0, "render_test_ad_label"

    .line 18
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzati;->zzduj:Z

    const-string v0, "preprocessor_flags"

    .line 20
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_84

    goto :goto_89

    .line 21
    :cond_84
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 22
    :goto_89
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzati;->zzduk:Lorg/json/JSONObject;

    const-string v0, "analytics_query_ad_event_id"

    .line 23
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzati;->zzdto:Ljava/lang/String;

    const-string v0, "is_analytics_logging_enabled"

    .line 24
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzati;->zzdtp:Z

    const-string v0, "pool_key"

    .line 25
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzati;->zzduc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getErrorCode()I
    .registers 2

    .line 27
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzati;->errorCode:I

    return v0
.end method

.method public final getUrl()Ljava/lang/String;
    .registers 2

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzati;->url:Ljava/lang/String;

    return-object v0
.end method

.method public final zzvh()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzati;->zzdue:Ljava/util/List;

    return-object v0
.end method

.method public final zzvi()Ljava/lang/String;
    .registers 2

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzati;->zzduf:Ljava/lang/String;

    return-object v0
.end method

.method public final zzvj()Ljava/lang/String;
    .registers 2

    .line 30
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzati;->zzdug:Ljava/lang/String;

    return-object v0
.end method

.method public final zzvk()Z
    .registers 2

    .line 32
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzati;->zzduh:Z

    return v0
.end method

.method public final zzvl()Lorg/json/JSONObject;
    .registers 2

    .line 33
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzati;->zzduk:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final zzvm()Ljava/lang/String;
    .registers 2

    .line 34
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzati;->zzduc:Ljava/lang/String;

    return-object v0
.end method
