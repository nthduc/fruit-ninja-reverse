.class final Lcom/google/android/gms/internal/ads/zzdzq;
.super Lcom/google/android/gms/internal/ads/zzdyk;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Ljava/util/concurrent/RunnableFuture;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/zzdyk<",
        "TV;>;",
        "Ljava/util/concurrent/RunnableFuture<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private volatile zzhtz:Lcom/google/android/gms/internal/ads/zzdyy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdyy<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdyb;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdyb<",
            "TV;>;)V"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdyk;-><init>()V

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdzp;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzdzp;-><init>(Lcom/google/android/gms/internal/ads/zzdzq;Lcom/google/android/gms/internal/ads/zzdyb;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdzq;->zzhtz:Lcom/google/android/gms/internal/ads/zzdyy;

    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/Callable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdyk;-><init>()V

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdzs;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzdzs;-><init>(Lcom/google/android/gms/internal/ads/zzdzq;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdzq;->zzhtz:Lcom/google/android/gms/internal/ads/zzdyy;

    return-void
.end method

.method static zza(Ljava/lang/Runnable;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzq;
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TV;)",
            "Lcom/google/android/gms/internal/ads/zzdzq<",
            "TV;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdzq;

    invoke-static {p0, p1}, Ljava/util/concurrent/Executors;->callable(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Callable;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdzq;-><init>(Ljava/util/concurrent/Callable;)V

    return-object v0
.end method

.method static zzf(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzdzq;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)",
            "Lcom/google/android/gms/internal/ads/zzdzq<",
            "TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdzq;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdzq;-><init>(Ljava/util/concurrent/Callable;)V

    return-object v0
.end method


# virtual methods
.method protected final afterDone()V
    .registers 2

    .line 14
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzdyk;->afterDone()V

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdxq;->wasInterrupted()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdzq;->zzhtz:Lcom/google/android/gms/internal/ads/zzdyy;

    if-eqz v0, :cond_10

    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdyy;->interruptTask()V

    :cond_10
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdzq;->zzhtz:Lcom/google/android/gms/internal/ads/zzdyy;

    return-void
.end method

.method protected final pendingToString()Ljava/lang/String;
    .registers 4

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdzq;->zzhtz:Lcom/google/android/gms/internal/ads/zzdyy;

    if-eqz v0, :cond_29

    .line 23
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "task=["

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 24
    :cond_29
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzdyk;->pendingToString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final run()V
    .registers 2

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdzq;->zzhtz:Lcom/google/android/gms/internal/ads/zzdyy;

    if-eqz v0, :cond_7

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdyy;->run()V

    :cond_7
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdzq;->zzhtz:Lcom/google/android/gms/internal/ads/zzdyy;

    return-void
.end method
