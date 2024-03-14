.class final Lcom/google/android/gms/internal/ads/zzbid;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic val$view:Landroid/view/View;

.field private final synthetic zzenh:Lcom/google/android/gms/internal/ads/zzawl;

.field private final synthetic zzenj:I

.field private final synthetic zzeqq:Lcom/google/android/gms/internal/ads/zzbib;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbib;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzawl;I)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbid;->zzeqq:Lcom/google/android/gms/internal/ads/zzbib;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbid;->val$view:Landroid/view/View;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbid;->zzenh:Lcom/google/android/gms/internal/ads/zzawl;

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzbid;->zzenj:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbid;->zzeqq:Lcom/google/android/gms/internal/ads/zzbib;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbid;->val$view:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbid;->zzenh:Lcom/google/android/gms/internal/ads/zzawl;

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzbid;->zzenj:I

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbib;->zza(Lcom/google/android/gms/internal/ads/zzbib;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzawl;I)V

    return-void
.end method
