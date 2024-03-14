.class public final Lcom/google/android/gms/internal/ads/zzbco;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .registers 3

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbcr;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzbcr;-><init>(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbct;->attach()V

    return-void
.end method

.method public static zza(Landroid/view/View;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V
    .registers 3

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbcq;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzbcq;-><init>(Landroid/view/View;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbct;->attach()V

    return-void
.end method
