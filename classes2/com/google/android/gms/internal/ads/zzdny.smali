.class public final Lcom/google/android/gms/internal/ads/zzdny;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbat;


# instance fields
.field public final zzdpn:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final zzdpp:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final zzfxs:Lorg/json/JSONObject;

.field private final zzhen:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Landroid/util/JsonReader;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbao;->zzc(Landroid/util/JsonReader;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdny;->zzhen:Lorg/json/JSONObject;

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdny;->zzhen:Lorg/json/JSONObject;

    const/4 v0, 0x0

    const-string v1, "ad_html"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdny;->zzdpp:Ljava/lang/String;

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdny;->zzhen:Lorg/json/JSONObject;

    const-string v1, "ad_base_url"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdny;->zzdpn:Ljava/lang/String;

    .line 5
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdny;->zzhen:Lorg/json/JSONObject;

    const-string v0, "ad_json"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdny;->zzfxs:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final zza(Landroid/util/JsonWriter;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdny;->zzhen:Lorg/json/JSONObject;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzbao;->zza(Landroid/util/JsonWriter;Lorg/json/JSONObject;)V

    return-void
.end method
