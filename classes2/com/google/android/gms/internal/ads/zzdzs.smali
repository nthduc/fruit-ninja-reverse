.class final Lcom/google/android/gms/internal/ads/zzdzs;
.super Lcom/google/android/gms/internal/ads/zzdyy;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzdyy<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final zzhta:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TV;>;"
        }
    .end annotation
.end field

.field private final synthetic zzhty:Lcom/google/android/gms/internal/ads/zzdzq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdzq;Ljava/util/concurrent/Callable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdzs;->zzhty:Lcom/google/android/gms/internal/ads/zzdzq;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdyy;-><init>()V

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzdwd;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Callable;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdzs;->zzhta:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method final isDone()Z
    .registers 2

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdzs;->zzhty:Lcom/google/android/gms/internal/ads/zzdzq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdxq;->isDone()Z

    move-result v0

    return v0
.end method

.method final zzayd()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdzs;->zzhta:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final zzaye()Ljava/lang/String;
    .registers 2

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdzs;->zzhta:Ljava/util/concurrent/Callable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final zzb(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_8

    .line 7
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdzs;->zzhty:Lcom/google/android/gms/internal/ads/zzdzq;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzdxq;->set(Ljava/lang/Object;)Z

    return-void

    .line 8
    :cond_8
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdzs;->zzhty:Lcom/google/android/gms/internal/ads/zzdzq;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzdxq;->setException(Ljava/lang/Throwable;)Z

    return-void
.end method
