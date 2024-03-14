.class public final Lcom/google/android/gms/internal/ads/zzdst;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private final executor:Ljava/util/concurrent/Executor;

.field private final zzhln:Lcom/google/android/gms/internal/ads/zzbbu;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzbbu;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdst;->executor:Ljava/util/concurrent/Executor;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdst;->zzhln:Lcom/google/android/gms/internal/ads/zzbbu;

    return-void
.end method


# virtual methods
.method public final zzes(Ljava/lang/String;)V
    .registers 4

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdst;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdsw;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzdsw;-><init>(Lcom/google/android/gms/internal/ads/zzdst;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method final synthetic zzgz(Ljava/lang/String;)V
    .registers 3

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdst;->zzhln:Lcom/google/android/gms/internal/ads/zzbbu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbu;->zzes(Ljava/lang/String;)V

    return-void
.end method

.method public final zzj(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 6
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdst;->zzes(Ljava/lang/String;)V

    goto :goto_4

    :cond_14
    return-void
.end method
