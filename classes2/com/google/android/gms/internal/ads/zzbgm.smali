.class final Lcom/google/android/gms/internal/ads/zzbgm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field private final synthetic zzenh:Lcom/google/android/gms/internal/ads/zzawl;

.field private final synthetic zzeni:Lcom/google/android/gms/internal/ads/zzbgi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbgi;Lcom/google/android/gms/internal/ads/zzawl;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbgm;->zzeni:Lcom/google/android/gms/internal/ads/zzbgi;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbgm;->zzenh:Lcom/google/android/gms/internal/ads/zzawl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .registers 5

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgm;->zzeni:Lcom/google/android/gms/internal/ads/zzbgi;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbgm;->zzenh:Lcom/google/android/gms/internal/ads/zzawl;

    const/16 v2, 0xa

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzbgi;->zza(Lcom/google/android/gms/internal/ads/zzbgi;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzawl;I)V

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 2

    return-void
.end method
