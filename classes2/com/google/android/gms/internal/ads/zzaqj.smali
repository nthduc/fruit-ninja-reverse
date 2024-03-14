.class public final Lcom/google/android/gms/internal/ads/zzaqj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private final zzdnv:Z

.field private final zzdnw:Z

.field private final zzdnx:Z

.field private final zzdny:Z

.field private final zzdnz:Z


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzaql;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaql;->zza(Lcom/google/android/gms/internal/ads/zzaql;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaqj;->zzdnv:Z

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaql;->zzb(Lcom/google/android/gms/internal/ads/zzaql;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaqj;->zzdnw:Z

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaql;->zzc(Lcom/google/android/gms/internal/ads/zzaql;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaqj;->zzdnx:Z

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaql;->zzd(Lcom/google/android/gms/internal/ads/zzaql;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaqj;->zzdny:Z

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaql;->zze(Lcom/google/android/gms/internal/ads/zzaql;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzaqj;->zzdnz:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzaql;Lcom/google/android/gms/internal/ads/zzaqm;)V
    .registers 3

    .line 18
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaqj;-><init>(Lcom/google/android/gms/internal/ads/zzaql;)V

    return-void
.end method


# virtual methods
.method public final zzdp()Lorg/json/JSONObject;
    .registers 4

    .line 8
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "sms"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzaqj;->zzdnv:Z

    .line 9
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "tel"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzaqj;->zzdnw:Z

    .line 10
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "calendar"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzaqj;->zzdnx:Z

    .line 11
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "storePicture"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzaqj;->zzdny:Z

    .line 12
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "inlineVideo"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzaqj;->zzdnz:Z

    .line 13
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_2d
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_2d} :catch_2e

    return-object v0

    :catch_2e
    move-exception v0

    const-string v1, "Error occured while obtaining the MRAID capabilities."

    .line 16
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzayp;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method
