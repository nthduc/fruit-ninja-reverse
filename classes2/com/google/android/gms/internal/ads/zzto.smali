.class final synthetic Lcom/google/android/gms/internal/ads/zzto;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzbvu:Lcom/google/android/gms/internal/ads/zzbcg;

.field private final zzbvv:Ljava/util/concurrent/Future;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbcg;Ljava/util/concurrent/Future;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzto;->zzbvu:Lcom/google/android/gms/internal/ads/zzbcg;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzto;->zzbvv:Ljava/util/concurrent/Future;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzto;->zzbvu:Lcom/google/android/gms/internal/ads/zzbcg;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzto;->zzbvv:Ljava/util/concurrent/Future;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbcg;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    .line 3
    invoke-interface {v1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_e
    return-void
.end method
