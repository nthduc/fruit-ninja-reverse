.class public final Lcom/google/android/gms/internal/ads/zzdil;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdgu;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdgu<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field private zzgzi:Ljava/lang/String;

.field private zzgzj:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdil;->zzgzi:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdil;->zzgzj:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final synthetic zzs(Ljava/lang/Object;)V
    .registers 4

    .line 5
    check-cast p1, Lorg/json/JSONObject;

    :try_start_2
    const-string v0, "pii"

    .line 6
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzbao;->zzb(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "doritos"

    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdil;->zzgzi:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "doritos_v2"

    .line 8
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdil;->zzgzj:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_16
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_16} :catch_17

    return-void

    :catch_17
    const-string p1, "Failed putting doritos string."

    .line 11
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzei(Ljava/lang/String;)V

    return-void
.end method
