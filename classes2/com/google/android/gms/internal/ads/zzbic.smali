.class final Lcom/google/android/gms/internal/ads/zzbic;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field private final synthetic zzenh:Lcom/google/android/gms/internal/ads/zzawl;

.field private final synthetic zzeqq:Lcom/google/android/gms/internal/ads/zzbib;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbib;Lcom/google/android/gms/internal/ads/zzawl;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbic;->zzeqq:Lcom/google/android/gms/internal/ads/zzbib;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbic;->zzenh:Lcom/google/android/gms/internal/ads/zzawl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .registers 5

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbic;->zzeqq:Lcom/google/android/gms/internal/ads/zzbib;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbic;->zzenh:Lcom/google/android/gms/internal/ads/zzawl;

    const/16 v2, 0xa

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzbib;->zza(Lcom/google/android/gms/internal/ads/zzbib;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzawl;I)V

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 2

    return-void
.end method
