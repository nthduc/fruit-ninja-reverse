.class public final Lcom/google/android/gms/internal/ads/zzcgb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbuz;


# instance fields
.field private final zzfxu:Lcom/google/android/gms/internal/ads/zzcei;

.field private final zzfyv:Lcom/google/android/gms/internal/ads/zzcem;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcei;Lcom/google/android/gms/internal/ads/zzcem;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcgb;->zzfxu:Lcom/google/android/gms/internal/ads/zzcei;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcgb;->zzfyv:Lcom/google/android/gms/internal/ads/zzcem;

    return-void
.end method


# virtual methods
.method public final onAdImpression()V
    .registers 4

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgb;->zzfxu:Lcom/google/android/gms/internal/ads/zzcei;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcei;->zzamh()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 8
    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgb;->zzfxu:Lcom/google/android/gms/internal/ads/zzcei;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcei;->zzamg()Lcom/google/android/gms/internal/ads/zzbgj;

    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcgb;->zzfxu:Lcom/google/android/gms/internal/ads/zzcei;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcei;->zzamf()Lcom/google/android/gms/internal/ads/zzbgj;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_19

    goto :goto_1e

    :cond_19
    if-eqz v1, :cond_1d

    move-object v0, v1

    goto :goto_1e

    :cond_1d
    move-object v0, v2

    .line 15
    :goto_1e
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcgb;->zzfyv:Lcom/google/android/gms/internal/ads/zzcem;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcem;->zzalw()Z

    move-result v1

    if-eqz v1, :cond_32

    if-eqz v0, :cond_32

    .line 17
    new-instance v1, Landroidx/collection/ArrayMap;

    invoke-direct {v1}, Landroidx/collection/ArrayMap;-><init>()V

    const-string v2, "onSdkImpression"

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzbgj;->zza(Ljava/lang/String;Ljava/util/Map;)V

    :cond_32
    return-void
.end method
