.class final Lcom/google/android/gms/internal/ads/zzbcm;
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
.field private final synthetic zzefb:Lcom/google/android/gms/internal/ads/zzbcn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbcn;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbcm;->zzefb:Lcom/google/android/gms/internal/ads/zzbcn;

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
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbcm;->zzefb:Lcom/google/android/gms/internal/ads/zzbcn;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbcn;->zza(Lcom/google/android/gms/internal/ads/zzbcn;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public final zzb(Ljava/lang/Throwable;)V
    .registers 3

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbcm;->zzefb:Lcom/google/android/gms/internal/ads/zzbcn;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbcn;->zza(Lcom/google/android/gms/internal/ads/zzbcn;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method
