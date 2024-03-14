.class final Lcom/google/android/gms/internal/ads/zzagp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzdej:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

.field private final synthetic zzdek:Lcom/google/android/gms/internal/ads/zzxc;

.field private final synthetic zzdel:Lcom/google/android/gms/internal/ads/zzagq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzagq;Lcom/google/android/gms/ads/doubleclick/PublisherAdView;Lcom/google/android/gms/internal/ads/zzxc;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzagp;->zzdel:Lcom/google/android/gms/internal/ads/zzagq;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzagp;->zzdej:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzagp;->zzdek:Lcom/google/android/gms/internal/ads/zzxc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagp;->zzdej:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzagp;->zzdek:Lcom/google/android/gms/internal/ads/zzxc;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->zza(Lcom/google/android/gms/internal/ads/zzxc;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagp;->zzdel:Lcom/google/android/gms/internal/ads/zzagq;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzagq;->zza(Lcom/google/android/gms/internal/ads/zzagq;)Lcom/google/android/gms/ads/formats/OnPublisherAdViewLoadedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzagp;->zzdej:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/formats/OnPublisherAdViewLoadedListener;->onPublisherAdViewLoaded(Lcom/google/android/gms/ads/doubleclick/PublisherAdView;)V

    return-void

    :cond_16
    const-string v0, "Could not bind."

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zzfe(Ljava/lang/String;)V

    return-void
.end method
