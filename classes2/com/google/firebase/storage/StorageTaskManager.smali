.class Lcom/google/firebase/storage/StorageTaskManager;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-storage@@19.1.1"


# static fields
.field private static final _instance:Lcom/google/firebase/storage/StorageTaskManager;


# instance fields
.field private final inProgressTasks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/firebase/storage/StorageTask<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field private final syncObject:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 33
    new-instance v0, Lcom/google/firebase/storage/StorageTaskManager;

    invoke-direct {v0}, Lcom/google/firebase/storage/StorageTaskManager;-><init>()V

    sput-object v0, Lcom/google/firebase/storage/StorageTaskManager;->_instance:Lcom/google/firebase/storage/StorageTaskManager;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/storage/StorageTaskManager;->inProgressTasks:Ljava/util/Map;

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/storage/StorageTaskManager;->syncObject:Ljava/lang/Object;

    return-void
.end method

.method static getInstance()Lcom/google/firebase/storage/StorageTaskManager;
    .registers 1

    .line 40
    sget-object v0, Lcom/google/firebase/storage/StorageTaskManager;->_instance:Lcom/google/firebase/storage/StorageTaskManager;

    return-object v0
.end method


# virtual methods
.method public ensureRegistered(Lcom/google/firebase/storage/StorageTask;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/storage/StorageTask<",
            "*>;)V"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/google/firebase/storage/StorageTaskManager;->syncObject:Ljava/lang/Object;

    monitor-enter v0

    .line 78
    :try_start_3
    iget-object v1, p0, Lcom/google/firebase/storage/StorageTaskManager;->inProgressTasks:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/firebase/storage/StorageTask;->getStorage()Lcom/google/firebase/storage/StorageReference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/storage/StorageReference;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    monitor-exit v0

    return-void

    :catchall_17
    move-exception p1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw p1
.end method

.method public getDownloadTasksUnder(Lcom/google/firebase/storage/StorageReference;)Ljava/util/List;
    .registers 7
    .param p1    # Lcom/google/firebase/storage/StorageReference;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/storage/StorageReference;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/firebase/storage/FileDownloadTask;",
            ">;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/google/firebase/storage/StorageTaskManager;->syncObject:Ljava/lang/Object;

    monitor-enter v0

    .line 61
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 62
    invoke-virtual {p1}, Lcom/google/firebase/storage/StorageReference;->toString()Ljava/lang/String;

    move-result-object p1

    .line 63
    iget-object v2, p0, Lcom/google/firebase/storage/StorageTaskManager;->inProgressTasks:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_16
    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_44

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 64
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 65
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/storage/StorageTask;

    .line 66
    instance-of v4, v3, Lcom/google/firebase/storage/FileDownloadTask;

    if-eqz v4, :cond_16

    .line 67
    check-cast v3, Lcom/google/firebase/storage/FileDownloadTask;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 71
    :cond_44
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_4a
    move-exception p1

    .line 72
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_3 .. :try_end_4c} :catchall_4a

    throw p1

    return-void
.end method

.method public getUploadTasksUnder(Lcom/google/firebase/storage/StorageReference;)Ljava/util/List;
    .registers 7
    .param p1    # Lcom/google/firebase/storage/StorageReference;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/storage/StorageReference;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/firebase/storage/UploadTask;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/google/firebase/storage/StorageTaskManager;->syncObject:Ljava/lang/Object;

    monitor-enter v0

    .line 45
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 46
    invoke-virtual {p1}, Lcom/google/firebase/storage/StorageReference;->toString()Ljava/lang/String;

    move-result-object p1

    .line 47
    iget-object v2, p0, Lcom/google/firebase/storage/StorageTaskManager;->inProgressTasks:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_16
    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_44

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 48
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 49
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/storage/StorageTask;

    .line 50
    instance-of v4, v3, Lcom/google/firebase/storage/UploadTask;

    if-eqz v4, :cond_16

    .line 51
    check-cast v3, Lcom/google/firebase/storage/UploadTask;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 55
    :cond_44
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_4a
    move-exception p1

    .line 56
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_3 .. :try_end_4c} :catchall_4a

    throw p1

    return-void
.end method

.method public unRegister(Lcom/google/firebase/storage/StorageTask;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/storage/StorageTask<",
            "*>;)V"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/google/firebase/storage/StorageTaskManager;->syncObject:Ljava/lang/Object;

    monitor-enter v0

    .line 85
    :try_start_3
    invoke-virtual {p1}, Lcom/google/firebase/storage/StorageTask;->getStorage()Lcom/google/firebase/storage/StorageReference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/storage/StorageReference;->toString()Ljava/lang/String;

    move-result-object v1

    .line 86
    iget-object v2, p0, Lcom/google/firebase/storage/StorageTaskManager;->inProgressTasks:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_1c

    .line 87
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/storage/StorageTask;

    goto :goto_1d

    :cond_1c
    const/4 v2, 0x0

    :goto_1d
    if-eqz v2, :cond_21

    if-ne v2, p1, :cond_26

    .line 89
    :cond_21
    iget-object p1, p0, Lcom/google/firebase/storage/StorageTaskManager;->inProgressTasks:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    :cond_26
    monitor-exit v0

    return-void

    :catchall_28
    move-exception p1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw p1
.end method
