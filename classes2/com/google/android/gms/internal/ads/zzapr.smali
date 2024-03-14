.class final Lcom/google/android/gms/internal/ads/zzapr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback<",
        "Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;",
        "Lcom/google/android/gms/ads/mediation/MediationNativeAdCallback;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzdmh:Lcom/google/android/gms/internal/ads/zzanh;

.field private final synthetic zzdml:Lcom/google/android/gms/internal/ads/zzapb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzapq;Lcom/google/android/gms/internal/ads/zzapb;Lcom/google/android/gms/internal/ads/zzanh;)V
    .registers 4

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzapr;->zzdml:Lcom/google/android/gms/internal/ads/zzapb;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzapr;->zzdmh:Lcom/google/android/gms/internal/ads/zzanh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;)Lcom/google/android/gms/ads/mediation/MediationNativeAdCallback;
    .registers 5

    const-string v0, ""

    if-nez p1, :cond_17

    const-string p1, "Adapter incorrectly returned a null ad. The onFailure() callback should be called if an adapter fails to load an ad."

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zzfe(Ljava/lang/String;)V

    .line 4
    :try_start_9
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzapr;->zzdml:Lcom/google/android/gms/internal/ads/zzapb;

    const-string v1, "Adapter returned null."

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/zzapb;->zzdq(Ljava/lang/String;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_10} :catch_11

    goto :goto_15

    :catch_11
    move-exception p1

    .line 7
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_15
    const/4 p1, 0x0

    return-object p1

    .line 9
    :cond_17
    :try_start_17
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzapr;->zzdml:Lcom/google/android/gms/internal/ads/zzapb;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzaow;

    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/ads/zzaow;-><init>(Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzapb;->zza(Lcom/google/android/gms/internal/ads/zzanu;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_21} :catch_22

    goto :goto_26

    :catch_22
    move-exception p1

    .line 12
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    :goto_26
    new-instance p1, Lcom/google/android/gms/internal/ads/zzapw;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapr;->zzdmh:Lcom/google/android/gms/internal/ads/zzanh;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzapw;-><init>(Lcom/google/android/gms/internal/ads/zzanh;)V

    return-object p1
.end method


# virtual methods
.method public final onFailure(Lcom/google/android/gms/ads/AdError;)V
    .registers 3

    .line 19
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapr;->zzdml:Lcom/google/android/gms/internal/ads/zzapb;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->zzdo()Lcom/google/android/gms/internal/ads/zzva;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzapb;->zzf(Lcom/google/android/gms/internal/ads/zzva;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    return-void

    :catch_a
    move-exception p1

    const-string v0, ""

    .line 22
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onFailure(Ljava/lang/String;)V
    .registers 3

    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapr;->zzdml:Lcom/google/android/gms/internal/ads/zzapb;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzapb;->zzdq(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    const-string v0, ""

    .line 17
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 24
    check-cast p1, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzapr;->zza(Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;)Lcom/google/android/gms/ads/mediation/MediationNativeAdCallback;

    move-result-object p1

    return-object p1
.end method
