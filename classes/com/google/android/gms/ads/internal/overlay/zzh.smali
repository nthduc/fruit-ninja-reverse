.class final Lcom/google/android/gms/ads/internal/overlay/zzh;
.super Landroid/widget/RelativeLayout;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation


# instance fields
.field private zzdpf:Lcom/google/android/gms/internal/ads/zzazp;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field zzdpg:Z
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzazp;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzazp;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzh;->zzdpf:Lcom/google/android/gms/internal/ads/zzazp;

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzh;->zzdpf:Lcom/google/android/gms/internal/ads/zzazp;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzazp;->zzae(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 5
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzh;->zzdpg:Z

    if-nez v0, :cond_9

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzh;->zzdpf:Lcom/google/android/gms/internal/ads/zzazp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzazp;->zzd(Landroid/view/MotionEvent;)V

    :cond_9
    const/4 p1, 0x0

    return p1
.end method
