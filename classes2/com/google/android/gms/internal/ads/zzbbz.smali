.class public final Lcom/google/android/gms/internal/ads/zzbbz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# static fields
.field public static final zzeep:Lcom/google/android/gms/internal/ads/zzdzb;

.field public static final zzeeq:Lcom/google/android/gms/internal/ads/zzdzb;

.field public static final zzeer:Lcom/google/android/gms/internal/ads/zzdzb;

.field public static final zzees:Ljava/util/concurrent/ScheduledExecutorService;

.field public static final zzeet:Lcom/google/android/gms/internal/ads/zzdzb;

.field public static final zzeeu:Lcom/google/android/gms/internal/ads/zzdzb;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .line 3
    invoke-static {}, Lcom/google/android/gms/common/util/ClientLibraryUtils;->isPackageSide()Z

    move-result v0

    const-string v1, "Default"

    if-eqz v0, :cond_17

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdvg;->zzaxc()Lcom/google/android/gms/internal/ads/zzdvd;

    move-result-object v0

    .line 5
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbbz;->zzfh(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v1

    sget v2, Lcom/google/android/gms/internal/ads/zzdvl;->zzhov:I

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdvd;->zza(Ljava/util/concurrent/ThreadFactory;I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    goto :goto_2e

    .line 6
    :cond_17
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x2

    const v3, 0x7fffffff

    const-wide/16 v4, 0xa

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    .line 7
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbbz;->zzfh(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 8
    :goto_2e
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbbz;->zza(Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzb;

    move-result-object v0

    .line 9
    sput-object v0, Lcom/google/android/gms/internal/ads/zzbbz;->zzeep:Lcom/google/android/gms/internal/ads/zzdzb;

    .line 10
    invoke-static {}, Lcom/google/android/gms/common/util/ClientLibraryUtils;->isPackageSide()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "Loader"

    if-eqz v0, :cond_4d

    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdvg;->zzaxc()Lcom/google/android/gms/internal/ads/zzdvd;

    move-result-object v0

    const/4 v3, 0x5

    .line 12
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzbbz;->zzfh(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v2

    sget v4, Lcom/google/android/gms/internal/ads/zzdvl;->zzhou:I

    .line 13
    invoke-interface {v0, v3, v2, v4}, Lcom/google/android/gms/internal/ads/zzdvd;->zza(ILjava/util/concurrent/ThreadFactory;I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    goto :goto_68

    .line 14
    :cond_4d
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v3, 0x5

    const/4 v4, 0x5

    const-wide/16 v5, 0xa

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 15
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzbbz;->zzfh(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v9

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 16
    move-object v2, v0

    check-cast v2, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 17
    :goto_68
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbbz;->zza(Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzb;

    move-result-object v0

    .line 18
    sput-object v0, Lcom/google/android/gms/internal/ads/zzbbz;->zzeeq:Lcom/google/android/gms/internal/ads/zzdzb;

    .line 19
    invoke-static {}, Lcom/google/android/gms/common/util/ClientLibraryUtils;->isPackageSide()Z

    move-result v0

    const-string v2, "Activeview"

    if-eqz v0, :cond_85

    .line 20
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdvg;->zzaxc()Lcom/google/android/gms/internal/ads/zzdvd;

    move-result-object v0

    .line 21
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzbbz;->zzfh(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v1

    sget v2, Lcom/google/android/gms/internal/ads/zzdvl;->zzhou:I

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdvd;->zzb(Ljava/util/concurrent/ThreadFactory;I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    goto :goto_a0

    .line 22
    :cond_85
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const-wide/16 v5, 0xa

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 23
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzbbz;->zzfh(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v9

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 24
    move-object v2, v0

    check-cast v2, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 25
    :goto_a0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbbz;->zza(Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzb;

    move-result-object v0

    .line 26
    sput-object v0, Lcom/google/android/gms/internal/ads/zzbbz;->zzeer:Lcom/google/android/gms/internal/ads/zzdzb;

    .line 27
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbby;

    const/4 v1, 0x3

    const-string v2, "Schedule"

    .line 28
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzbbz;->zzfh(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbby;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbbz;->zzees:Ljava/util/concurrent/ScheduledExecutorService;

    .line 29
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbca;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbca;-><init>()V

    .line 30
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbbz;->zza(Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzb;

    move-result-object v0

    .line 31
    sput-object v0, Lcom/google/android/gms/internal/ads/zzbbz;->zzeet:Lcom/google/android/gms/internal/ads/zzdzb;

    .line 32
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdze;->zzayh()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbbz;->zza(Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzb;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbbz;->zzeeu:Lcom/google/android/gms/internal/ads/zzdzb;

    return-void
.end method

.method private static zza(Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzb;
    .registers 3

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbcd;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzbcd;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzbby;)V

    return-object v0
.end method

.method private static zzfh(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbcb;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzbcb;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
