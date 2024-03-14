.class final synthetic Lcom/google/android/gms/ads/formats/zze;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzadr;


# instance fields
.field private final zzbod:Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/formats/zze;->zzbod:Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;

    return-void
.end method


# virtual methods
.method public final setImageScaleType(Landroid/widget/ImageView$ScaleType;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/formats/zze;->zzbod:Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->zza(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method
