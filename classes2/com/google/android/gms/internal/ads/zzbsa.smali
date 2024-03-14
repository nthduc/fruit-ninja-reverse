.class public final Lcom/google/android/gms/internal/ads/zzbsa;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbuh;
.implements Lcom/google/android/gms/internal/ads/zzbuz;
.implements Lcom/google/android/gms/internal/ads/zzbvs;
.implements Lcom/google/android/gms/internal/ads/zzbws;
.implements Lcom/google/android/gms/internal/ads/zzux;


# instance fields
.field private final zzbqa:Lcom/google/android/gms/common/util/Clock;

.field private final zzftb:Lcom/google/android/gms/internal/ads/zzaxw;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/util/Clock;Lcom/google/android/gms/internal/ads/zzaxw;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbsa;->zzbqa:Lcom/google/android/gms/common/util/Clock;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbsa;->zzftb:Lcom/google/android/gms/internal/ads/zzaxw;

    return-void
.end method


# virtual methods
.method public final onAdClicked()V
    .registers 2

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbsa;->zzftb:Lcom/google/android/gms/internal/ads/zzaxw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaxw;->zzwb()V

    return-void
.end method

.method public final onAdClosed()V
    .registers 2

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbsa;->zzftb:Lcom/google/android/gms/internal/ads/zzaxw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaxw;->zzwc()V

    return-void
.end method

.method public final onAdImpression()V
    .registers 2

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbsa;->zzftb:Lcom/google/android/gms/internal/ads/zzaxw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaxw;->zzwa()V

    return-void
.end method

.method public final onAdLeftApplication()V
    .registers 1

    return-void
.end method

.method public final onAdLoaded()V
    .registers 3

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbsa;->zzftb:Lcom/google/android/gms/internal/ads/zzaxw;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzaxw;->zzan(Z)V

    return-void
.end method

.method public final onAdOpened()V
    .registers 1

    return-void
.end method

.method public final onRewardedVideoCompleted()V
    .registers 1

    return-void
.end method

.method public final onRewardedVideoStarted()V
    .registers 1

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzatw;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzdog;)V
    .registers 4

    .line 14
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbsa;->zzftb:Lcom/google/android/gms/internal/ads/zzaxw;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbsa;->zzbqa:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzaxw;->zzey(J)V

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzatc;)V
    .registers 2

    return-void
.end method

.method public final zzf(Lcom/google/android/gms/internal/ads/zzvg;)V
    .registers 3

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbsa;->zzftb:Lcom/google/android/gms/internal/ads/zzaxw;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaxw;->zze(Lcom/google/android/gms/internal/ads/zzvg;)V

    return-void
.end method

.method public final zzwd()Ljava/lang/String;
    .registers 2

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbsa;->zzftb:Lcom/google/android/gms/internal/ads/zzaxw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaxw;->zzwd()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
