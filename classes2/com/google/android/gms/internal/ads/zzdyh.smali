.class final Lcom/google/android/gms/internal/ads/zzdyh;
.super Lcom/google/android/gms/internal/ads/zzdyg;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzdyg<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final synthetic zzhsz:Lcom/google/android/gms/internal/ads/zzdye;

.field private final zzhta:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdye;Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdyh;->zzhsz:Lcom/google/android/gms/internal/ads/zzdye;

    .line 2
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/ads/zzdyg;-><init>(Lcom/google/android/gms/internal/ads/zzdye;Ljava/util/concurrent/Executor;)V

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzdwd;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Callable;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdyh;->zzhta:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method final setValue(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyh;->zzhsz:Lcom/google/android/gms/internal/ads/zzdye;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdxq;->set(Ljava/lang/Object;)Z

    return-void
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

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdyh;->zzhsy:Z

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyh;->zzhta:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final zzaye()Ljava/lang/String;
    .registers 2

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyh;->zzhta:Ljava/util/concurrent/Callable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
