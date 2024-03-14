.class final Lcom/google/android/gms/internal/ads/zzaom;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzdmb:Lcom/google/android/gms/internal/ads/zzaoi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzaoi;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaom;->zzdmb:Lcom/google/android/gms/internal/ads/zzaoi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaom;->zzdmb:Lcom/google/android/gms/internal/ads/zzaoi;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaoi;->zza(Lcom/google/android/gms/internal/ads/zzaoi;)Lcom/google/android/gms/internal/ads/zzanh;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzanh;->onAdClosed()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    return-void

    :catch_a
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 5
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
