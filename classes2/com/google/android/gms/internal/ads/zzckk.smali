.class public final Lcom/google/android/gms/internal/ads/zzckk;
.super Landroid/widget/FrameLayout;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private final zzdpf:Lcom/google/android/gms/internal/ads/zzazp;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzazp;)V
    .registers 5
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/gms/internal/ads/zzazp;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzckk;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzckk;->addView(Landroid/view/View;)V

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzckk;->zzdpf:Lcom/google/android/gms/internal/ads/zzazp;

    return-void
.end method


# virtual methods
.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckk;->zzdpf:Lcom/google/android/gms/internal/ads/zzazp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzazp;->zzd(Landroid/view/MotionEvent;)V

    const/4 p1, 0x0

    return p1
.end method

.method public final removeAllViews()V
    .registers 6

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 9
    :goto_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzckk;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1f

    .line 10
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzckk;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1c

    .line 11
    instance-of v4, v3, Lcom/google/android/gms/internal/ads/zzbgj;

    if-eqz v4, :cond_1c

    .line 12
    check-cast v3, Lcom/google/android/gms/internal/ads/zzbgj;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 14
    :cond_1f
    invoke-super {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 15
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_28
    if-ge v1, v2, :cond_36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    check-cast v3, Lcom/google/android/gms/internal/ads/zzbgj;

    .line 16
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzbgj;->destroy()V

    goto :goto_28

    :cond_36
    return-void
.end method
