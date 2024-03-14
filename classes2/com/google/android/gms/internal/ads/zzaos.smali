.class final Lcom/google/android/gms/internal/ads/zzaos;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzdmb:Lcom/google/android/gms/internal/ads/zzaoi;

.field private final synthetic zzdmc:Lcom/google/ads/AdRequest$ErrorCode;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzaoi;Lcom/google/ads/AdRequest$ErrorCode;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaos;->zzdmb:Lcom/google/android/gms/internal/ads/zzaoi;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaos;->zzdmc:Lcom/google/ads/AdRequest$ErrorCode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaos;->zzdmb:Lcom/google/android/gms/internal/ads/zzaoi;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaoi;->zza(Lcom/google/android/gms/internal/ads/zzaoi;)Lcom/google/android/gms/internal/ads/zzanh;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaos;->zzdmc:Lcom/google/ads/AdRequest$ErrorCode;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaou;->zza(Lcom/google/ads/AdRequest$ErrorCode;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzanh;->onAdFailedToLoad(I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 5
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
