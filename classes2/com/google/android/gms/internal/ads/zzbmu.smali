.class public final Lcom/google/android/gms/internal/ads/zzbmu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/zzp;
.implements Lcom/google/android/gms/internal/ads/zzbuy;
.implements Lcom/google/android/gms/internal/ads/zzbuz;
.implements Lcom/google/android/gms/internal/ads/zzqu;


# instance fields
.field private final zzbqa:Lcom/google/android/gms/common/util/Clock;

.field private final zzfny:Lcom/google/android/gms/internal/ads/zzbml;

.field private final zzfnz:Lcom/google/android/gms/internal/ads/zzbms;

.field private final zzfoa:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/zzbgj;",
            ">;"
        }
    .end annotation
.end field

.field private final zzfob:Lcom/google/android/gms/internal/ads/zzamn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzamn<",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private final zzfoc:Ljava/util/concurrent/Executor;

.field private final zzfod:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final zzfoe:Lcom/google/android/gms/internal/ads/zzbmw;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private zzfof:Z

.field private zzfog:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzamk;Lcom/google/android/gms/internal/ads/zzbms;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzbml;Lcom/google/android/gms/common/util/Clock;)V
    .registers 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbmu;->zzfoa:Ljava/util/Set;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbmu;->zzfod:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbmw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbmw;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbmu;->zzfoe:Lcom/google/android/gms/internal/ads/zzbmw;

    .line 5
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbmu;->zzfof:Z

    .line 6
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbmu;->zzfog:Ljava/lang/ref/WeakReference;

    .line 7
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbmu;->zzfny:Lcom/google/android/gms/internal/ads/zzbml;

    .line 8
    sget-object p4, Lcom/google/android/gms/internal/ads/zzama;->zzdio:Lcom/google/android/gms/internal/ads/zzalx;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzama;->zzdio:Lcom/google/android/gms/internal/ads/zzalx;

    const-string v1, "google.afma.activeView.handleUpdate"

    .line 9
    invoke-virtual {p1, v1, p4, v0}, Lcom/google/android/gms/internal/ads/zzamk;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaly;Lcom/google/android/gms/internal/ads/zzalv;)Lcom/google/android/gms/internal/ads/zzamn;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbmu;->zzfob:Lcom/google/android/gms/internal/ads/zzamn;

    .line 10
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbmu;->zzfnz:Lcom/google/android/gms/internal/ads/zzbms;

    .line 11
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbmu;->zzfoc:Ljava/util/concurrent/Executor;

    .line 12
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzbmu;->zzbqa:Lcom/google/android/gms/common/util/Clock;

    return-void
.end method

