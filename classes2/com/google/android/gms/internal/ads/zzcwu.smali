.class final synthetic Lcom/google/android/gms/internal/ads/zzcwu;
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

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcwu;->zzgop:Lcom/google/android/gms/internal/ads/zzctc;

    return-void
.end method


# virtual methods
.method public final zza(ZLandroid/content/Context;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcwu;->zzgop:Lcom/google/android/gms/internal/ads/zzctc;

    .line 2
    :try_start_2
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzctc;->zzdlf:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzdpa;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzdpa;->setImmersiveMode(Z)V

    .line 3
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/zzctc;->zzdlf:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdpa;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzdpa;->zzci(Landroid/content/Context;)V
    :try_end_10
    .catch Lcom/google/android/gms/internal/ads/zzdos; {:try_start_2 .. :try_end_10} :catch_11

    return-void

    :catch_11
    move-exception p1

    .line 6
    new-instance p2, Lcom/google/android/gms/internal/ads/zzccl;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdos;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzccl;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
