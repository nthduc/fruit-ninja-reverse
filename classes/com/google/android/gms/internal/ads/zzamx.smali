.class public final Lcom/google/android/gms/internal/ads/zzamx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final zzdjl:Ljava/lang/String;

.field private final zzdjm:Ljava/lang/String;

.field public final zzdjn:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzdjo:Ljava/lang/String;

.field private final zzdjp:Ljava/lang/String;

.field private final zzdjq:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzdjr:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzdjs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzdjt:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzdju:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzdjv:Ljava/lang/String;

.field private final zzdjw:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzdjx:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzdjy:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzdjz:Ljava/lang/String;

.field private final zzdka:Ljava/lang/String;

.field private final zzdkb:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzdkc:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzdkd:Ljava/lang/String;

.field private final zzdke:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzdkf:Ljava/lang/String;

.field public final zzdkg:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzdkh:J


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "id"

    .line 2
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzamx;->zzdjm:Ljava/lang/String;

    const-string v0, "adapters"

    .line 3
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    .line 5
    :goto_1b
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_2b

    .line 6
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 8
    :cond_2b
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzamx;->zzdjn:Ljava/util/List;

    const/4 v0, 0x0

    const-string v1, "allocation_id"

    .line 9
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzamx;->zzdjo:Ljava/lang/String;

    .line 10
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzlj()Lcom/google/android/gms/internal/ads/zzamz;

    const-string v1, "clickurl"

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzamz;->zza(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzamx;->zzdjq:Ljava/util/List;

    .line 12
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzlj()Lcom/google/android/gms/internal/ads/zzamz;

    const-string v1, "imp_urls"

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzamz;->zza(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzamx;->zzdjr:Ljava/util/List;

    .line 14
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzlj()Lcom/google/android/gms/internal/ads/zzamz;

    const-string v1, "downloaded_imp_urls"

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzamz;->zza(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzamx;->zzdjs:Ljava/util/List;

    .line 15
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzlj()Lcom/google/android/gms/internal/ads/zzamz;

    const-string v1, "fill_urls"

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzamz;->zza(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzamx;->zzdju:Ljava/util/List;

    .line 17
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzlj()Lcom/google/android/gms/internal/ads/zzamz;

    const-string v1, "video_start_urls"

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzamz;->zza(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzamx;->zzdjw:Ljava/util/List;

    .line 19
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzlj()Lcom/google/android/gms/internal/ads/zzamz;

    const-string v1, "video_complete_urls"

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzamz;->zza(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzamx;->zzdjy:Ljava/util/List;

    .line 20
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzlj()Lcom/google/android/gms/internal/ads/zzamz;

    const-string v1, "video_reward_urls"

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzamz;->zza(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 21
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzamx;->zzdjx:Ljava/util/List;

    const-string v1, "transaction_id"

    .line 22
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzamx;->zzdjz:Ljava/lang/String;

    const-string v1, "valid_from_timestamp"

    .line 23
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzamx;->zzdka:Ljava/lang/String;

    const-string v1, "ad"

    .line 24
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_a9

    .line 27
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzlj()Lcom/google/android/gms/internal/ads/zzamz;

    const-string v2, "manual_impression_urls"

    .line 28
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzamz;->zza(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    goto :goto_aa

    :cond_a9
    move-object v2, v0

    .line 29
    :goto_aa
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzamx;->zzdjt:Ljava/util/List;

    if-eqz v1, :cond_b3

    .line 30
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_b4

    :cond_b3
    move-object v1, v0

    :goto_b4
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzamx;->zzdjl:Ljava/lang/String;

    const-string v1, "data"

    .line 31
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_c3

    .line 32
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_c4

    :cond_c3
    move-object v2, v0

    :goto_c4
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzamx;->zzdjv:Ljava/lang/String;

    if-eqz v1, :cond_cf

    const-string v2, "class_name"

    .line 33
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_d0

    :cond_cf
    move-object v1, v0

    :goto_d0
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzamx;->zzdjp:Ljava/lang/String;

    const-string v1, "html_template"

    .line 34
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzamx;->zzdkb:Ljava/lang/String;

    const-string v1, "ad_base_url"

    .line 35
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzamx;->zzdkc:Ljava/lang/String;

    const-string v1, "assets"

    .line 36
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_ef

    .line 37
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_f0

    :cond_ef
    move-object v1, v0

    :goto_f0
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzamx;->zzdkd:Ljava/lang/String;

    .line 39
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzlj()Lcom/google/android/gms/internal/ads/zzamz;

    const-string v1, "template_ids"

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzamz;->zza(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzamx;->zzdke:Ljava/util/List;

    const-string v1, "ad_loader_options"

    .line 41
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_10a

    .line 43
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_10b

    :cond_10a
    move-object v1, v0

    :goto_10b
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzamx;->zzdkf:Ljava/lang/String;

    const-string v1, "response_type"

    .line 44
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzamx;->zzdkg:Ljava/lang/String;

    const-wide/16 v0, -0x1

    const-string v2, "ad_network_timeout_millis"

    .line 45
    invoke-virtual {p1, v2, v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzamx;->zzdkh:J

    return-void
.end method
