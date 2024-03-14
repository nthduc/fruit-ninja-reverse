.class public final Lcom/google/android/gms/common/api/internal/zacn;
.super Lcom/google/android/gms/common/api/TransformedResult;
.source "com.google.android.gms:play-services-base@@17.2.1"

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/common/api/Result;",
        ">",
        "Lcom/google/android/gms/common/api/TransformedResult<",
        "TR;>;",
        "Lcom/google/android/gms/common/api/ResultCallback<",
        "TR;>;"
    }
.end annotation


# instance fields
.field private final zads:Ljava/lang/Object;

.field private final zadu:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ">;"
        }
    .end annotation
.end field

.field private zakv:Lcom/google/android/gms/common/api/ResultTransform;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/ResultTransform<",
            "-TR;+",
            "Lcom/google/android/gms/common/api/Result;",
            ">;"
        }
    .end annotation
.end field

.field private zakw:Lcom/google/android/gms/common/api/internal/zacn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/zacn<",
            "+",
            "Lcom/google/android/gms/common/api/Result;",
            ">;"
        }
    .end annotation
.end field

.field private volatile zakx:Lcom/google/android/gms/common/api/ResultCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/ResultCallbacks<",
            "-TR;>;"
        }
    .end annotation
.end field

.field private zaky:Lcom/google/android/gms/common/api/PendingResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/PendingResult<",
            "TR;>;"
        }
    .end annotation
.end field

.field private zakz:Lcom/google/android/gms/common/api/Status;

.field private final zala:Lcom/google/android/gms/common/api/internal/zacp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/zacp;"
        }
    .end annotation
.end field

