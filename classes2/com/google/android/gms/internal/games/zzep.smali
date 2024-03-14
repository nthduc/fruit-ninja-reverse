.class public abstract Lcom/google/android/gms/internal/games/zzep;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@20.0.1"


# instance fields
.field private final zzlf:Ljava/lang/Object;

.field private zzlg:Landroid/os/Handler;

.field private zzlh:Z

.field private zzli:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;"
        }
    .end annotation
.end field

.field private zzlj:I


# direct methods
.method public constructor <init>(Landroid/os/Looper;I)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/games/zzep;->zzlf:Ljava/lang/Object;

    .line 3
    new-instance p2, Lcom/google/android/gms/internal/games/zzes;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/games/zzes;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/games/zzep;->zzlg:Landroid/os/Handler;

    .line 4
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/games/zzep;->zzli:Ljava/util/HashMap;

    const/16 p1, 0x3e8

    .line 5
    iput p1, p0, Lcom/google/android/gms/internal/games/zzep;->zzlj:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/games/zzep;)V
    .registers 1

    .line 27
    invoke-direct {p0}, Lcom/google/android/gms/internal/games/zzep;->zzcu()V

    return-void
.end method

.method private final zzcu()V
    .registers 3

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/games/zzep;->zzlf:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 24
    :try_start_4
    iput-boolean v1, p0, Lcom/google/android/gms/internal/games/zzep;->zzlh:Z

    .line 25
    invoke-virtual {p0}, Lcom/google/android/gms/internal/games/zzep;->flush()V

    .line 26
    monitor-exit v0

    return-void

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_b

    throw v1
.end method


# virtual methods
.method public final flush()V
    .registers 5

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/games/zzep;->zzlf:Ljava/lang/Object;

    monitor-enter v0

    .line 18
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/games/zzep;->zzli:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 19
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {p0, v3, v2}, Lcom/google/android/gms/internal/games/zzep;->zzg(Ljava/lang/String;I)V

    goto :goto_d

    .line 21
    :cond_2d
    iget-object v1, p0, Lcom/google/android/gms/internal/games/zzep;->zzli:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 22
    monitor-exit v0

    return-void

    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_34

    throw v1

    return-void
.end method

.method protected abstract zzg(Ljava/lang/String;I)V
.end method

.method public final zzi(Ljava/lang/String;I)V
    .registers 8

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/games/zzep;->zzlf:Ljava/lang/Object;

    monitor-enter v0

    .line 8
    :try_start_3
    iget-boolean v1, p0, Lcom/google/android/gms/internal/games/zzep;->zzlh:Z

    if-nez v1, :cond_17

    const/4 v1, 0x1

    .line 9
    iput-boolean v1, p0, Lcom/google/android/gms/internal/games/zzep;->zzlh:Z

    .line 10
    iget-object v1, p0, Lcom/google/android/gms/internal/games/zzep;->zzlg:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/games/zzeo;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/games/zzeo;-><init>(Lcom/google/android/gms/internal/games/zzep;)V

    iget v3, p0, Lcom/google/android/gms/internal/games/zzep;->zzlj:I

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 11
    :cond_17
    iget-object v1, p0, Lcom/google/android/gms/internal/games/zzep;->zzli:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez v1, :cond_2b

    .line 13
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 14
    iget-object v2, p0, Lcom/google/android/gms/internal/games/zzep;->zzli:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    :cond_2b
    invoke-virtual {v1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 16
    monitor-exit v0

    return-void

    :catchall_30
    move-exception p1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_30

    throw p1
.end method
