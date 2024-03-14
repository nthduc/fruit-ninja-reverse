.class public final Lcom/google/android/gms/internal/ads/zzvh;
.super Lcom/google/android/gms/internal/ads/zzxi;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"


# instance fields
.field private final zzchq:Lcom/google/android/gms/ads/reward/AdMetadataListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/reward/AdMetadataListener;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzxi;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvh;->zzchq:Lcom/google/android/gms/ads/reward/AdMetadataListener;

    return-void
.end method


# virtual methods
.method public final onAdMetadataChanged()V
    .registers 2

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvh;->zzchq:Lcom/google/android/gms/ads/reward/AdMetadataListener;

    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/ads/reward/AdMetadataListener;->onAdMetadataChanged()V

    :cond_7
    return-void
.end method
