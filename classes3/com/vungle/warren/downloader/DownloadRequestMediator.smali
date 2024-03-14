.class Lcom/vungle/warren/downloader/DownloadRequestMediator;
.super Ljava/lang/Object;
.source "DownloadRequestMediator.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private children:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/core/util/Pair<",
            "Lcom/vungle/warren/downloader/DownloadRequest;",
            "Lcom/vungle/warren/downloader/AssetDownloadListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private connectedAtomic:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final filePath:Ljava/lang/String;

.field public final isCacheable:Z

.field public final key:Ljava/lang/String;

.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field public final metaPath:Ljava/lang/String;

.field private runnable:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private statusAtomic:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vungle/warren/downloader/DownloadRequest;Lcom/vungle/warren/downloader/AssetDownloadListener;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .registers 9
    .param p1    # Lcom/vungle/warren/downloader/DownloadRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/vungle/warren/downloader/AssetDownloadListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/vungle/warren/downloader/DownloadRequestMediator;->statusAtomic:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 28
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/vungle/warren/downloader/DownloadRequestMediator;->children:Ljava/util/Map;

    .line 29
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/vungle/warren/downloader/DownloadRequestMediator;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 31
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/vungle/warren/downloader/DownloadRequestMediator;->connectedAtomic:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 32
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/vungle/warren/downloader/DownloadRequestMediator;->runnable:Ljava/util/concurrent/atomic/AtomicReference;

    .line 40
    iget-object v0, p1, Lcom/vungle/warren/downloader/DownloadRequest;->url:Ljava/lang/String;

    iput-object v0, p0, Lcom/vungle/warren/downloader/DownloadRequestMediator;->url:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Lcom/vungle/warren/downloader/DownloadRequestMediator;->filePath:Ljava/lang/String;

    .line 42
    iput-object p4, p0, Lcom/vungle/warren/downloader/DownloadRequestMediator;->metaPath:Ljava/lang/String;

    .line 43
    iput-boolean p5, p0, Lcom/vungle/warren/downloader/DownloadRequestMediator;->isCacheable:Z

    .line 44
    iput-object p6, p0, Lcom/vungle/warren/downloader/DownloadRequestMediator;->key:Ljava/lang/String;

    .line 45
    iget-object p3, p0, Lcom/vungle/warren/downloader/DownloadRequestMediator;->children:Ljava/util/Map;

    iget-object p4, p1, Lcom/vungle/warren/downloader/DownloadRequest;->id:Ljava/lang/String;

    new-instance p5, Landroidx/core/util/Pair;

    invoke-direct {p5, p1, p2}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p3, p4, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method declared-synchronized add(Lcom/vungle/warren/downloader/DownloadRequest;Lcom/vungle/warren/downloader/AssetDownloadListener;)V
    .registers 6

    monitor-enter p0

    .line 49
    :try_start_1
    iget-object v0, p0, Lcom/vungle/warren/downloader/DownloadRequestMediator;->children:Ljava/util/Map;

    iget-object v1, p1, Lcom/vungle/warren/downloader/DownloadRequest;->id:Ljava/lang/String;

    new-instance v2, Landroidx/core/util/Pair;

    invoke-direct {v2, p1, p2}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 50
    monitor-exit p0

    return-void

    :catchall_f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method getPriority()I
    .registers 5

    .line 80
    invoke-virtual {p0}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->values()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const v1, 0x7fffffff

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/core/util/Pair;

    .line 81
    iget-object v3, v2, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    if-nez v3, :cond_1c

    goto :goto_b

    .line 84
    :cond_1c
    iget-object v2, v2, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/vungle/warren/downloader/DownloadRequest;

    invoke-virtual {v2}, Lcom/vungle/warren/downloader/DownloadRequest;->getPriority()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_b

    :cond_29
    return v1
.end method

.method public getRunnable()Ljava/lang/Runnable;
    .registers 2

    .line 134
    iget-object v0, p0, Lcom/vungle/warren/downloader/DownloadRequestMediator;->runnable:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    return-object v0
