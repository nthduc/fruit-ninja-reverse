.class public final Lcom/google/android/gms/internal/ads/zzawo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final zzdxn:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/util/concurrent/ExecutorService;",
            ">;"
        }
    .end annotation
.end field

.field private final zzdxo:Ljava/lang/Object;

.field private zzdxp:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "gmpAppIdLock"
    .end annotation
.end field

.field private zzdxq:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "gmpAppIdLock"
    .end annotation
.end field

.field private final zzdxr:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field private final zzdxs:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final zzdxt:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final zzdxu:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final zzdxv:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private final zzdxw:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/gms/internal/ads/zzbiq;",
            ">;"
        }
    .end annotation
.end field

.field private final zzdxx:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/util/concurrent/FutureTask<",
            "*>;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "proxyReference"
    .end annotation
.end field

.field private final zzdxy:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzawo;->zzdxn:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzawo;->zzdxo:Ljava/lang/Object;

    .line 4
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzawo;->zzdxp:Ljava/lang/String;

    .line 5
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzawo;->zzdxq:Ljava/lang/String;

    .line 6
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzawo;->zzdxr:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, -0x1

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzawo;->zzdxs:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 8
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzawo;->zzdxt:Ljava/util/concurrent/atomic/AtomicReference;

    .line 9
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzawo;->zzdxu:Ljava/util/concurrent/atomic/AtomicReference;

    .line 10
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v2, 0x9

    invoke-direct {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzawo;->zzdxv:Ljava/util/concurrent/ConcurrentMap;

    .line 11
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzawo;->zzdxw:Ljava/util/concurrent/atomic/AtomicReference;

    .line 12
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzawo;->zzdxx:Ljava/util/concurrent/BlockingQueue;

    .line 13
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzawo;->zzdxy:Ljava/lang/Object;

    return-void
.end method

.method private final zza(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;
    .registers 7

    .line 263
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawo;->zzdxt:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x1

    const-string v2, "com.google.android.gms.measurement.AppMeasurement"

    invoke-direct {p0, p2, v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzawo;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Z)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_d

    return-object v2

    .line 265
    :cond_d
    invoke-direct {p0, p2, p1}, Lcom/google/android/gms/internal/ads/zzawo;->zzn(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object p2

    .line 266
    :try_start_11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawo;->zzdxt:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1e} :catch_1f

    return-object p1

    .line 268
    :catch_1f
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzawo;->zzh(Ljava/lang/String;Z)V

    return-object v2
.end method

.method private final zza(Ljava/lang/String;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzaxf;)Ljava/lang/Object;
    .registers 6
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;",
            "Lcom/google/android/gms/internal/ads/zzaxf<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 310
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawo;->zzdxw:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    .line 311
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzawo;->zzdxw:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbiq;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_21

    if-eqz v1, :cond_1f

    .line 313
    :try_start_d
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzawo;->zzdxw:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbiq;

    invoke-interface {p3, v1}, Lcom/google/android/gms/internal/ads/zzaxf;->zza(Lcom/google/android/gms/internal/ads/zzbiq;)Ljava/lang/Object;

    move-result-object p1
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_19} :catch_1b
    .catchall {:try_start_d .. :try_end_19} :catchall_21

    :try_start_19
    monitor-exit v0

    return-object p1

    :catch_1b
    const/4 p3, 0x0

    .line 315
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/ads/zzawo;->zzh(Ljava/lang/String;Z)V

    .line 316
    :cond_1f
    monitor-exit v0

    return-object p2

    :catchall_21
    move-exception p1

    .line 317
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_19 .. :try_end_23} :catchall_21

    throw p1
.end method

