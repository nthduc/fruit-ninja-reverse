.class final Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter$zzc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "zzc"
.end annotation


# instance fields
.field private final zzesa:Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;

.field private final zzesh:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

.field private final synthetic zzesi:Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter$zzc;->zzesi:Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter$zzc;->zzesa:Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;

    .line 3
    iput-object p3, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter$zzc;->zzesh:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    return-void
.end method


# virtual methods
.method public final onAdClicked()V
    .registers 3

    const-string v0, "Custom event adapter called onAdClicked."

    .line 14
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zzef(Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter$zzc;->zzesh:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    iget-object v1, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter$zzc;->zzesa:Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdClicked(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    return-void
.end method

.method public final onAdClosed()V
    .registers 3

    const-string v0, "Custom event adapter called onAdClosed."

    .line 20
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zzef(Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter$zzc;->zzesh:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    iget-object v1, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter$zzc;->zzesa:Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdClosed(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    return-void
.end method

.method public final onAdFailedToLoad(I)V
    .registers 4

    const-string v0, "Custom event adapter called onFailedToReceiveAd."

    .line 8
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zzef(Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter$zzc;->zzesh:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    iget-object v1, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter$zzc;->zzesa:Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;I)V

    return-void
.end method

.method public final onAdFailedToLoad(Lcom/google/android/gms/ads/AdError;)V
    .registers 4

    const-string v0, "Custom event adapter called onFailedToReceiveAd."

    .line 11
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zzef(Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter$zzc;->zzesh:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    iget-object v1, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter$zzc;->zzesa:Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;Lcom/google/android/gms/ads/AdError;)V

    return-void
.end method

.method public final onAdLeftApplication()V
    .registers 3

    const-string v0, "Custom event adapter called onAdLeftApplication."

    .line 23
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zzef(Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter$zzc;->zzesh:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    iget-object v1, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter$zzc;->zzesa:Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdLeftApplication(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    return-void
.end method

.method public final onAdLoaded()V
    .registers 3

    const-string v0, "Custom event adapter called onReceivedAd."

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zzef(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter$zzc;->zzesh:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    iget-object v1, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter$zzc;->zzesi:Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdLoaded(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    return-void
.end method

.method public final onAdOpened()V
    .registers 3

    const-string v0, "Custom event adapter called onAdOpened."

    .line 17
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zzef(Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter$zzc;->zzesh:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    iget-object v1, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter$zzc;->zzesa:Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdOpened(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    return-void
.end method
