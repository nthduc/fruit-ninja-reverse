.class final synthetic Lcom/google/android/gms/internal/ads/zzcfx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# instance fields
.field private final zzdjk:Ljava/lang/String;

.field private final zzgch:Landroid/view/View;

.field private final zzgci:Lcom/google/android/gms/internal/ads/zzbgj;

.field private final zzgcj:Landroid/view/WindowManager$LayoutParams;

.field private final zzgck:I

.field private final zzgcl:Landroid/view/WindowManager;


# direct methods
.method constructor <init>(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzbgj;Ljava/lang/String;Landroid/view/WindowManager$LayoutParams;ILandroid/view/WindowManager;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfx;->zzgch:Landroid/view/View;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcfx;->zzgci:Lcom/google/android/gms/internal/ads/zzbgj;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcfx;->zzdjk:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcfx;->zzgcj:Landroid/view/WindowManager$LayoutParams;

    iput p5, p0, Lcom/google/android/gms/internal/ads/zzcfx;->zzgck:I

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzcfx;->zzgcl:Landroid/view/WindowManager;

    return-void
.end method


# virtual methods
.method public final onScrollChanged()V
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfx;->zzgch:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcfx;->zzgci:Lcom/google/android/gms/internal/ads/zzbgj;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcfx;->zzdjk:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcfx;->zzgcj:Landroid/view/WindowManager$LayoutParams;

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzcfx;->zzgck:I

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzcfx;->zzgcl:Landroid/view/WindowManager;

    .line 2
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 3
    invoke-virtual {v0, v6}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 4
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbgj;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_22

    goto :goto_45

    :cond_22
    const-string v0, "1"

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    const-string v0, "2"

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    goto :goto_39

    .line 9
    :cond_33
    iget v0, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v4

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_3e

    .line 8
    :cond_39
    :goto_39
    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v4

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 10
    :goto_3e
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbgj;->getView()Landroid/view/View;

    move-result-object v0

    invoke-interface {v5, v0, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_45
    :goto_45
    return-void
.end method