.method private final zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 254
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawo;->zzdxt:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x1

    const-string v2, "com.google.android.gms.measurement.AppMeasurement"

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzawo;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Z)Z

    move-result v0

    if-nez v0, :cond_c

    return-void

    .line 256
    :cond_c
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/ads/zzawo;->zzm(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object p1

    const/4 v0, 0x0

    .line 257
    :try_start_11
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzawo;->zzdxt:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v0

    invoke-virtual {p1, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x25

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr p1, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "Invoke Firebase method "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", Ad Unit Id: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzei(Ljava/lang/String;)V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_4d} :catch_4e

    return-void

    .line 261
    :catch_4e
    invoke-direct {p0, p3, v0}, Lcom/google/android/gms/internal/ads/zzawo;->zzh(Ljava/lang/String;Z)V

    return-void
.end method

.method private final zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 10
    .param p4    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 188
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzawo;->zzac(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 190
    :cond_7
    invoke-static {p3, p2}, Lcom/google/android/gms/internal/ads/zzawo;->zzl(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p3

    if-eqz p4, :cond_10

    .line 192
    invoke-virtual {p3, p4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 193
    :cond_10
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzawo;->zzad(Landroid/content/Context;)Z

    move-result p4

    const-string v0, "logEventInternal"

    if-eqz p4, :cond_21

    .line 194
    new-instance p1, Lcom/google/android/gms/internal/ads/zzawt;

    invoke-direct {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzawt;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzawo;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaxe;)V

    return-void

    .line 195
    :cond_21
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzawo;->zzdxt:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x1

    const-string v2, "com.google.android.gms.measurement.AppMeasurement"

    invoke-direct {p0, p1, v2, p4, v1}, Lcom/google/android/gms/internal/ads/zzawo;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Z)Z

    move-result p4

    if-nez p4, :cond_2d

    return-void

    .line 197
    :cond_2d
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzawo;->zzaj(Landroid/content/Context;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 198
    :try_start_31
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzawo;->zzdxt:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p4

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "am"

    aput-object v4, v2, v3

    aput-object p2, v2, v1

    const/4 p2, 0x2

    aput-object p3, v2, p2

    invoke-virtual {p1, p4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_47} :catch_48

    return-void

    .line 201
    :catch_48
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzawo;->zzh(Ljava/lang/String;Z)V

    return-void
.end method

.method private final zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaxe;)V
    .registers 6

    .line 304
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawo;->zzdxw:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    .line 305
    :try_start_3
    new-instance v1, Ljava/util/concurrent/FutureTask;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzaws;

    invoke-direct {v2, p0, p2, p1}, Lcom/google/android/gms/internal/ads/zzaws;-><init>(Lcom/google/android/gms/internal/ads/zzawo;Lcom/google/android/gms/internal/ads/zzaxe;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-direct {v1, v2, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 306
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzawo;->zzdxw:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1a

    .line 307
    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->run()V

    goto :goto_1f

    .line 308
    :cond_1a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzawo;->zzdxx:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p1, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 309
    :goto_1f
    monitor-exit v0

    return-void

    :catchall_21
    move-exception p1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw p1
.end method

.method private final zza(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Z)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Object;",
            ">;Z)Z"
        }
    .end annotation

    const-string v0, "getInstance"

    .line 294
    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_2d

    const/4 v1, 0x0

    .line 295
    :try_start_a
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    .line 296
    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v3, v1

    .line 297
    invoke-virtual {p2, v0, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    .line 298
    new-array v3, v2, [Ljava/lang/Object;

    aput-object p1, v3, v1

    const/4 p1, 0x0

    invoke-virtual {p2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_28} :catch_29

    goto :goto_2d

    .line 301
    :catch_29
    invoke-direct {p0, v0, p4}, Lcom/google/android/gms/internal/ads/zzawo;->zzh(Ljava/lang/String;Z)V

    return v1

    :cond_2d
    :goto_2d
    return v2
.end method

.method private static zzad(Landroid/content/Context;)Z
    .registers 5
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 33
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabb;->zzcns:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 34
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 35
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_14

    return v1

    :cond_14
    const-string v0, "com.google.android.gms.ads.dynamite"

    .line 38
    invoke-static {p0, v0}, Lcom/google/android/gms/dynamite/DynamiteModule;->getLocalVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 39
    sget-object v2, Lcom/google/android/gms/internal/ads/zzabb;->zzcnt:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 41
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v2

    .line 42
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v0, v2, :cond_2d

    return v1

    .line 44
    :cond_2d
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabb;->zzcnu:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 45
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 46
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_4a

    .line 47
    :try_start_40
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    const-string v0, "com.google.firebase.analytics.FirebaseAnalytics"

    invoke-virtual {p0, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_49
    .catch Ljava/lang/ClassNotFoundException; {:try_start_40 .. :try_end_49} :catch_4a

    return v1

    :catch_4a
    :cond_4a
    return v2
.end method

.method private final zzaj(Landroid/content/Context;)Ljava/lang/reflect/Method;
    .registers 7
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 211
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawo;->zzdxv:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "logEventInternal"

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    if-eqz v0, :cond_d

    return-object v0

    :cond_d
    const/4 v0, 0x1

    .line 214
    :try_start_e
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    const-string v2, "com.google.android.gms.measurement.AppMeasurement"

    invoke-virtual {p1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const/4 v2, 0x3

    .line 215
    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v0

    const/4 v3, 0x2

    const-class v4, Landroid/os/Bundle;

    aput-object v4, v2, v3

    .line 216
    invoke-virtual {p1, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 217
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzawo;->zzdxv:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v1, p1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_32} :catch_33

    return-object p1

    .line 220
    :catch_33
    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzawo;->zzh(Ljava/lang/String;Z)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private final zzh(Ljava/lang/String;Z)V
    .registers 5

    .line 270
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawo;->zzdxr:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_38

    .line 271
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Invoke Firebase method "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " error."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzfe(Ljava/lang/String;)V

    if-eqz p2, :cond_38

    const-string p1, "The Google Mobile Ads SDK will not integrate with Firebase. Admob/Firebase integration requires the latest Firebase SDK jar, but Firebase SDK is either missing or out of date"

    .line 273
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzfe(Ljava/lang/String;)V

    .line 274
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzawo;->zzdxr:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_38
    return-void
.end method

.method private static zzl(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .registers 6

    .line 203
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :try_start_5
    const-string v1, "_aeid"

    .line 204
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
    :try_end_e
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_e} :catch_11
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_e} :catch_f

    goto :goto_2b

    :catch_f
    move-exception v1

    goto :goto_12

    :catch_11
    move-exception v1

    :goto_12
    const-string v2, "Invalid event ID: "

    .line 207
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_23

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_28

    :cond_23
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_28
    invoke-static {p0, v1}, Lcom/google/android/gms/internal/ads/zzayp;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2b
    const-string p0, "_ac"

    .line 208
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_39

    const/4 p0, 0x1

    const-string p1, "_r"

    .line 209
    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_39
    return-object v0
.end method

.method private final zzm(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .registers 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 222
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawo;->zzdxv:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    if-eqz v0, :cond_b

    return-object v0

    :cond_b
    const/4 v0, 0x0

    .line 225
    :try_start_c
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    const-string v1, "com.google.android.gms.measurement.AppMeasurement"

    invoke-virtual {p1, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const/4 v1, 0x1

    .line 226
    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v0

    invoke-virtual {p1, p2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 227
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzawo;->zzdxv:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p2, p1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_26} :catch_27

    return-object p1

    .line 230
    :catch_27
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzawo;->zzh(Ljava/lang/String;Z)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private final zzn(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .registers 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 232
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawo;->zzdxv:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    if-eqz v0, :cond_b

    return-object v0

    :cond_b
    const/4 v0, 0x0

    .line 235
    :try_start_c
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    const-string v1, "com.google.android.gms.measurement.AppMeasurement"

    invoke-virtual {p1, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 236
    new-array v1, v0, [Ljava/lang/Class;

    invoke-virtual {p1, p2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 237
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzawo;->zzdxv:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p2, p1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_21} :catch_22

    return-object p1

    .line 240
    :catch_22
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzawo;->zzh(Ljava/lang/String;Z)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private final zzo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .registers 7

    .line 242
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawo;->zzdxv:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    if-eqz v0, :cond_b

    return-object v0

    :cond_b
    const/4 v0, 0x0

    .line 246
    :try_start_c
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    const-string v1, "com.google.firebase.analytics.FirebaseAnalytics"

    invoke-virtual {p1, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const/4 v1, 0x3

    .line 247
    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Landroid/app/Activity;

    aput-object v2, v1, v0

    const/4 v2, 0x1

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    .line 248
    invoke-virtual {p1, p2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 249
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzawo;->zzdxv:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p2, p1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_30} :catch_31

    return-object p1

    .line 252
    :catch_31
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzawo;->zzh(Ljava/lang/String;Z)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private final zzvx()Ljava/util/concurrent/ExecutorService;
    .registers 10

    .line 276
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawo;->zzdxn:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_66

    .line 277
    invoke-static {}, Lcom/google/android/gms/common/util/ClientLibraryUtils;->isPackageSide()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 278
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdvg;->zzaxc()Lcom/google/android/gms/internal/ads/zzdvd;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzabb;->zzcnr:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 280
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v1

    .line 281
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzawo;->zzvy()Ljava/util/concurrent/ThreadFactory;

    move-result-object v2

    sget v3, Lcom/google/android/gms/internal/ads/zzdvl;->zzhov:I

    .line 282
    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdvd;->zza(ILjava/util/concurrent/ThreadFactory;I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    goto :goto_60

    .line 283
    :cond_2d
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzabb;->zzcnr:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 285
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v1

    .line 286
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v1, Lcom/google/android/gms/internal/ads/zzabb;->zzcnr:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 288
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v1

    .line 289
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 290
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzawo;->zzvy()Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 291
    :goto_60
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzawo;->zzdxn:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 292
    :cond_66
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawo;->zzdxn:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method private final zzvy()Ljava/util/concurrent/ThreadFactory;
    .registers 2

    .line 293
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaxc;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzaxc;-><init>(Lcom/google/android/gms/internal/ads/zzawo;)V

    return-object v0
.end method


# virtual methods
.method public final zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzaae;)V
    .registers 4

    .line 52
    sget-object p2, Lcom/google/android/gms/internal/ads/zzabb;->zzcny:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 53
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object p2

    .line 54
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_27

    .line 55
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzawo;->zzac(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_27

    .line 56
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzawo;->zzad(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1f

    goto :goto_27

    .line 58
    :cond_1f
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzawo;->zzdxy:Ljava/lang/Object;

    monitor-enter p1

    .line 59
    :try_start_22
    monitor-exit p1

    return-void

    :catchall_24
    move-exception p2

    monitor-exit p1
    :try_end_26
    .catchall {:try_start_22 .. :try_end_26} :catchall_24

    throw p2

    :cond_27
    :goto_27
    return-void
.end method

.method public final zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzvg;)V
    .registers 4

    .line 60
    sget-object p2, Lcom/google/android/gms/internal/ads/zzabb;->zzcny:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 61
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object p2

    .line 62
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_27

    .line 63
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzawo;->zzac(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_27

    .line 64
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzawo;->zzad(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1f

    goto :goto_27

    .line 66
    :cond_1f
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzawo;->zzdxy:Ljava/lang/Object;

    monitor-enter p1

    .line 67
    :try_start_22
    monitor-exit p1

    return-void

    :catchall_24
    move-exception p2

    monitor-exit p1
    :try_end_26
    .catchall {:try_start_22 .. :try_end_26} :catchall_24

    throw p2

    :cond_27
    :goto_27
    return-void
.end method

.method public final zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 8

    .line 179
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzawo;->zzac(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 181
    :cond_7
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "_ai"

    .line 182
    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "reward_type"

    .line 183
    invoke-virtual {v0, p3, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "reward_value"

    .line 184
    invoke-virtual {v0, p3, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p3, "_ar"

    .line 185
    invoke-direct {p0, p1, p3, p2, v0}, Lcom/google/android/gms/internal/ads/zzawo;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 186
    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x4b

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "Log a Firebase reward video event, reward type: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", reward value: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzei(Ljava/lang/String;)V

    return-void
.end method

.method final synthetic zza(Lcom/google/android/gms/internal/ads/zzaxe;Ljava/lang/String;)V
    .registers 4

    .line 318
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawo;->zzdxw:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbiq;

    if-eqz v0, :cond_1a

    .line 320
    :try_start_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawo;->zzdxw:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbiq;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzaxe;->zzb(Lcom/google/android/gms/internal/ads/zzbiq;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_15} :catch_16

    return-void

    :catch_16
    const/4 p1, 0x0

    .line 323
    invoke-direct {p0, p2, p1}, Lcom/google/android/gms/internal/ads/zzawo;->zzh(Ljava/lang/String;Z)V

    :cond_1a
    return-void
.end method

.method public final zzac(Landroid/content/Context;)Z
    .registers 6

    .line 14
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabb;->zzcnl:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 16
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 17
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_67

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawo;->zzdxr:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_67

    .line 20
    :cond_1c
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabb;->zzcnv:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 21
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 22
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_30

    return v2

    .line 24
    :cond_30
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawo;->zzdxs:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_5e

    .line 25
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpt()Lcom/google/android/gms/internal/ads/zzbbg;

    const v0, 0xbdfcb8

    .line 26
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzbbg;->zzd(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_59

    .line 28
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpt()Lcom/google/android/gms/internal/ads/zzbbg;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbbg;->zzbp(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_59

    const-string p1, "Google Play Service is out of date, the Google Mobile Ads SDK will not integrate with Firebase. Admob/Firebase integration requires updated Google Play Service."

    .line 29
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzfe(Ljava/lang/String;)V

    .line 30
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzawo;->zzdxs:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_5e

    .line 31
    :cond_59
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzawo;->zzdxs:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 32
    :cond_5e
    :goto_5e
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzawo;->zzdxs:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-ne p1, v2, :cond_67

    return v2

    :cond_67
    :goto_67
    return v1
.end method

.method public final zzae(Landroid/content/Context;)Ljava/lang/String;
    .registers 8

    const-string v0, "getCurrentScreenName"

    .line 80
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzawo;->zzac(Landroid/content/Context;)Z

    move-result v1

    const-string v2, ""

    if-nez v1, :cond_b

    return-object v2

    .line 82
    :cond_b
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzawo;->zzad(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 83
    sget-object p1, Lcom/google/android/gms/internal/ads/zzawx;->zzdya:Lcom/google/android/gms/internal/ads/zzaxf;

    const-string v0, "getCurrentScreenNameOrScreenClass"

    invoke-direct {p0, v0, v2, p1}, Lcom/google/android/gms/internal/ads/zzawo;->zza(Ljava/lang/String;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzaxf;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 84
    :cond_1c
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzawo;->zzdxt:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x1

    const-string v4, "com.google.android.gms.measurement.AppMeasurement"

    invoke-direct {p0, p1, v4, v1, v3}, Lcom/google/android/gms/internal/ads/zzawo;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Z)Z

    move-result v1

    if-nez v1, :cond_28

    return-object v2

    :cond_28
    const/4 v1, 0x0

    .line 86
    :try_start_29
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzawo;->zzn(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 87
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzawo;->zzdxt:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_52

    const-string v3, "getCurrentScreenClass"

    .line 89
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/ads/zzawo;->zzn(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 90
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzawo;->zzdxt:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Ljava/lang/String;
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_52} :catch_56

    :cond_52
    if-eqz v3, :cond_55

    return-object v3

    :cond_55
    return-object v2

    .line 93
    :catch_56
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzawo;->zzh(Ljava/lang/String;Z)V

    return-object v2
.end method

.method public final zzaf(Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 113
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzawo;->zzac(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p1, 0x0

    return-object p1

    .line 115
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawo;->zzdxo:Ljava/lang/Object;

    monitor-enter v0

    .line 116
    :try_start_b
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzawo;->zzdxp:Ljava/lang/String;

    if-eqz v1, :cond_13

    .line 117
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzawo;->zzdxp:Ljava/lang/String;

    monitor-exit v0

    return-object p1

    .line 118
    :cond_13
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzawo;->zzad(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_28

    const-string p1, "getGmpAppId"

    .line 119
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzawo;->zzdxp:Ljava/lang/String;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzawz;->zzdya:Lcom/google/android/gms/internal/ads/zzaxf;

    .line 120
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzawo;->zza(Ljava/lang/String;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzaxf;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzawo;->zzdxp:Ljava/lang/String;

    goto :goto_32

    :cond_28
    const-string v1, "getGmpAppId"

    .line 121
    invoke-direct {p0, v1, p1}, Lcom/google/android/gms/internal/ads/zzawo;->zza(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzawo;->zzdxp:Ljava/lang/String;

    .line 122
    :goto_32
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzawo;->zzdxp:Ljava/lang/String;

    monitor-exit v0

    return-object p1

    :catchall_36
    move-exception p1

    .line 123
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_b .. :try_end_38} :catchall_36

    throw p1
.end method

.method public final zzag(Landroid/content/Context;)Ljava/lang/String;
    .registers 10
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 124
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzawo;->zzac(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 126
    :cond_8
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabb;->zzcnq:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 127
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 128
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 129
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzawo;->zzad(Landroid/content/Context;)Z

    move-result v0

    const-string v4, "TIME_OUT"

    const-string v5, "getAppInstanceId"

    const-wide/16 v6, 0x0

    if-eqz v0, :cond_49

    cmp-long p1, v2, v6

    if-gez p1, :cond_31

    .line 131
    :try_start_28
    sget-object p1, Lcom/google/android/gms/internal/ads/zzawy;->zzdya:Lcom/google/android/gms/internal/ads/zzaxf;

    invoke-direct {p0, v5, v1, p1}, Lcom/google/android/gms/internal/ads/zzawo;->zza(Ljava/lang/String;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzaxf;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 133
    :cond_31
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzawo;->zzvx()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaxb;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzaxb;-><init>(Lcom/google/android/gms/internal/ads/zzawo;)V

    .line 134
    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 135
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v2, v3, v0}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_46
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_28 .. :try_end_46} :catch_48
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_46} :catch_47

    return-object p1

    :catch_47
    return-object v1

    :catch_48
    return-object v4

    :cond_49
    cmp-long v0, v2, v6

    if-gez v0, :cond_54

    .line 141
    invoke-direct {p0, v5, p1}, Lcom/google/android/gms/internal/ads/zzawo;->zza(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 143
    :cond_54
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzawo;->zzvx()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v5, Lcom/google/android/gms/internal/ads/zzaxa;

    invoke-direct {v5, p0, p1}, Lcom/google/android/gms/internal/ads/zzaxa;-><init>(Lcom/google/android/gms/internal/ads/zzawo;Landroid/content/Context;)V

    .line 144
    invoke-interface {v0, v5}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 145
    :try_start_61
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v2, v3, v0}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_69
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_61 .. :try_end_69} :catch_6b
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_69} :catch_6a

    return-object p1

    :catch_6a
    return-object v1

    :catch_6b
    return-object v4
.end method

.method public final zzah(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 150
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzawo;->zzac(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 152
    :cond_8
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzawo;->zzad(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 153
    sget-object p1, Lcom/google/android/gms/internal/ads/zzaxd;->zzdya:Lcom/google/android/gms/internal/ads/zzaxf;

    const-string v0, "getAdEventId"

    .line 154
    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzawo;->zza(Ljava/lang/String;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzaxf;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_23

    .line 155
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_23
    return-object v1

    :cond_24
    const-string v0, "generateEventId"

    .line 156
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzawo;->zza(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_31

    .line 158
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_31
    return-object v1
.end method

.method public final zzai(Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 160
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzawo;->zzac(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p1, 0x0

    return-object p1

    .line 162
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawo;->zzdxo:Ljava/lang/Object;

    monitor-enter v0

    .line 163
    :try_start_b
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzawo;->zzdxq:Ljava/lang/String;

    if-eqz v1, :cond_13

    .line 164
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzawo;->zzdxq:Ljava/lang/String;

    monitor-exit v0

    return-object p1

    .line 165
    :cond_13
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzawo;->zzad(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_28

    const-string p1, "getAppIdOrigin"

    .line 166
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzawo;->zzdxq:Ljava/lang/String;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzawq;->zzdya:Lcom/google/android/gms/internal/ads/zzaxf;

    .line 167
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzawo;->zza(Ljava/lang/String;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzaxf;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzawo;->zzdxq:Ljava/lang/String;

    goto :goto_2c

    :cond_28
    const-string p1, "fa"

    .line 168
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzawo;->zzdxq:Ljava/lang/String;

    .line 169
    :goto_2c
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzawo;->zzdxq:Ljava/lang/String;

    monitor-exit v0

    return-object p1

    :catchall_30
    move-exception p1

    .line 170
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_b .. :try_end_32} :catchall_30

    throw p1
.end method

.method final synthetic zzak(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "getAppInstanceId"

    .line 325
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzawo;->zza(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final zzf(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .line 68
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzawo;->zzac(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 70
    :cond_7
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzawo;->zzad(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "beginAdUnitExposure"

    if-eqz v0, :cond_18

    .line 71
    new-instance p1, Lcom/google/android/gms/internal/ads/zzawr;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzawr;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1, p1}, Lcom/google/android/gms/internal/ads/zzawo;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaxe;)V

    return-void

    .line 72
    :cond_18
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzawo;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final zzg(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .line 74
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzawo;->zzac(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 76
    :cond_7
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzawo;->zzad(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "endAdUnitExposure"

    if-eqz v0, :cond_18

    .line 77
    new-instance p1, Lcom/google/android/gms/internal/ads/zzawu;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzawu;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1, p1}, Lcom/google/android/gms/internal/ads/zzawo;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaxe;)V

    return-void

    .line 78
    :cond_18
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzawo;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final zzh(Landroid/content/Context;Ljava/lang/String;)V
    .registers 9

    .line 95
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzawo;->zzac(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 97
    :cond_7
    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_c

    return-void

    .line 99
    :cond_c
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzawo;->zzad(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 100
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaww;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaww;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string p1, "setScreenName"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzawo;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaxe;)V

    return-void

    .line 101
    :cond_1d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawo;->zzdxu:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    const-string v2, "com.google.firebase.analytics.FirebaseAnalytics"

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzawo;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Z)Z

    move-result v0

    if-nez v0, :cond_29

    return-void

    :cond_29
    const-string v0, "setCurrentScreen"

    .line 104
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzawo;->zzo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 105
    :try_start_2f
    move-object v3, p1

    check-cast v3, Landroid/app/Activity;

    .line 106
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzawo;->zzdxu:Ljava/util/concurrent/atomic/AtomicReference;

    .line 107
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v1

    const/4 v3, 0x1

    aput-object p2, v5, v3

    const/4 p2, 0x2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, p2

    .line 108
    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_4a} :catch_4b

    return-void

    .line 111
    :catch_4b
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzawo;->zzh(Ljava/lang/String;Z)V

    return-void
.end method

.method public final zzi(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    const-string v0, "_ac"

    const/4 v1, 0x0

    .line 171
    invoke-direct {p0, p1, v0, p2, v1}, Lcom/google/android/gms/internal/ads/zzawo;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final zzj(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    const-string v0, "_ai"

    const/4 v1, 0x0

    .line 173
    invoke-direct {p0, p1, v0, p2, v1}, Lcom/google/android/gms/internal/ads/zzawo;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final zzk(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    const-string v0, "_aq"

    const/4 v1, 0x0

    .line 175
    invoke-direct {p0, p1, v0, p2, v1}, Lcom/google/android/gms/internal/ads/zzawo;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final zzl(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    const-string v0, "_aa"

    const/4 v1, 0x0

    .line 177
    invoke-direct {p0, p1, v0, p2, v1}, Lcom/google/android/gms/internal/ads/zzawo;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method final synthetic zzvz()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 326
    sget-object v0, Lcom/google/android/gms/internal/ads/zzawv;->zzdya:Lcom/google/android/gms/internal/ads/zzaxf;

    const-string v1, "getAppInstanceId"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzawo;->zza(Ljava/lang/String;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzaxf;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