.method private final zzahg()V
    .registers 4

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbmu;->zzfoa:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbgj;

    .line 32
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbmu;->zzfny:Lcom/google/android/gms/internal/ads/zzbml;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbml;->zze(Lcom/google/android/gms/internal/ads/zzbgj;)V

    goto :goto_6

    .line 34
    :cond_18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbmu;->zzfny:Lcom/google/android/gms/internal/ads/zzbml;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbml;->zzahe()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized onAdImpression()V
    .registers 4

    monitor-enter p0

    .line 67
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbmu;->zzfod:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 68
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbmu;->zzfny:Lcom/google/android/gms/internal/ads/zzbml;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzbml;->zza(Lcom/google/android/gms/internal/ads/zzbmu;)V

    .line 69
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbmu;->zzahf()V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    .line 70
    :cond_13
    monitor-exit p0

    return-void

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onPause()V
    .registers 3

    monitor-enter p0

    .line 60
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbmu;->zzfoe:Lcom/google/android/gms/internal/ads/zzbmw;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzbmw;->zzfol:Z

    .line 61
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbmu;->zzahf()V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 62
    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onResume()V
    .registers 3

    monitor-enter p0

    .line 63
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbmu;->zzfoe:Lcom/google/android/gms/internal/ads/zzbmw;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzbmw;->zzfol:Z

    .line 64
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbmu;->zzahf()V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 65
    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzqr;)V
    .registers 4

    monitor-enter p0

    .line 44
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbmu;->zzfoe:Lcom/google/android/gms/internal/ads/zzbmw;

    iget-boolean v1, p1, Lcom/google/android/gms/internal/ads/zzqr;->zzbro:Z

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzbmw;->zzbro:Z

    .line 45
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbmu;->zzfoe:Lcom/google/android/gms/internal/ads/zzbmw;

    iput-object p1, v0, Lcom/google/android/gms/internal/ads/zzbmw;->zzfoo:Lcom/google/android/gms/internal/ads/zzqr;

    .line 46
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbmu;->zzahf()V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 47
    monitor-exit p0

    return-void

    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzahf()V
    .registers 6

    monitor-enter p0

    .line 15
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbmu;->zzfog:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    if-nez v0, :cond_13

    .line 17
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbmu;->zzahh()V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_63

    .line 18
    monitor-exit p0

    return-void

    .line 19
    :cond_13
    :try_start_13
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbmu;->zzfof:Z

    if-nez v0, :cond_61

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbmu;->zzfod:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0
    :try_end_1d
    .catchall {:try_start_13 .. :try_end_1d} :catchall_63

    if-eqz v0, :cond_61

    .line 20
    :try_start_1f
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbmu;->zzfoe:Lcom/google/android/gms/internal/ads/zzbmw;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbmu;->zzbqa:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzbmw;->timestamp:J

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbmu;->zzfnz:Lcom/google/android/gms/internal/ads/zzbms;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbmu;->zzfoe:Lcom/google/android/gms/internal/ads/zzbmw;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbms;->zza(Lcom/google/android/gms/internal/ads/zzbmw;)Lorg/json/JSONObject;

    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbmu;->zzfoa:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_37
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzbgj;

    .line 23
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbmu;->zzfoc:Ljava/util/concurrent/Executor;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzbmt;

    invoke-direct {v4, v2, v0}, Lcom/google/android/gms/internal/ads/zzbmt;-><init>(Lcom/google/android/gms/internal/ads/zzbgj;Lorg/json/JSONObject;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_37

    .line 25
    :cond_4e
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbmu;->zzfob:Lcom/google/android/gms/internal/ads/zzamn;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzamn;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v0

    const-string v1, "ActiveViewListener.callActiveViewJs"

    .line 26
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbcc;->zzb(Lcom/google/android/gms/internal/ads/zzdzc;Ljava/lang/String;)V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_59} :catch_5b
    .catchall {:try_start_1f .. :try_end_59} :catchall_63

    .line 27
    monitor-exit p0

    return-void

    :catch_5b
    move-exception v0

    :try_start_5c
    const-string v1, "Failed to call ActiveViewJS"

    .line 29
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzayp;->zza(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_61
    .catchall {:try_start_5c .. :try_end_61} :catchall_63

    .line 30
    :cond_61
    monitor-exit p0

    return-void

    :catchall_63
    move-exception v0

    monitor-exit p0

    throw v0

    return-void
.end method

.method public final declared-synchronized zzahh()V
    .registers 2

    monitor-enter p0

    .line 36
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbmu;->zzahg()V

    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbmu;->zzfof:Z
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 38
    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzca(Landroid/content/Context;)V
    .registers 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    monitor-enter p0

    .line 48
    :try_start_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbmu;->zzfoe:Lcom/google/android/gms/internal/ads/zzbmw;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzbmw;->zzfol:Z

    .line 49
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbmu;->zzahf()V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 50
    monitor-exit p0

    return-void

    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzcb(Landroid/content/Context;)V
    .registers 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    monitor-enter p0

    .line 51
    :try_start_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbmu;->zzfoe:Lcom/google/android/gms/internal/ads/zzbmw;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzbmw;->zzfol:Z

    .line 52
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbmu;->zzahf()V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 53
    monitor-exit p0

    return-void

    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzcc(Landroid/content/Context;)V
    .registers 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    monitor-enter p0

    .line 54
    :try_start_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbmu;->zzfoe:Lcom/google/android/gms/internal/ads/zzbmw;

    const-string v0, "u"

    iput-object v0, p1, Lcom/google/android/gms/internal/ads/zzbmw;->zzfon:Ljava/lang/String;

    .line 55
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbmu;->zzahf()V

    .line 56
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbmu;->zzahg()V

    const/4 p1, 0x1

    .line 57
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbmu;->zzfof:Z
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 58
    monitor-exit p0

    return-void

    :catchall_12
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzf(Lcom/google/android/gms/internal/ads/zzbgj;)V
    .registers 3

    monitor-enter p0

    .line 39
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbmu;->zzfoa:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbmu;->zzfny:Lcom/google/android/gms/internal/ads/zzbml;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbml;->zzd(Lcom/google/android/gms/internal/ads/zzbgj;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 41
    monitor-exit p0

    return-void

    :catchall_d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zzo(Ljava/lang/Object;)V
    .registers 3

    .line 42
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbmu;->zzfog:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final zzum()V
    .registers 1

    return-void
.end method

.method public final zzun()V
    .registers 1

    return-void
.end method
