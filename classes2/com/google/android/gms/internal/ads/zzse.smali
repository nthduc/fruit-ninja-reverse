.class public final Lcom/google/android/gms/internal/ads/zzse;
.super Lcom/google/android/gms/internal/ads/zzsl;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final zzbur:Lcom/google/android/gms/ads/appopen/AppOpenAdPresentationCallback;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/appopen/AppOpenAdPresentationCallback;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzsl;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzse;->zzbur:Lcom/google/android/gms/ads/appopen/AppOpenAdPresentationCallback;

    return-void
.end method


# virtual methods
.method public final onAppOpenAdClosed()V
    .registers 2

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzse;->zzbur:Lcom/google/android/gms/ads/appopen/AppOpenAdPresentationCallback;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/appopen/AppOpenAdPresentationCallback;->onAppOpenAdClosed()V

    return-void
.end method
