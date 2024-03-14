.class final Lcom/google/android/gms/internal/ads/zzaqa;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/zzp;


# instance fields
.field private final synthetic zzdmv:Lcom/google/android/gms/internal/ads/zzapx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzapx;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zzdmv:Lcom/google/android/gms/internal/ads/zzapx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPause()V
    .registers 2

    const-string v0, "AdMobCustomTabsAdapter overlay is paused."

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zzef(Ljava/lang/String;)V

    return-void
.end method

.method public final onResume()V
    .registers 2

    const-string v0, "AdMobCustomTabsAdapter overlay is resumed."

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zzef(Ljava/lang/String;)V

    return-void
.end method

.method public final zzum()V
    .registers 3

    const-string v0, "AdMobCustomTabsAdapter overlay is closed."

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zzef(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zzdmv:Lcom/google/android/gms/internal/ads/zzapx;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzapx;->zza(Lcom/google/android/gms/internal/ads/zzapx;)Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zzdmv:Lcom/google/android/gms/internal/ads/zzapx;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdClosed(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    return-void
.end method

.method public final zzun()V
    .registers 3

    const-string v0, "Opening AdMobCustomTabsAdapter overlay."

    .line 9
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zzef(Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zzdmv:Lcom/google/android/gms/internal/ads/zzapx;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzapx;->zza(Lcom/google/android/gms/internal/ads/zzapx;)Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zzdmv:Lcom/google/android/gms/internal/ads/zzapx;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdOpened(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    return-void
.end method
