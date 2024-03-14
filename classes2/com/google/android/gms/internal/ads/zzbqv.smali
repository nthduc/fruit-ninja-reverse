.class public final Lcom/google/android/gms/internal/ads/zzbqv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private final executor:Ljava/util/concurrent/Executor;

.field private volatile zzafc:Z

.field private final zzfmv:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzfry:Lcom/google/android/gms/internal/ads/zzdzc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "Lcom/google/android/gms/internal/ads/zzbqu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/zzdzc;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "Lcom/google/android/gms/internal/ads/zzbqu;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbqv;->zzafc:Z

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbqv;->executor:Ljava/util/concurrent/Executor;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbqv;->zzfmv:Ljava/util/concurrent/ScheduledExecutorService;

    .line 5
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbqv;->zzfry:Lcom/google/android/gms/internal/ads/zzdzc;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzbqv;)V
    .registers 1

    .line 31
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbqv;->zzaja()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzbqv;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzdyr;)V
    .registers 3

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbqv;->zza(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzdyr;)V

    return-void
.end method

.method private final zza(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzdyr;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "+",
            "Lcom/google/android/gms/internal/ads/zzbqo;",
            ">;>;",
            "Lcom/google/android/gms/internal/ads/zzdyr<",
            "Lcom/google/android/gms/internal/ads/zzbqo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_42

    .line 9
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_42

    :cond_9
    const/4 v0, 0x0

    .line 12
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdyq;->zzaf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v0

    .line 13
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzdzc;

    .line 14
    const-class v2, Ljava/lang/Throwable;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzbqx;

    invoke-direct {v3, p2}, Lcom/google/android/gms/internal/ads/zzbqx;-><init>(Lcom/google/android/gms/internal/ads/zzdyr;)V

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbqv;->executor:Ljava/util/concurrent/Executor;

    .line 15
    invoke-static {v0, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzdyq;->zzb(Lcom/google/android/gms/internal/ads/zzdzc;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzdya;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v0

    .line 16
    new-instance v2, Lcom/google/android/gms/internal/ads/zzbra;

    invoke-direct {v2, p0, p2, v1}, Lcom/google/android/gms/internal/ads/zzbra;-><init>(Lcom/google/android/gms/internal/ads/zzbqv;Lcom/google/android/gms/internal/ads/zzdyr;Lcom/google/android/gms/internal/ads/zzdzc;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbqv;->executor:Ljava/util/concurrent/Executor;

    .line 17
    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzdyq;->zzb(Lcom/google/android/gms/internal/ads/zzdzc;Lcom/google/android/gms/internal/ads/zzdya;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v0

    goto :goto_12

    .line 19
    :cond_37
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbrb;

    invoke-direct {p1, p0, p2}, Lcom/google/android/gms/internal/ads/zzbrb;-><init>(Lcom/google/android/gms/internal/ads/zzbqv;Lcom/google/android/gms/internal/ads/zzdyr;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbqv;->executor:Ljava/util/concurrent/Executor;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdyq;->zza(Lcom/google/android/gms/internal/ads/zzdzc;Lcom/google/android/gms/internal/ads/zzdyr;Ljava/util/concurrent/Executor;)V

    return-void

    .line 10
    :cond_42
    :goto_42
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbqv;->executor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbqy;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/zzbqy;-><init>(Lcom/google/android/gms/internal/ads/zzdyr;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final zzaja()V
    .registers 3

    .line 22
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbz;->zzeet:Lcom/google/android/gms/internal/ads/zzdzb;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbqz;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzbqz;-><init>(Lcom/google/android/gms/internal/ads/zzbqv;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzdzb;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final isLoading()Z
    .registers 2

    .line 21
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbqv;->zzafc:Z

    return v0
.end method

.method final synthetic zza(Lcom/google/android/gms/internal/ads/zzdyr;Lcom/google/android/gms/internal/ads/zzdzc;Lcom/google/android/gms/internal/ads/zzbqo;)Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p3, :cond_5

    .line 26
    invoke-interface {p1, p3}, Lcom/google/android/gms/internal/ads/zzdyr;->onSuccess(Ljava/lang/Object;)V

    .line 27
    :cond_5
    sget-object p1, Lcom/google/android/gms/internal/ads/zzadf;->zzdcp:Lcom/google/android/gms/internal/ads/zzaci;

    .line 28
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaci;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzbqv;->zzfmv:Ljava/util/concurrent/ScheduledExecutorService;

    .line 29
    invoke-static {p2, v0, v1, p1, p3}, Lcom/google/android/gms/internal/ads/zzdyq;->zza(Lcom/google/android/gms/internal/ads/zzdzc;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzdyr;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdyr<",
            "Lcom/google/android/gms/internal/ads/zzbqo;",
            ">;)V"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqv;->zzfry:Lcom/google/android/gms/internal/ads/zzdzc;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbrc;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzbrc;-><init>(Lcom/google/android/gms/internal/ads/zzbqv;Lcom/google/android/gms/internal/ads/zzdyr;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbqv;->executor:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdyq;->zza(Lcom/google/android/gms/internal/ads/zzdzc;Lcom/google/android/gms/internal/ads/zzdyr;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method final synthetic zzajb()V
    .registers 2

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbqv;->zzafc:Z

    return-void
.end method
