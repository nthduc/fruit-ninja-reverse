.class public final Lcom/google/android/gms/internal/ads/zzvc;
.super Lcom/google/android/gms/internal/ads/zzws;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"


# instance fields
.field private final zzcha:Lcom/google/android/gms/ads/AdListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/AdListener;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzws;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzcha:Lcom/google/android/gms/ads/AdListener;

    return-void
.end method


# virtual methods
.method public final getAdListener()Lcom/google/android/gms/ads/AdListener;
    .registers 2

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzcha:Lcom/google/android/gms/ads/AdListener;

    return-object v0
.end method

.method public final onAdClicked()V
    .registers 2

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzcha:Lcom/google/android/gms/ads/AdListener;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdListener;->onAdClicked()V

    return-void
.end method

.method public final onAdClosed()V
    .registers 2

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzcha:Lcom/google/android/gms/ads/AdListener;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdListener;->onAdClosed()V

    return-void
.end method

.method public final onAdFailedToLoad(I)V
    .registers 3

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzcha:Lcom/google/android/gms/ads/AdListener;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/AdListener;->onAdFailedToLoad(I)V

    return-void
.end method

.method public final onAdImpression()V
    .registers 2

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzcha:Lcom/google/android/gms/ads/AdListener;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdListener;->onAdImpression()V

    return-void
.end method

.method public final onAdLeftApplication()V
    .registers 2

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzcha:Lcom/google/android/gms/ads/AdListener;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdListener;->onAdLeftApplication()V

    return-void
.end method

.method public final onAdLoaded()V
    .registers 2

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzcha:Lcom/google/android/gms/ads/AdListener;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdListener;->onAdLoaded()V

    return-void
.end method

.method public final onAdOpened()V
    .registers 2

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzcha:Lcom/google/android/gms/ads/AdListener;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdListener;->onAdOpened()V

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzva;)V
    .registers 3

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzcha:Lcom/google/android/gms/ads/AdListener;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzva;->zzpi()Lcom/google/android/gms/ads/LoadAdError;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/AdListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V

    return-void
.end method
