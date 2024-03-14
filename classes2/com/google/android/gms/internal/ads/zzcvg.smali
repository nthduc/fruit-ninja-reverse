.class final synthetic Lcom/google/android/gms/internal/ads/zzcvg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzccm;


# instance fields
.field private final zzgop:Lcom/google/android/gms/internal/ads/zzctc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzctc;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcvg;->zzgop:Lcom/google/android/gms/internal/ads/zzctc;

    return-void
.end method


# virtual methods
.method public final zza(ZLandroid/content/Context;)V
    .registers 4

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcvg;->zzgop:Lcom/google/android/gms/internal/ads/zzctc;

    .line 2
    :try_start_2
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzctc;->zzdlf:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdpa;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdpa;->setImmersiveMode(Z)V

    .line 3
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzctc;->zzdlf:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdpa;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdpa;->showInterstitial()V
    :try_end_10
    .catch Lcom/google/android/gms/internal/ads/zzdos; {:try_start_2 .. :try_end_10} :catch_11

    return-void

    :catch_11
    move-exception p1

    const-string p2, "Cannot show interstitial."

    .line 6
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzayp;->zzfd(Ljava/lang/String;)V

    .line 7
    new-instance p2, Lcom/google/android/gms/internal/ads/zzccl;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdos;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzccl;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
