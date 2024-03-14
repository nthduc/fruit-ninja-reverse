.class final Lcom/google/android/gms/internal/ads/zzapu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/ads/mediation/rtb/SignalCallbacks;


# instance fields
.field private final synthetic zzdmp:Lcom/google/android/gms/internal/ads/zzapm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzapq;Lcom/google/android/gms/internal/ads/zzapm;)V
    .registers 3

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzapu;->zzdmp:Lcom/google/android/gms/internal/ads/zzapm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Lcom/google/android/gms/ads/AdError;)V
    .registers 3

    .line 12
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapu;->zzdmp:Lcom/google/android/gms/internal/ads/zzapm;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->zzdo()Lcom/google/android/gms/internal/ads/zzva;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzapm;->zzg(Lcom/google/android/gms/internal/ads/zzva;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    return-void

    :catch_a
    move-exception p1

    const-string v0, ""

    .line 15
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onFailure(Ljava/lang/String;)V
    .registers 3

    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapu;->zzdmp:Lcom/google/android/gms/internal/ads/zzapm;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzapm;->onFailure(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    const-string v0, ""

    .line 10
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSuccess(Ljava/lang/String;)V
    .registers 3

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapu;->zzdmp:Lcom/google/android/gms/internal/ads/zzapm;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzapm;->zzds(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    const-string v0, ""

    .line 5
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
