.class abstract Lcom/google/android/gms/internal/ads/zzbct;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private final zzefx:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbct;->zzefx:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private final getViewTreeObserver()Landroid/view/ViewTreeObserver;
    .registers 4

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbct;->zzefx:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return-object v1

    .line 15
    :cond_c
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 16
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v2

    if-nez v2, :cond_19

    goto :goto_1a

    :cond_19
    return-object v0

    :cond_1a
    :goto_1a
    return-object v1
.end method


# virtual methods
.method public final attach()V
    .registers 2

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbct;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 6
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzbct;->zza(Landroid/view/ViewTreeObserver;)V

    :cond_9
    return-void
.end method

.method public final detach()V
    .registers 2

    .line 8
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbct;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 10
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzbct;->zzb(Landroid/view/ViewTreeObserver;)V

    :cond_9
    return-void
.end method

.method protected abstract zza(Landroid/view/ViewTreeObserver;)V
.end method

.method protected abstract zzb(Landroid/view/ViewTreeObserver;)V
.end method
