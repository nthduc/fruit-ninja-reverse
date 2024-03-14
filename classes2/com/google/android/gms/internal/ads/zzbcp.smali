.class final Lcom/google/android/gms/internal/ads/zzbcp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdyr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdyr<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final synthetic zzefe:Lcom/google/android/gms/internal/ads/zzbck;

.field private final synthetic zzeff:Lcom/google/android/gms/internal/ads/zzbci;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbcn;Lcom/google/android/gms/internal/ads/zzbck;Lcom/google/android/gms/internal/ads/zzbci;)V
    .registers 4

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbcp;->zzefe:Lcom/google/android/gms/internal/ads/zzbck;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbcp;->zzeff:Lcom/google/android/gms/internal/ads/zzbci;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcp;->zzefe:Lcom/google/android/gms/internal/ads/zzbck;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbck;->zzh(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzb(Ljava/lang/Throwable;)V
    .registers 2

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbcp;->zzeff:Lcom/google/android/gms/internal/ads/zzbci;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbci;->run()V

    return-void
.end method
