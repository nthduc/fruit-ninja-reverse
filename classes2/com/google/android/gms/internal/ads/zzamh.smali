.class final Lcom/google/android/gms/internal/ads/zzamh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzahy;


# instance fields
.field private final synthetic zzdiv:Lcom/google/android/gms/internal/ads/zzamg;

.field private final zzdiz:Lcom/google/android/gms/internal/ads/zzali;

.field private final zzdja:Lcom/google/android/gms/internal/ads/zzbcg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzbcg<",
            "TO;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzamg;Lcom/google/android/gms/internal/ads/zzali;Lcom/google/android/gms/internal/ads/zzbcg;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzali;",
            "Lcom/google/android/gms/internal/ads/zzbcg<",
            "TO;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamh;->zzdiv:Lcom/google/android/gms/internal/ads/zzamg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzamh;->zzdiz:Lcom/google/android/gms/internal/ads/zzali;

    .line 3
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzamh;->zzdja:Lcom/google/android/gms/internal/ads/zzbcg;

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

    .line 18
    :try_start_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzamh;->zzdja:Lcom/google/android/gms/internal/ads/zzbcg;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzalu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzalu;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzbcg;->setException(Ljava/lang/Throwable;)Z

    goto :goto_17

    .line 19
    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamh;->zzdja:Lcom/google/android/gms/internal/ads/zzbcg;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzalu;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzalu;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbcg;->setException(Ljava/lang/Throwable;)Z
    :try_end_17
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_17} :catch_24
    .catchall {:try_start_2 .. :try_end_17} :catchall_1d

    .line 20
    :goto_17
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzamh;->zzdiz:Lcom/google/android/gms/internal/ads/zzali;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzali;->release()V

    return-void

    :catchall_1d
    move-exception p1

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamh;->zzdiz:Lcom/google/android/gms/internal/ads/zzali;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzali;->release()V

    .line 26
    throw p1

    .line 23
    :catch_24
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzamh;->zzdiz:Lcom/google/android/gms/internal/ads/zzali;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzali;->release()V

    return-void
.end method

.method public final zzc(Lorg/json/JSONObject;)V
    .registers 4

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamh;->zzdja:Lcom/google/android/gms/internal/ads/zzbcg;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzamh;->zzdiv:Lcom/google/android/gms/internal/ads/zzamg;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzamg;->zza(Lcom/google/android/gms/internal/ads/zzamg;)Lcom/google/android/gms/internal/ads/zzalv;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzalv;->zzd(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbcg;->set(Ljava/lang/Object;)Z
    :try_end_f
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_f} :catch_29
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_f} :catch_17
    .catchall {:try_start_0 .. :try_end_f} :catchall_15

    .line 6
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzamh;->zzdiz:Lcom/google/android/gms/internal/ads/zzali;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzali;->release()V

    return-void

    :catchall_15
    move-exception p1

    goto :goto_23

    :catch_17
    move-exception p1

    .line 12
    :try_start_18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamh;->zzdja:Lcom/google/android/gms/internal/ads/zzbcg;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbcg;->setException(Ljava/lang/Throwable;)Z
    :try_end_1d
    .catchall {:try_start_18 .. :try_end_1d} :catchall_15

    .line 13
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzamh;->zzdiz:Lcom/google/android/gms/internal/ads/zzali;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzali;->release()V

    return-void

    .line 15
    :goto_23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamh;->zzdiz:Lcom/google/android/gms/internal/ads/zzali;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzali;->release()V

    .line 16
    throw p1

    .line 9
    :catch_29
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzamh;->zzdiz:Lcom/google/android/gms/internal/ads/zzali;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzali;->release()V

    return-void
.end method
