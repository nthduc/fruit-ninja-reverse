.class public final Lcom/google/android/gms/internal/ads/zzagr;
.super Lcom/google/android/gms/internal/ads/zzagc;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"


# instance fields
.field private final zzden:Lcom/google/android/gms/ads/formats/UnifiedNativeAd$UnconfirmedClickListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/formats/UnifiedNativeAd$UnconfirmedClickListener;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzagc;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzagr;->zzden:Lcom/google/android/gms/ads/formats/UnifiedNativeAd$UnconfirmedClickListener;

    return-void
.end method


# virtual methods
.method public final onUnconfirmedClickCancelled()V
    .registers 2

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagr;->zzden:Lcom/google/android/gms/ads/formats/UnifiedNativeAd$UnconfirmedClickListener;

    invoke-interface {v0}, Lcom/google/android/gms/ads/formats/UnifiedNativeAd$UnconfirmedClickListener;->onUnconfirmedClickCancelled()V

    return-void
.end method

.method public final onUnconfirmedClickReceived(Ljava/lang/String;)V
    .registers 3

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagr;->zzden:Lcom/google/android/gms/ads/formats/UnifiedNativeAd$UnconfirmedClickListener;

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/formats/UnifiedNativeAd$UnconfirmedClickListener;->onUnconfirmedClickReceived(Ljava/lang/String;)V

    return-void
.end method
