.class public final Lcom/google/android/gms/ads/internal/overlay/zzk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation


# instance fields
.field public final index:I

.field public final parent:Landroid/view/ViewGroup;

.field public final zzdpi:Landroid/view/ViewGroup$LayoutParams;

.field public final zzvr:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbgj;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/ads/internal/overlay/zzi;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbgj;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzdpi:Landroid/view/ViewGroup$LayoutParams;

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbgj;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 4
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbgj;->zzabr()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzvr:Landroid/content/Context;

    if-eqz v0, :cond_37

    .line 5
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_37

    .line 6
    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->parent:Landroid/view/ViewGroup;

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->parent:Landroid/view/ViewGroup;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbgj;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->index:I

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzk;->parent:Landroid/view/ViewGroup;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbgj;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x1

    .line 9
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzbgj;->zzba(Z)V

    return-void

    .line 10
    :cond_37
    new-instance p1, Lcom/google/android/gms/ads/internal/overlay/zzi;

    const-string v0, "Could not get the parent of the WebView for an overlay."

    invoke-direct {p1, v0}, Lcom/google/android/gms/ads/internal/overlay/zzi;-><init>(Ljava/lang/String;)V

    throw p1
.end method