.end method

.method public getStatus()I
    .registers 2
    .annotation build Lcom/vungle/warren/downloader/DownloadRequestMediator$Status;
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/vungle/warren/downloader/DownloadRequestMediator;->statusAtomic:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method is(I)Z
    .registers 3
    .param p1    # I
        .annotation build Lcom/vungle/warren/downloader/DownloadRequestMediator$Status;
        .end annotation
    .end param

    .line 110
    iget-object v0, p0, Lcom/vungle/warren/downloader/DownloadRequestMediator;->statusAtomic:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-ne v0, p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method isConnected()Z
    .registers 2

    .line 121
    iget-object v0, p0, Lcom/vungle/warren/downloader/DownloadRequestMediator;->connectedAtomic:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method isPausable()Z
    .registers 4

    .line 92
    invoke-virtual {p0}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->values()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/util/Pair;

    .line 93
    iget-object v2, v1, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    if-nez v2, :cond_19

    goto :goto_8

    .line 96
    :cond_19
    iget-object v1, v1, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/vungle/warren/downloader/DownloadRequest;

    iget-boolean v1, v1, Lcom/vungle/warren/downloader/DownloadRequest;->pauseOnConnectionLost:Z

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_23
    const/4 v0, 0x0

    return v0
.end method

.method lock()V
    .registers 2

    .line 71
    iget-object v0, p0, Lcom/vungle/warren/downloader/DownloadRequestMediator;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    return-void
.end method

.method declared-synchronized remove(Lcom/vungle/warren/downloader/DownloadRequest;)Landroidx/core/util/Pair;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/warren/downloader/DownloadRequest;",
            ")",
            "Landroidx/core/util/Pair<",
            "Lcom/vungle/warren/downloader/DownloadRequest;",
            "Lcom/vungle/warren/downloader/AssetDownloadListener;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 53
    :try_start_1
    iget-object v0, p0, Lcom/vungle/warren/downloader/DownloadRequestMediator;->children:Ljava/util/Map;

    iget-object p1, p1, Lcom/vungle/warren/downloader/DownloadRequest;->id:Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/core/util/Pair;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-object p1

    :catchall_d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized requests()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/vungle/warren/downloader/DownloadRequest;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 61
    :try_start_1
    invoke-virtual {p0}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->values()Ljava/util/List;

    move-result-object v0

    .line 62
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 63
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/core/util/Pair;

    .line 64
    iget-object v2, v2, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_22

    goto :goto_e

    .line 67
    :cond_20
    monitor-exit p0

    return-object v1

    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0

    return-void
.end method

.method set(I)V
    .registers 4
    .param p1    # I
        .annotation build Lcom/vungle/warren/downloader/DownloadRequestMediator$Status;
        .end annotation
    .end param

    .line 114
    iget-object v0, p0, Lcom/vungle/warren/downloader/DownloadRequestMediator;->statusAtomic:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_a

    return-void

    .line 117
    :cond_a
    iget-object v0, p0, Lcom/vungle/warren/downloader/DownloadRequestMediator;->statusAtomic:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method setConnected(Z)V
    .registers 3

    .line 125
    iget-object v0, p0, Lcom/vungle/warren/downloader/DownloadRequestMediator;->connectedAtomic:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public setRunnable(Ljava/lang/Runnable;)V
    .registers 3

    .line 129
    iget-object v0, p0, Lcom/vungle/warren/downloader/DownloadRequestMediator;->runnable:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method unlock()V
    .registers 2

    .line 75
    iget-object v0, p0, Lcom/vungle/warren/downloader/DownloadRequestMediator;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method declared-synchronized values()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/core/util/Pair<",
            "Lcom/vungle/warren/downloader/DownloadRequest;",
            "Lcom/vungle/warren/downloader/AssetDownloadListener;",
            ">;>;"
        }
    .end annotation

    monitor-enter p0

    .line 57
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/vungle/warren/downloader/DownloadRequestMediator;->children:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    monitor-exit p0

    return-object v0

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method