.field private zalb:Z


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/api/TransformedResult;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zacn;->zakv:Lcom/google/android/gms/common/api/ResultTransform;

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zacn;->zakw:Lcom/google/android/gms/common/api/internal/zacn;

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zacn;->zakx:Lcom/google/android/gms/common/api/ResultCallbacks;

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zacn;->zaky:Lcom/google/android/gms/common/api/PendingResult;

    .line 6
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/common/api/internal/zacn;->zads:Ljava/lang/Object;

    .line 7
    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zacn;->zakz:Lcom/google/android/gms/common/api/Status;

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/zacn;->zalb:Z

    const-string v0, "GoogleApiClient reference must not be null"

    .line 9
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zacn;->zadu:Ljava/lang/ref/WeakReference;

    .line 11
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zacn;->zadu:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 12
    new-instance v0, Lcom/google/android/gms/common/api/internal/zacp;

    if-eqz p1, :cond_30

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->getLooper()Landroid/os/Looper;

    move-result-object p1

    goto :goto_34

    :cond_30
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    :goto_34
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/common/api/internal/zacp;-><init>(Lcom/google/android/gms/common/api/internal/zacn;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zacn;->zala:Lcom/google/android/gms/common/api/internal/zacp;

    return-void
.end method

.method static synthetic zaa(Lcom/google/android/gms/common/api/internal/zacn;Lcom/google/android/gms/common/api/Result;)V
    .registers 2

    .line 81
    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zacn;->zab(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method

.method static synthetic zaa(Lcom/google/android/gms/common/api/internal/zacn;Lcom/google/android/gms/common/api/Status;)V
    .registers 2

    .line 85
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/zacn;->zad(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method private static zab(Lcom/google/android/gms/common/api/Result;)V
    .registers 4

    .line 73
    instance-of v0, p0, Lcom/google/android/gms/common/api/Releasable;

    if-eqz v0, :cond_30

    .line 74
    :try_start_4
    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/common/api/Releasable;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Releasable;->release()V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception v0

    .line 77
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x12

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unable to release "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "TransformedResultImpl"

    invoke-static {v1, p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_30
    return-void
.end method

.method private final zabs()V
    .registers 3
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mSyncToken"
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zacn;->zakv:Lcom/google/android/gms/common/api/ResultTransform;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zacn;->zakx:Lcom/google/android/gms/common/api/ResultCallbacks;

    if-nez v0, :cond_9

    return-void

    .line 48
    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zacn;->zadu:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 49
    iget-boolean v1, p0, Lcom/google/android/gms/common/api/internal/zacn;->zalb:Z

    if-nez v1, :cond_21

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zacn;->zakv:Lcom/google/android/gms/common/api/ResultTransform;

    if-eqz v1, :cond_21

    if-eqz v0, :cond_21

    .line 50
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zaa(Lcom/google/android/gms/common/api/internal/zacn;)V

    const/4 v0, 0x1

    .line 51
    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/zacn;->zalb:Z

    .line 52
    :cond_21
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zacn;->zakz:Lcom/google/android/gms/common/api/Status;

    if-eqz v0, :cond_29

    .line 53
    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/internal/zacn;->zae(Lcom/google/android/gms/common/api/Status;)V

    return-void

    .line 54
    :cond_29
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zacn;->zaky:Lcom/google/android/gms/common/api/PendingResult;

    if-eqz v0, :cond_30

    .line 55
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    :cond_30
    return-void
.end method

.method private final zabu()Z
    .registers 3
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mSyncToken"
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zacn;->zadu:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 72
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zacn;->zakx:Lcom/google/android/gms/common/api/ResultCallbacks;

    if-eqz v1, :cond_10

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    return v0

    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic zac(Lcom/google/android/gms/common/api/internal/zacn;)Lcom/google/android/gms/common/api/ResultTransform;
    .registers 1

    .line 79
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zacn;->zakv:Lcom/google/android/gms/common/api/ResultTransform;

    return-object p0
.end method

.method static synthetic zad(Lcom/google/android/gms/common/api/internal/zacn;)Lcom/google/android/gms/common/api/internal/zacp;
    .registers 1

    .line 80
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zacn;->zala:Lcom/google/android/gms/common/api/internal/zacp;

    return-object p0
.end method

.method private final zad(Lcom/google/android/gms/common/api/Status;)V
    .registers 3

    .line 57
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zacn;->zads:Ljava/lang/Object;

    monitor-enter v0

    .line 58
    :try_start_3
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zacn;->zakz:Lcom/google/android/gms/common/api/Status;

    .line 59
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zacn;->zakz:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/zacn;->zae(Lcom/google/android/gms/common/api/Status;)V

    .line 60
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p1
.end method

.method static synthetic zae(Lcom/google/android/gms/common/api/internal/zacn;)Ljava/lang/ref/WeakReference;
    .registers 1

    .line 82
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zacn;->zadu:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method private final zae(Lcom/google/android/gms/common/api/Status;)V
    .registers 4

    .line 61
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zacn;->zads:Ljava/lang/Object;

    monitor-enter v0

    .line 62
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zacn;->zakv:Lcom/google/android/gms/common/api/ResultTransform;

    if-eqz v1, :cond_18

    .line 63
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zacn;->zakv:Lcom/google/android/gms/common/api/ResultTransform;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/common/api/ResultTransform;->onFailure(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    const-string v1, "onFailure must not return null"

    .line 64
    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zacn;->zakw:Lcom/google/android/gms/common/api/internal/zacn;

    invoke-direct {v1, p1}, Lcom/google/android/gms/common/api/internal/zacn;->zad(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_23

    .line 66
    :cond_18
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zacn;->zabu()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 67
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zacn;->zakx:Lcom/google/android/gms/common/api/ResultCallbacks;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/common/api/ResultCallbacks;->onFailure(Lcom/google/android/gms/common/api/Status;)V

    .line 68
    :cond_23
    :goto_23
    monitor-exit v0

    return-void

    :catchall_25
    move-exception p1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw p1
.end method

.method static synthetic zaf(Lcom/google/android/gms/common/api/internal/zacn;)Ljava/lang/Object;
    .registers 1

    .line 83
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zacn;->zads:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic zag(Lcom/google/android/gms/common/api/internal/zacn;)Lcom/google/android/gms/common/api/internal/zacn;
    .registers 1

    .line 84
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zacn;->zakw:Lcom/google/android/gms/common/api/internal/zacn;

    return-object p0
.end method


# virtual methods
.method public final andFinally(Lcom/google/android/gms/common/api/ResultCallbacks;)V
    .registers 7
    .param p1    # Lcom/google/android/gms/common/api/ResultCallbacks;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/ResultCallbacks<",
            "-TR;>;)V"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zacn;->zads:Ljava/lang/Object;

    monitor-enter v0

    .line 26
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zacn;->zakx:Lcom/google/android/gms/common/api/ResultCallbacks;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_b

    const/4 v1, 0x1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    const-string v4, "Cannot call andFinally() twice."

    invoke-static {v1, v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 27
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zacn;->zakv:Lcom/google/android/gms/common/api/ResultTransform;

    if-nez v1, :cond_16

    goto :goto_17

    :cond_16
    const/4 v2, 0x0

    :goto_17
    const-string v1, "Cannot call then() and andFinally() on the same TransformedResult."

    invoke-static {v2, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 29
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zacn;->zakx:Lcom/google/android/gms/common/api/ResultCallbacks;

    .line 30
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zacn;->zabs()V

    .line 31
    monitor-exit v0

    return-void

    :catchall_23
    move-exception p1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw p1
.end method

.method public final onResult(Lcom/google/android/gms/common/api/Result;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zacn;->zads:Ljava/lang/Object;

    monitor-enter v0

    .line 33
    :try_start_3
    invoke-interface {p1}, Lcom/google/android/gms/common/api/Result;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 34
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zacn;->zakv:Lcom/google/android/gms/common/api/ResultTransform;

    if-eqz v1, :cond_1e

    .line 35
    invoke-static {}, Lcom/google/android/gms/common/api/internal/zacd;->zabd()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/common/api/internal/zacm;

    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/common/api/internal/zacm;-><init>(Lcom/google/android/gms/common/api/internal/zacn;Lcom/google/android/gms/common/api/Result;)V

    .line 36
    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_34

    .line 37
    :cond_1e
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zacn;->zabu()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 38
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zacn;->zakx:Lcom/google/android/gms/common/api/ResultCallbacks;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/common/api/ResultCallbacks;->onSuccess(Lcom/google/android/gms/common/api/Result;)V

    goto :goto_34

    .line 39
    :cond_2a
    invoke-interface {p1}, Lcom/google/android/gms/common/api/Result;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/gms/common/api/internal/zacn;->zad(Lcom/google/android/gms/common/api/Status;)V

    .line 40
    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zacn;->zab(Lcom/google/android/gms/common/api/Result;)V

    .line 41
    :cond_34
    :goto_34
    monitor-exit v0

    return-void

    :catchall_36
    move-exception p1

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_36

    throw p1
.end method

.method public final then(Lcom/google/android/gms/common/api/ResultTransform;)Lcom/google/android/gms/common/api/TransformedResult;
    .registers 7
    .param p1    # Lcom/google/android/gms/common/api/ResultTransform;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Lcom/google/android/gms/common/api/Result;",
            ">(",
            "Lcom/google/android/gms/common/api/ResultTransform<",
            "-TR;+TS;>;)",
            "Lcom/google/android/gms/common/api/TransformedResult<",
            "TS;>;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zacn;->zads:Ljava/lang/Object;

    monitor-enter v0

    .line 16
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zacn;->zakv:Lcom/google/android/gms/common/api/ResultTransform;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_b

    const/4 v1, 0x1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    const-string v4, "Cannot call then() twice."

    invoke-static {v1, v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 17
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zacn;->zakx:Lcom/google/android/gms/common/api/ResultCallbacks;

    if-nez v1, :cond_16

    goto :goto_17

    :cond_16
    const/4 v2, 0x0

    :goto_17
    const-string v1, "Cannot call then() and andFinally() on the same TransformedResult."

    invoke-static {v2, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 19
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zacn;->zakv:Lcom/google/android/gms/common/api/ResultTransform;

    .line 20
    new-instance p1, Lcom/google/android/gms/common/api/internal/zacn;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zacn;->zadu:Ljava/lang/ref/WeakReference;

    invoke-direct {p1, v1}, Lcom/google/android/gms/common/api/internal/zacn;-><init>(Ljava/lang/ref/WeakReference;)V

    .line 21
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zacn;->zakw:Lcom/google/android/gms/common/api/internal/zacn;

    .line 22
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zacn;->zabs()V

    .line 23
    monitor-exit v0

    return-object p1

    :catchall_2c
    move-exception p1

    .line 24
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw p1
.end method

.method public final zaa(Lcom/google/android/gms/common/api/PendingResult;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/PendingResult<",
            "*>;)V"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zacn;->zads:Ljava/lang/Object;

    monitor-enter v0

    .line 43
    :try_start_3
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zacn;->zaky:Lcom/google/android/gms/common/api/PendingResult;

    .line 44
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zacn;->zabs()V

    .line 45
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method final zabt()V
    .registers 2

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zacn;->zakx:Lcom/google/android/gms/common/api/ResultCallbacks;

    return-void
.end method
