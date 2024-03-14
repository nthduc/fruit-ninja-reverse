.class public final Lcom/google/android/gms/internal/ads/zzdnw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field public final responseCode:I

.field public final zzdkm:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzdtb:Ljava/lang/String;

.field public final zzdto:Ljava/lang/String;

.field public final zzglu:J

.field public final zzhel:I

.field public final zzhem:Lcom/google/android/gms/internal/ads/zzdnx;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/util/JsonReader;)V
    .registers 13
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
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 9
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    const-string v1, ""

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-object v7, v5

    move-wide v5, v3

    const/4 v4, 0x0

    move-object v3, v1

    .line 10
    :goto_14
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_99

    .line 11
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "nofill_urls"

    .line 12
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2b

    .line 13
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbao;->zza(Landroid/util/JsonReader;)Ljava/util/List;

    move-result-object v0

    goto :goto_14

    :cond_2b
    const-string v9, "refresh_interval"

    .line 14
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_38

    .line 15
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v2

    goto :goto_14

    :cond_38
    const-string v9, "gws_query_id"

    .line 16
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_45

    .line 17
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    goto :goto_14

    :cond_45
    const-string v9, "analytics_query_ad_event_id"

    .line 18
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_52

    .line 19
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    goto :goto_14

    :cond_52
    const-string v9, "response_code"

    .line 20
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5f

    .line 21
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v4

    goto :goto_14

    :cond_5f
    const-string v9, "latency"

    .line 22
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6c

    .line 23
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextLong()J

    move-result-wide v5

    goto :goto_14

    .line 24
    :cond_6c
    sget-object v9, Lcom/google/android/gms/internal/ads/zzabb;->zzcyo:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 25
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v9

    .line 26
    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_94

    const-string v9, "public_error"

    .line 27
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_94

    .line 28
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v8

    sget-object v9, Landroid/util/JsonToken;->BEGIN_OBJECT:Landroid/util/JsonToken;

    if-ne v8, v9, :cond_94

    .line 29
    new-instance v7, Lcom/google/android/gms/internal/ads/zzdnx;

    invoke-direct {v7, p1}, Lcom/google/android/gms/internal/ads/zzdnx;-><init>(Landroid/util/JsonReader;)V

    goto :goto_14

    .line 30
    :cond_94
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_14

    .line 32
    :cond_99
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    .line 33
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdnw;->zzdkm:Ljava/util/List;

    .line 34
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzdnw;->zzhel:I

    .line 35
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzdnw;->zzdtb:Ljava/lang/String;

    .line 36
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzdnw;->zzdto:Ljava/lang/String;

    .line 37
    iput v4, p0, Lcom/google/android/gms/internal/ads/zzdnw;->responseCode:I

    .line 38
    iput-wide v5, p0, Lcom/google/android/gms/internal/ads/zzdnw;->zzglu:J

    .line 39
    iput-object v7, p0, Lcom/google/android/gms/internal/ads/zzdnw;->zzhem:Lcom/google/android/gms/internal/ads/zzdnx;

    return-void
.end method
