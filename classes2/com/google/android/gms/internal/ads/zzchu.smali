.class final synthetic Lcom/google/android/gms/internal/ads/zzchu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzqu;


# instance fields
.field private final zzeqk:Lcom/google/android/gms/internal/ads/zzbgj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbgj;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzchu;->zzeqk:Lcom/google/android/gms/internal/ads/zzbgj;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzqr;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchu;->zzeqk:Lcom/google/android/gms/internal/ads/zzbgj;

    .line 2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3
    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzqr;->zzbro:Z

    if-eqz p1, :cond_e

    const-string p1, "1"

    goto :goto_10

    :cond_e
    const-string p1, "0"

    :goto_10
    const-string v2, "isVisible"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "onAdVisibilityChanged"

    .line 4
    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzbgj;->zza(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
