.class final Lcom/google/android/gms/internal/ads/zzamp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzahy;


# instance fields
.field private final zzdja:Lcom/google/android/gms/internal/ads/zzbcg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzbcg<",
            "TO;>;"
        }
    .end annotation
.end field

.field private final synthetic zzdjd:Lcom/google/android/gms/internal/ads/zzamn;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzamn;Lcom/google/android/gms/internal/ads/zzbcg;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzbcg<",
            "TO;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamp;->zzdjd:Lcom/google/android/gms/internal/ads/zzamn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzamp;->zzdja:Lcom/google/android/gms/internal/ads/zzbcg;

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/String;)V
    .registers 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_d

    .line 12
    :try_start_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzamp;->zzdja:Lcom/google/android/gms/internal/ads/zzbcg;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzalu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzalu;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzbcg;->setException(Ljava/lang/Throwable;)Z

    return-void

    .line 13
    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamp;->zzdja:Lcom/google/android/gms/internal/ads/zzbcg;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzalu;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzalu;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbcg;->setException(Ljava/lang/Throwable;)Z
    :try_end_17
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_17} :catch_17

    :catch_17
    return-void
.end method

.method public final zzc(Lorg/json/JSONObject;)V
    .registers 4

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamp;->zzdja:Lcom/google/android/gms/internal/ads/zzbcg;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzamp;->zzdjd:Lcom/google/android/gms/internal/ads/zzamn;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzamn;->zza(Lcom/google/android/gms/internal/ads/zzamn;)Lcom/google/android/gms/internal/ads/zzalv;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzalv;->zzd(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbcg;->set(Ljava/lang/Object;)Z
    :try_end_f
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_f} :catch_16
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception p1

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamp;->zzdja:Lcom/google/android/gms/internal/ads/zzbcg;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbcg;->setException(Ljava/lang/Throwable;)Z

    :catch_16
    return-void
.end method
