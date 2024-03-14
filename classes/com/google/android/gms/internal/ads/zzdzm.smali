.class final Lcom/google/android/gms/internal/ads/zzdzm;
.super Lcom/google/android/gms/internal/ads/zzdyk;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/zzdyk<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private zzhtu:Lcom/google/android/gms/internal/ads/zzdzc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field private zzhtv:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzdzc;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "TV;>;)V"
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdyk;-><init>()V

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdwd;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdzc;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdzm;->zzhtu:Lcom/google/android/gms/internal/ads/zzdzc;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzdzm;)Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdzm;->zzhtu:Lcom/google/android/gms/internal/ads/zzdzc;

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzdzm;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;
    .registers 2

    const/4 p1, 0x0

    .line 30
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdzm;->zzhtv:Ljava/util/concurrent/ScheduledFuture;

    return-object p1
.end method

.method static zzb(Lcom/google/android/gms/internal/ads/zzdzc;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "TV;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdzm;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdzm;-><init>(Lcom/google/android/gms/internal/ads/zzdzc;)V

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdzo;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzdzo;-><init>(Lcom/google/android/gms/internal/ads/zzdzm;)V

    .line 3
    invoke-interface {p4, v1, p1, p2, p3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, v0, Lcom/google/android/gms/internal/ads/zzdzm;->zzhtv:Ljava/util/concurrent/ScheduledFuture;

    .line 5
    sget-object p1, Lcom/google/android/gms/internal/ads/zzdyj;->zzhtb:Lcom/google/android/gms/internal/ads/zzdyj;

    .line 6
    invoke-interface {p0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdzc;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzdzm;)Ljava/util/concurrent/ScheduledFuture;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdzm;->zzhtv:Ljava/util/concurrent/ScheduledFuture;

    return-object p0
.end method


# virtual methods
.method protected final afterDone()V
    .registers 3

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdzm;->zzhtu:Lcom/google/android/gms/internal/ads/zzdzc;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdxq;->maybePropagateCancellationTo(Ljava/util/concurrent/Future;)V

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdzm;->zzhtv:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_d

    const/4 v1, 0x0

    .line 24
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_d
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdzm;->zzhtu:Lcom/google/android/gms/internal/ads/zzdzc;

    .line 26
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdzm;->zzhtv:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method protected final pendingToString()Ljava/lang/String;
    .registers 7

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdzm;->zzhtu:Lcom/google/android/gms/internal/ads/zzdzc;

    .line 12
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdzm;->zzhtv:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_60

    .line 14
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xe

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "inputFuture=["

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_5f

    .line 16
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledFuture;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_5f

    .line 18
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2b

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", remaining delay=["

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms]"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_5f
    return-object v0

    :cond_60
    const/4 v0, 0x0

    return-object v0
.end method
