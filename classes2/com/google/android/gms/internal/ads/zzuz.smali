.class public final Lcom/google/android/gms/internal/ads/zzuz;
.super Lcom/google/android/gms/internal/ads/zzwr;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"


# instance fields
.field private final zzcgv:Lcom/google/android/gms/internal/ads/zzux;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzux;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzwr;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzuz;->zzcgv:Lcom/google/android/gms/internal/ads/zzux;

    return-void
.end method


# virtual methods
.method public final onAdClicked()V
    .registers 2

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzuz;->zzcgv:Lcom/google/android/gms/internal/ads/zzux;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzux;->onAdClicked()V

    return-void
.end method
