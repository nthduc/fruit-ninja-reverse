.class public final Lcom/google/android/gms/internal/ads/zzbrh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/zzp;


# instance fields
.field private final zzfsg:Lcom/google/android/gms/internal/ads/zzbvh;

.field private zzfsh:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbvh;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbrh;->zzfsh:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbrh;->zzfsg:Lcom/google/android/gms/internal/ads/zzbvh;

    return-void
.end method


# virtual methods
.method public final isClosed()Z
    .registers 2

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbrh;->zzfsh:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public final onPause()V
    .registers 1

    return-void
.end method

.method public final onResume()V
    .registers 1

    return-void
.end method

.method public final zzum()V
    .registers 3

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbrh;->zzfsh:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbrh;->zzfsg:Lcom/google/android/gms/internal/ads/zzbvh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbvh;->onAdClosed()V

    return-void
.end method

.method public final zzun()V
    .registers 2

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbrh;->zzfsg:Lcom/google/android/gms/internal/ads/zzbvh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbvh;->onAdOpened()V

    return-void
.end method
