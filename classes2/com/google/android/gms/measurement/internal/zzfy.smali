.class final Lcom/google/android/gms/measurement/internal/zzfy;
.super Ljava/lang/Thread;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.1"


# instance fields
.field private final zza:Ljava/lang/Object;

.field private final zzb:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/google/android/gms/measurement/internal/zzfv<",
            "*>;>;"
        }
    .end annotation
.end field

.field private zzc:Z
    .annotation build Landroidx/annotation/GuardedBy;
        value = "threadLifeCycleLock"
    .end annotation
.end field

.field private final synthetic zzd:Lcom/google/android/gms/measurement/internal/zzfu;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzfu;Ljava/lang/String;Ljava/util/concurrent/BlockingQueue;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/google/android/gms/measurement/internal/zzfv<",
            "*>;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfy;->zzd:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zzfy;->zzc:Z

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfy;->zza:Ljava/lang/Object;

    .line 6
    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzfy;->zzb:Ljava/util/concurrent/BlockingQueue;

    .line 7
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zzfy;->setName(Ljava/lang/String;)V

    return-void
.end method

.method private final zza(Ljava/lang/InterruptedException;)V
    .registers 5

    .line 54
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfy;->zzd:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzet;->zzi()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfy;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " was interrupted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private final zzb()V
    .registers 4

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfy;->zzd:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzc(Lcom/google/android/gms/measurement/internal/zzfu;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 41
    :try_start_7
    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzfy;->zzc:Z

    if-nez v1, :cond_4c

    .line 42
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfy;->zzd:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Lcom/google/android/gms/measurement/internal/zzfu;)Ljava/util/concurrent/Semaphore;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 43
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfy;->zzd:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzfu;->zzc(Lcom/google/android/gms/measurement/internal/zzfu;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 44
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfy;->zzd:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzfu;->zzd(Lcom/google/android/gms/measurement/internal/zzfu;)Lcom/google/android/gms/measurement/internal/zzfy;

    move-result-object v1

    const/4 v2, 0x0

    if-ne p0, v1, :cond_2c

    .line 45
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfy;->zzd:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-static {v1, v2}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Lcom/google/android/gms/measurement/internal/zzfu;Lcom/google/android/gms/measurement/internal/zzfy;)Lcom/google/android/gms/measurement/internal/zzfy;

    goto :goto_49

    .line 46
    :cond_2c
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfy;->zzd:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzfu;->zze(Lcom/google/android/gms/measurement/internal/zzfu;)Lcom/google/android/gms/measurement/internal/zzfy;

    move-result-object v1

    if-ne p0, v1, :cond_3a

    .line 47
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfy;->zzd:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-static {v1, v2}, Lcom/google/android/gms/measurement/internal/zzfu;->zzb(Lcom/google/android/gms/measurement/internal/zzfu;Lcom/google/android/gms/measurement/internal/zzfy;)Lcom/google/android/gms/measurement/internal/zzfy;

    goto :goto_49

    .line 48
    :cond_3a
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfy;->zzd:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v1

    const-string v2, "Current scheduler thread is neither worker nor network"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;)V

    :goto_49
    const/4 v1, 0x1

    .line 49
    iput-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzfy;->zzc:Z

    .line 50
    :cond_4c
    monitor-exit v0

    return-void

    :catchall_4e
    move-exception v1

    monitor-exit v0
    :try_end_50
    .catchall {:try_start_7 .. :try_end_50} :catchall_4e

    throw v1
.end method


# virtual methods
.method public final run()V
    .registers 6

    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_13

    .line 11
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfy;->zzd:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Lcom/google/android/gms/measurement/internal/zzfu;)Ljava/util/concurrent/Semaphore;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_c} :catch_e

    const/4 v0, 0x1

    goto :goto_1

    :catch_e
    move-exception v1

    .line 15
    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/zzfy;->zza(Ljava/lang/InterruptedException;)V

    goto :goto_1

    .line 17
    :cond_13
    :try_start_13
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v0

    .line 18
    :goto_1b
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfy;->zzb:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/measurement/internal/zzfv;

    if-eqz v1, :cond_34

    .line 19
    iget-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzfv;->zza:Z

    if-eqz v2, :cond_2b

    move v2, v0

    goto :goto_2d

    :cond_2b
    const/16 v2, 0xa

    .line 20
    :goto_2d
    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 21
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfv;->run()V

    goto :goto_1b

    .line 22
    :cond_34
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfy;->zza:Ljava/lang/Object;

    monitor-enter v1
    :try_end_37
    .catchall {:try_start_13 .. :try_end_37} :catchall_81

    .line 23
    :try_start_37
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzfy;->zzb:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_53

    .line 24
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzfy;->zzd:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzfu;->zzb(Lcom/google/android/gms/measurement/internal/zzfu;)Z

    move-result v2
    :try_end_45
    .catchall {:try_start_37 .. :try_end_45} :catchall_7e

    if-nez v2, :cond_53

    .line 25
    :try_start_47
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzfy;->zza:Ljava/lang/Object;

    const-wide/16 v3, 0x7530

    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_4e
    .catch Ljava/lang/InterruptedException; {:try_start_47 .. :try_end_4e} :catch_4f
    .catchall {:try_start_47 .. :try_end_4e} :catchall_7e

    goto :goto_53

    :catch_4f
    move-exception v2

    .line 28
    :try_start_50
    invoke-direct {p0, v2}, Lcom/google/android/gms/measurement/internal/zzfy;->zza(Ljava/lang/InterruptedException;)V

    .line 29
    :cond_53
    :goto_53
    monitor-exit v1
    :try_end_54
    .catchall {:try_start_50 .. :try_end_54} :catchall_7e

    .line 30
    :try_start_54
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfy;->zzd:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzfu;->zzc(Lcom/google/android/gms/measurement/internal/zzfu;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_5b
    .catchall {:try_start_54 .. :try_end_5b} :catchall_81

    .line 31
    :try_start_5b
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzfy;->zzb:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_79

    .line 32
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfy;->zzd:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzt()Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzas;->zzby:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzaa;->zza(Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result v0

    if-eqz v0, :cond_74

    .line 33
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfy;->zzb()V

    .line 34
    :cond_74
    monitor-exit v1
    :try_end_75
    .catchall {:try_start_5b .. :try_end_75} :catchall_7b

    .line 35
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfy;->zzb()V

    return-void

    .line 37
    :cond_79
    :try_start_79
    monitor-exit v1

    goto :goto_1b

    :catchall_7b
    move-exception v0

    monitor-exit v1
    :try_end_7d
    .catchall {:try_start_79 .. :try_end_7d} :catchall_7b

    :try_start_7d
    throw v0
    :try_end_7e
    .catchall {:try_start_7d .. :try_end_7e} :catchall_81

    :catchall_7e
    move-exception v0

    .line 29
    :try_start_7f
    monitor-exit v1
    :try_end_80
    .catchall {:try_start_7f .. :try_end_80} :catchall_7e

    :try_start_80
    throw v0
    :try_end_81
    .catchall {:try_start_80 .. :try_end_81} :catchall_81

    :catchall_81
    move-exception v0

    .line 38
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfy;->zzb()V

    .line 39
    throw v0

    return-void
.end method

.method public final zza()V
    .registers 3

    .line 51
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfy;->zza:Ljava/lang/Object;

    monitor-enter v0

    .line 52
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfy;->zza:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 53
    monitor-exit v0

    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method
