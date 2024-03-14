.class public abstract Lcom/google/firebase/storage/StorageTask;
.super Lcom/google/firebase/storage/ControllableTask;
.source "com.google.firebase:firebase-storage@@19.1.1"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/storage/StorageTask$SnapshotBase;,
        Lcom/google/firebase/storage/StorageTask$ProvideError;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultT::",
        "Lcom/google/firebase/storage/StorageTask$ProvideError;",
        ">",
        "Lcom/google/firebase/storage/ControllableTask<",
        "TResultT;>;"
    }
.end annotation


# static fields
.field static final INTERNAL_STATE_CANCELED:I = 0x100

.field static final INTERNAL_STATE_CANCELING:I = 0x20

.field static final INTERNAL_STATE_FAILURE:I = 0x40

.field static final INTERNAL_STATE_IN_PROGRESS:I = 0x4

.field static final INTERNAL_STATE_NOT_STARTED:I = 0x1

.field static final INTERNAL_STATE_PAUSED:I = 0x10

.field static final INTERNAL_STATE_PAUSING:I = 0x8

.field static final INTERNAL_STATE_QUEUED:I = 0x2

.field static final INTERNAL_STATE_SUCCESS:I = 0x80

.field static final STATES_CANCELED:I = 0x100

.field static final STATES_COMPLETE:I = 0x1c0

.field static final STATES_FAILURE:I = 0x40

.field static final STATES_INPROGRESS:I = -0x1d1

.field static final STATES_PAUSED:I = 0x10

.field static final STATES_SUCCESS:I = 0x80

.field private static final TAG:Ljava/lang/String; = "StorageTask"

.field private static final ValidTaskInitiatedStateChanges:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final ValidUserInitiatedStateChanges:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field final cancelManager:Lcom/google/firebase/storage/TaskListenerImpl;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/storage/TaskListenerImpl<",
            "Lcom/google/android/gms/tasks/OnCanceledListener;",
            "TResultT;>;"
        }
    .end annotation
.end field

.field final completeListener:Lcom/google/firebase/storage/TaskListenerImpl;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/storage/TaskListenerImpl<",
            "Lcom/google/android/gms/tasks/OnCompleteListener<",
            "TResultT;>;TResultT;>;"
        }
    .end annotation
.end field

.field private volatile currentState:I

.field final failureManager:Lcom/google/firebase/storage/TaskListenerImpl;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/storage/TaskListenerImpl<",
            "Lcom/google/android/gms/tasks/OnFailureListener;",
            "TResultT;>;"
        }
    .end annotation
.end field

.field private finalResult:Lcom/google/firebase/storage/StorageTask$ProvideError;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TResultT;"
        }
    .end annotation
.end field

.field final pausedManager:Lcom/google/firebase/storage/TaskListenerImpl;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/storage/TaskListenerImpl<",
            "Lcom/google/firebase/storage/OnPausedListener<",
            "-TResultT;>;TResultT;>;"
        }
    .end annotation
.end field

.field final progressManager:Lcom/google/firebase/storage/TaskListenerImpl;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/storage/TaskListenerImpl<",
            "Lcom/google/firebase/storage/OnProgressListener<",
            "-TResultT;>;TResultT;>;"
        }
    .end annotation
.end field

.field final successManager:Lcom/google/firebase/storage/TaskListenerImpl;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/storage/TaskListenerImpl<",
            "Lcom/google/android/gms/tasks/OnSuccessListener<",
            "-TResultT;>;TResultT;>;"
        }
    .end annotation
.end field

.field protected final syncObject:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 15

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/firebase/storage/StorageTask;->ValidUserInitiatedStateChanges:Ljava/util/HashMap;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/firebase/storage/StorageTask;->ValidTaskInitiatedStateChanges:Ljava/util/HashMap;

    .line 66
    sget-object v0, Lcom/google/firebase/storage/StorageTask;->ValidUserInitiatedStateChanges:Ljava/util/HashMap;

    const/4 v1, 0x1

    .line 67
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/util/HashSet;

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/Integer;

    const/16 v7, 0x10

    .line 68
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const/16 v9, 0x100

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v1

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 66
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/google/firebase/storage/StorageTask;->ValidUserInitiatedStateChanges:Ljava/util/HashMap;

    .line 71
    new-instance v2, Ljava/util/HashSet;

    new-array v3, v4, [Ljava/lang/Integer;

    const/16 v6, 0x8

    .line 72
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v8

    const/16 v10, 0x20

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v3, v1

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 70
    invoke-virtual {v0, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/google/firebase/storage/StorageTask;->ValidUserInitiatedStateChanges:Ljava/util/HashMap;

    const/4 v2, 0x4

    .line 75
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/util/HashSet;

    new-array v11, v4, [Ljava/lang/Integer;

    aput-object v6, v11, v8

    .line 76
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v1

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-direct {v3, v11}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 74
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/google/firebase/storage/StorageTask;->ValidUserInitiatedStateChanges:Ljava/util/HashMap;

    .line 79
    new-instance v3, Ljava/util/HashSet;

    new-array v11, v4, [Ljava/lang/Integer;

    aput-object v5, v11, v8

    aput-object v9, v11, v1

    .line 80
    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-direct {v3, v11}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 78
    invoke-virtual {v0, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/google/firebase/storage/StorageTask;->ValidUserInitiatedStateChanges:Ljava/util/HashMap;

    const/16 v3, 0x40

    .line 83
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v11, Ljava/util/HashSet;

    new-array v12, v4, [Ljava/lang/Integer;

    aput-object v5, v12, v8

    aput-object v9, v12, v1

    .line 84
    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 82
    invoke-virtual {v0, v3, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/google/firebase/storage/StorageTask;->ValidTaskInitiatedStateChanges:Ljava/util/HashMap;

    .line 87
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    new-instance v12, Ljava/util/HashSet;

    new-array v13, v4, [Ljava/lang/Integer;

    aput-object v5, v13, v8

    aput-object v3, v13, v1

    .line 88
    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 86
    invoke-virtual {v0, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/google/firebase/storage/StorageTask;->ValidTaskInitiatedStateChanges:Ljava/util/HashMap;

    .line 91
    new-instance v11, Ljava/util/HashSet;

    const/4 v12, 0x3

    new-array v13, v12, [Ljava/lang/Integer;

    aput-object v2, v13, v8

    aput-object v3, v13, v1

    const/16 v14, 0x80

    .line 94
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v4

    .line 93
    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    invoke-direct {v11, v13}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 90
    invoke-virtual {v0, v5, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/google/firebase/storage/StorageTask;->ValidTaskInitiatedStateChanges:Ljava/util/HashMap;

    .line 97
    new-instance v5, Ljava/util/HashSet;

    new-array v11, v12, [Ljava/lang/Integer;

    aput-object v2, v11, v8

    aput-object v3, v11, v1

    aput-object v14, v11, v4

    .line 99
    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-direct {v5, v11}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 96
    invoke-virtual {v0, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/google/firebase/storage/StorageTask;->ValidTaskInitiatedStateChanges:Ljava/util/HashMap;

    .line 103
    new-instance v2, Ljava/util/HashSet;

    new-array v5, v12, [Ljava/lang/Integer;

    aput-object v7, v5, v8

    aput-object v3, v5, v1

    aput-object v14, v5, v4

    .line 105
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 102
    invoke-virtual {v0, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/google/firebase/storage/StorageTask;->ValidTaskInitiatedStateChanges:Ljava/util/HashMap;

    .line 108
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v5, Ljava/util/HashSet;

    new-array v6, v12, [Ljava/lang/Integer;

    aput-object v9, v6, v8

    aput-object v3, v6, v1

    aput-object v14, v6, v4

    .line 110
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 107
    invoke-virtual {v0, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>()V
    .registers 4

    .line 167
    invoke-direct {p0}, Lcom/google/firebase/storage/ControllableTask;-><init>()V

    .line 114
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/storage/StorageTask;->syncObject:Ljava/lang/Object;

    .line 116
    new-instance v0, Lcom/google/firebase/storage/TaskListenerImpl;

    invoke-static {p0}, Lcom/google/firebase/storage/StorageTask$$Lambda$1;->lambdaFactory$(Lcom/google/firebase/storage/StorageTask;)Lcom/google/firebase/storage/TaskListenerImpl$OnRaise;

    move-result-object v1

    const/16 v2, 0x80

    invoke-direct {v0, p0, v2, v1}, Lcom/google/firebase/storage/TaskListenerImpl;-><init>(Lcom/google/firebase/storage/StorageTask;ILcom/google/firebase/storage/TaskListenerImpl$OnRaise;)V

    iput-object v0, p0, Lcom/google/firebase/storage/StorageTask;->successManager:Lcom/google/firebase/storage/TaskListenerImpl;

    .line 126
    new-instance v0, Lcom/google/firebase/storage/TaskListenerImpl;

    invoke-static {p0}, Lcom/google/firebase/storage/StorageTask$$Lambda$4;->lambdaFactory$(Lcom/google/firebase/storage/StorageTask;)Lcom/google/firebase/storage/TaskListenerImpl$OnRaise;

    move-result-object v1

    const/16 v2, 0x40

    invoke-direct {v0, p0, v2, v1}, Lcom/google/firebase/storage/TaskListenerImpl;-><init>(Lcom/google/firebase/storage/StorageTask;ILcom/google/firebase/storage/TaskListenerImpl$OnRaise;)V

    iput-object v0, p0, Lcom/google/firebase/storage/StorageTask;->failureManager:Lcom/google/firebase/storage/TaskListenerImpl;

    .line 136
    new-instance v0, Lcom/google/firebase/storage/TaskListenerImpl;

    invoke-static {p0}, Lcom/google/firebase/storage/StorageTask$$Lambda$5;->lambdaFactory$(Lcom/google/firebase/storage/StorageTask;)Lcom/google/firebase/storage/TaskListenerImpl$OnRaise;

    move-result-object v1

    const/16 v2, 0x1c0

    invoke-direct {v0, p0, v2, v1}, Lcom/google/firebase/storage/TaskListenerImpl;-><init>(Lcom/google/firebase/storage/StorageTask;ILcom/google/firebase/storage/TaskListenerImpl$OnRaise;)V

    iput-object v0, p0, Lcom/google/firebase/storage/StorageTask;->completeListener:Lcom/google/firebase/storage/TaskListenerImpl;

    .line 146
    new-instance v0, Lcom/google/firebase/storage/TaskListenerImpl;

    invoke-static {p0}, Lcom/google/firebase/storage/StorageTask$$Lambda$6;->lambdaFactory$(Lcom/google/firebase/storage/StorageTask;)Lcom/google/firebase/storage/TaskListenerImpl$OnRaise;

    move-result-object v1

    const/16 v2, 0x100

    invoke-direct {v0, p0, v2, v1}, Lcom/google/firebase/storage/TaskListenerImpl;-><init>(Lcom/google/firebase/storage/StorageTask;ILcom/google/firebase/storage/TaskListenerImpl$OnRaise;)V

    iput-object v0, p0, Lcom/google/firebase/storage/StorageTask;->cancelManager:Lcom/google/firebase/storage/TaskListenerImpl;

    .line 156
    new-instance v0, Lcom/google/firebase/storage/TaskListenerImpl;

    invoke-static {}, Lcom/google/firebase/storage/StorageTask$$Lambda$7;->lambdaFactory$()Lcom/google/firebase/storage/TaskListenerImpl$OnRaise;

    move-result-object v1

    const/16 v2, -0x1d1

    invoke-direct {v0, p0, v2, v1}, Lcom/google/firebase/storage/TaskListenerImpl;-><init>(Lcom/google/firebase/storage/StorageTask;ILcom/google/firebase/storage/TaskListenerImpl$OnRaise;)V

    iput-object v0, p0, Lcom/google/firebase/storage/StorageTask;->progressManager:Lcom/google/firebase/storage/TaskListenerImpl;

    .line 160
    new-instance v0, Lcom/google/firebase/storage/TaskListenerImpl;

    invoke-static {}, Lcom/google/firebase/storage/StorageTask$$Lambda$8;->lambdaFactory$()Lcom/google/firebase/storage/TaskListenerImpl$OnRaise;

    move-result-object v1

    const/16 v2, 0x10

    invoke-direct {v0, p0, v2, v1}, Lcom/google/firebase/storage/TaskListenerImpl;-><init>(Lcom/google/firebase/storage/StorageTask;ILcom/google/firebase/storage/TaskListenerImpl$OnRaise;)V

    iput-object v0, p0, Lcom/google/firebase/storage/StorageTask;->pausedManager:Lcom/google/firebase/storage/TaskListenerImpl;

    const/4 v0, 0x1

    .line 168
    iput v0, p0, Lcom/google/firebase/storage/StorageTask;->currentState:I

    return-void
.end method

.method private continueWithImpl(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;
    .registers 6
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/tasks/Continuation;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContinuationResultT:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/Continuation<",
            "TResultT;TContinuationResultT;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "TContinuationResultT;>;"
        }
    .end annotation

    .line 887
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 888
    iget-object v1, p0, Lcom/google/firebase/storage/StorageTask;->completeListener:Lcom/google/firebase/storage/TaskListenerImpl;

    invoke-static {p0, p2, v0}, Lcom/google/firebase/storage/StorageTask$$Lambda$9;->lambdaFactory$(Lcom/google/firebase/storage/StorageTask;Lcom/google/android/gms/tasks/Continuation;Lcom/google/android/gms/tasks/TaskCompletionSource;)Lcom/google/android/gms/tasks/OnCompleteListener;

    move-result-object p2

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1, p2}, Lcom/google/firebase/storage/TaskListenerImpl;->addListener(Landroid/app/Activity;Ljava/util/concurrent/Executor;Ljava/lang/Object;)V

    .line 910
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method private continueWithTaskImpl(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;
    .registers 6
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/tasks/Continuation;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContinuationResultT:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/Continuation<",
            "TResultT;",
            "Lcom/google/android/gms/tasks/Task<",
            "TContinuationResultT;>;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "TContinuationResultT;>;"
        }
    .end annotation

    .line 985
    new-instance v0, Lcom/google/android/gms/tasks/CancellationTokenSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/CancellationTokenSource;-><init>()V

    .line 986
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/CancellationTokenSource;->getToken()Lcom/google/android/gms/tasks/CancellationToken;

    move-result-object v1

    .line 987
    new-instance v2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v2, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>(Lcom/google/android/gms/tasks/CancellationToken;)V

    .line 989
    iget-object v1, p0, Lcom/google/firebase/storage/StorageTask;->completeListener:Lcom/google/firebase/storage/TaskListenerImpl;

    invoke-static {p0, p2, v2, v0}, Lcom/google/firebase/storage/StorageTask$$Lambda$10;->lambdaFactory$(Lcom/google/firebase/storage/StorageTask;Lcom/google/android/gms/tasks/Continuation;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/tasks/CancellationTokenSource;)Lcom/google/android/gms/tasks/OnCompleteListener;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {v1, v0, p1, p2}, Lcom/google/firebase/storage/TaskListenerImpl;->addListener(Landroid/app/Activity;Ljava/util/concurrent/Executor;Ljava/lang/Object;)V

    .line 1020
    invoke-virtual {v2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method private ensureFinalState()V
    .registers 3

    .line 1086
    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask;->isComplete()Z

    move-result v0

    if-nez v0, :cond_21

    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask;->isPaused()Z

    move-result v0

    if-nez v0, :cond_21

    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask;->getInternalState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_21

    const/16 v0, 0x100

    const/4 v1, 0x0

    .line 1089
    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/storage/StorageTask;->tryChangeState(IZ)Z

    move-result v0

    if-nez v0, :cond_21

    const/16 v0, 0x40

    .line 1090
    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/storage/StorageTask;->tryChangeState(IZ)Z

    :cond_21
    return-void
.end method

.method private getFinalResult()Lcom/google/firebase/storage/StorageTask$ProvideError;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResultT;"
        }
    .end annotation

    .line 444
    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask;->finalResult:Lcom/google/firebase/storage/StorageTask$ProvideError;

    if-eqz v0, :cond_5

    return-object v0

    .line 448
    :cond_5
    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask;->isComplete()Z

    move-result v0

    if-nez v0, :cond_d

    const/4 v0, 0x0

    return-object v0

    .line 452
    :cond_d
    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask;->finalResult:Lcom/google/firebase/storage/StorageTask$ProvideError;

    if-nez v0, :cond_17

    .line 453
    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask;->snapState()Lcom/google/firebase/storage/StorageTask$ProvideError;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/storage/StorageTask;->finalResult:Lcom/google/firebase/storage/StorageTask$ProvideError;

    .line 455
    :cond_17
    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask;->finalResult:Lcom/google/firebase/storage/StorageTask$ProvideError;

    return-object v0
.end method

.method private getStateString(I)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3c

    const/4 v0, 0x2

    if-eq p1, v0, :cond_39

    const/4 v0, 0x4

    if-eq p1, v0, :cond_36

    const/16 v0, 0x8

    if-eq p1, v0, :cond_33

    const/16 v0, 0x10

    if-eq p1, v0, :cond_30

    const/16 v0, 0x20

    if-eq p1, v0, :cond_2d

    const/16 v0, 0x40

    if-eq p1, v0, :cond_2a

    const/16 v0, 0x80

    if-eq p1, v0, :cond_27

    const/16 v0, 0x100

    if-eq p1, v0, :cond_24

    const-string p1, "Unknown Internal State!"

    return-object p1

    :cond_24
    const-string p1, "INTERNAL_STATE_CANCELED"

    return-object p1

    :cond_27
    const-string p1, "INTERNAL_STATE_SUCCESS"

    return-object p1

    :cond_2a
    const-string p1, "INTERNAL_STATE_FAILURE"

    return-object p1

    :cond_2d
    const-string p1, "INTERNAL_STATE_CANCELING"

    return-object p1

    :cond_30
    const-string p1, "INTERNAL_STATE_PAUSED"

    return-object p1

    :cond_33
    const-string p1, "INTERNAL_STATE_PAUSING"

    return-object p1

    :cond_36
    const-string p1, "INTERNAL_STATE_IN_PROGRESS"

    return-object p1

    :cond_39
    const-string p1, "INTERNAL_STATE_QUEUED"

    return-object p1

    :cond_3c
    const-string p1, "INTERNAL_STATE_NOT_STARTED"

    return-object p1
.end method

.method private getStateString([I)Ljava/lang/String;
    .registers 7

    .line 1096
    array-length v0, p1

    if-nez v0, :cond_6

    const-string p1, ""

    return-object p1

    .line 1100
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1102
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v1, :cond_21

    aget v4, p1, v3

    .line 1103
    invoke-direct {p0, v4}, Lcom/google/firebase/storage/StorageTask;->getStateString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 1106
    :cond_21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x2

    invoke-virtual {v0, v2, p1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic lambda$continueWithImpl$4(Lcom/google/firebase/storage/StorageTask;Lcom/google/android/gms/tasks/Continuation;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/tasks/Task;)V
    .registers 4

    .line 894
    :try_start_0
    invoke-interface {p1, p0}, Lcom/google/android/gms/tasks/Continuation;->then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    move-result-object p0
    :try_end_4
    .catch Lcom/google/android/gms/tasks/RuntimeExecutionException; {:try_start_0 .. :try_end_4} :catch_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_12

    .line 906
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isComplete()Z

    move-result p1

    if-nez p1, :cond_11

    .line 907
    invoke-virtual {p2, p0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    :cond_11
    return-void

    :catch_12
    move-exception p0

    .line 903
    invoke-virtual {p2, p0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    return-void

    :catch_17
    move-exception p0

    .line 896
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/RuntimeExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Ljava/lang/Exception;

    if-eqz p1, :cond_2a

    .line 897
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/RuntimeExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/lang/Exception;

    invoke-virtual {p2, p0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    goto :goto_2d

    .line 899
    :cond_2a
    invoke-virtual {p2, p0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    :goto_2d
    return-void
.end method

.method static synthetic lambda$continueWithTaskImpl$5(Lcom/google/firebase/storage/StorageTask;Lcom/google/android/gms/tasks/Continuation;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/tasks/CancellationTokenSource;Lcom/google/android/gms/tasks/Task;)V
    .registers 5

    .line 995
    :try_start_0
    invoke-interface {p1, p0}, Lcom/google/android/gms/tasks/Continuation;->then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/tasks/Task;
    :try_end_6
    .catch Lcom/google/android/gms/tasks/RuntimeExecutionException; {:try_start_0 .. :try_end_6} :catch_41
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_3c

    .line 1008
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isComplete()Z

    move-result p1

    if-nez p1, :cond_3b

    if-nez p0, :cond_1d

    .line 1010
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Continuation returned null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    return-void

    .line 1014
    :cond_1d
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/google/firebase/storage/StorageTask$$Lambda$16;->lambdaFactory$(Lcom/google/android/gms/tasks/TaskCompletionSource;)Lcom/google/android/gms/tasks/OnSuccessListener;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    .line 1015
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/google/firebase/storage/StorageTask$$Lambda$17;->lambdaFactory$(Lcom/google/android/gms/tasks/TaskCompletionSource;)Lcom/google/android/gms/tasks/OnFailureListener;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    .line 1016
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p3}, Lcom/google/firebase/storage/StorageTask$$Lambda$18;->lambdaFactory$(Lcom/google/android/gms/tasks/CancellationTokenSource;)Lcom/google/android/gms/tasks/OnCanceledListener;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/tasks/Task;->addOnCanceledListener(Lcom/google/android/gms/tasks/OnCanceledListener;)Lcom/google/android/gms/tasks/Task;

    :cond_3b
    return-void

    :catch_3c
    move-exception p0

    .line 1004
    invoke-virtual {p2, p0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    return-void

    :catch_41
    move-exception p0

    .line 997
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/RuntimeExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Ljava/lang/Exception;

    if-eqz p1, :cond_54

    .line 998
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/RuntimeExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/lang/Exception;

    invoke-virtual {p2, p0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    goto :goto_57

    .line 1000
    :cond_54
    invoke-virtual {p2, p0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    :goto_57
    return-void
.end method

.method static synthetic lambda$getRunnable$7(Lcom/google/firebase/storage/StorageTask;)V
    .registers 2

    .line 1072
    :try_start_0
    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask;->run()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_7

    .line 1074
    invoke-direct {p0}, Lcom/google/firebase/storage/StorageTask;->ensureFinalState()V

    return-void

    :catchall_7
    move-exception v0

    invoke-direct {p0}, Lcom/google/firebase/storage/StorageTask;->ensureFinalState()V

    throw v0
.end method

.method static synthetic lambda$new$0(Lcom/google/firebase/storage/StorageTask;Lcom/google/android/gms/tasks/OnSuccessListener;Lcom/google/firebase/storage/StorageTask$ProvideError;)V
    .registers 4

    .line 122
    invoke-static {}, Lcom/google/firebase/storage/StorageTaskManager;->getInstance()Lcom/google/firebase/storage/StorageTaskManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/firebase/storage/StorageTaskManager;->unRegister(Lcom/google/firebase/storage/StorageTask;)V

    .line 123
    invoke-interface {p1, p2}, Lcom/google/android/gms/tasks/OnSuccessListener;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$new$1(Lcom/google/firebase/storage/StorageTask;Lcom/google/android/gms/tasks/OnFailureListener;Lcom/google/firebase/storage/StorageTask$ProvideError;)V
    .registers 4

    .line 132
    invoke-static {}, Lcom/google/firebase/storage/StorageTaskManager;->getInstance()Lcom/google/firebase/storage/StorageTaskManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/firebase/storage/StorageTaskManager;->unRegister(Lcom/google/firebase/storage/StorageTask;)V

    .line 133
    invoke-interface {p2}, Lcom/google/firebase/storage/StorageTask$ProvideError;->getError()Ljava/lang/Exception;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/google/android/gms/tasks/OnFailureListener;->onFailure(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic lambda$new$2(Lcom/google/firebase/storage/StorageTask;Lcom/google/android/gms/tasks/OnCompleteListener;Lcom/google/firebase/storage/StorageTask$ProvideError;)V
    .registers 3

    .line 142
    invoke-static {}, Lcom/google/firebase/storage/StorageTaskManager;->getInstance()Lcom/google/firebase/storage/StorageTaskManager;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/google/firebase/storage/StorageTaskManager;->unRegister(Lcom/google/firebase/storage/StorageTask;)V

    .line 143
    invoke-interface {p1, p0}, Lcom/google/android/gms/tasks/OnCompleteListener;->onComplete(Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method

.method static synthetic lambda$new$3(Lcom/google/firebase/storage/StorageTask;Lcom/google/android/gms/tasks/OnCanceledListener;Lcom/google/firebase/storage/StorageTask$ProvideError;)V
    .registers 3

    .line 152
    invoke-static {}, Lcom/google/firebase/storage/StorageTaskManager;->getInstance()Lcom/google/firebase/storage/StorageTaskManager;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/google/firebase/storage/StorageTaskManager;->unRegister(Lcom/google/firebase/storage/StorageTask;)V

    .line 153
    invoke-interface {p1}, Lcom/google/android/gms/tasks/OnCanceledListener;->onCanceled()V

    return-void
.end method

.method static synthetic lambda$successTaskImpl$6(Lcom/google/android/gms/tasks/SuccessContinuation;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/tasks/CancellationTokenSource;Lcom/google/firebase/storage/StorageTask$ProvideError;)V
    .registers 4

    .line 1038
    :try_start_0
    invoke-interface {p0, p3}, Lcom/google/android/gms/tasks/SuccessContinuation;->then(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0
    :try_end_4
    .catch Lcom/google/android/gms/tasks/RuntimeExecutionException; {:try_start_0 .. :try_end_4} :catch_28
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_23

    .line 1051
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/google/firebase/storage/StorageTask$$Lambda$13;->lambdaFactory$(Lcom/google/android/gms/tasks/TaskCompletionSource;)Lcom/google/android/gms/tasks/OnSuccessListener;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    .line 1052
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/google/firebase/storage/StorageTask$$Lambda$14;->lambdaFactory$(Lcom/google/android/gms/tasks/TaskCompletionSource;)Lcom/google/android/gms/tasks/OnFailureListener;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    .line 1053
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/google/firebase/storage/StorageTask$$Lambda$15;->lambdaFactory$(Lcom/google/android/gms/tasks/CancellationTokenSource;)Lcom/google/android/gms/tasks/OnCanceledListener;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/tasks/Task;->addOnCanceledListener(Lcom/google/android/gms/tasks/OnCanceledListener;)Lcom/google/android/gms/tasks/Task;

    return-void

    :catch_23
    move-exception p0

    .line 1047
    invoke-virtual {p1, p0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    return-void

    :catch_28
    move-exception p0

    .line 1040
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/RuntimeExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Ljava/lang/Exception;

    if-eqz p2, :cond_3b

    .line 1041
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/RuntimeExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/lang/Exception;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    goto :goto_3e

    .line 1043
    :cond_3b
    invoke-virtual {p1, p0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    :goto_3e
    return-void
.end method

.method private successTaskImpl(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;
    .registers 6
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/tasks/SuccessContinuation;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContinuationResultT:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/SuccessContinuation<",
            "TResultT;TContinuationResultT;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "TContinuationResultT;>;"
        }
    .end annotation

    .line 1027
    new-instance v0, Lcom/google/android/gms/tasks/CancellationTokenSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/CancellationTokenSource;-><init>()V

    .line 1028
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/CancellationTokenSource;->getToken()Lcom/google/android/gms/tasks/CancellationToken;

    move-result-object v1

    .line 1029
    new-instance v2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v2, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>(Lcom/google/android/gms/tasks/CancellationToken;)V

    .line 1032
    iget-object v1, p0, Lcom/google/firebase/storage/StorageTask;->successManager:Lcom/google/firebase/storage/TaskListenerImpl;

    invoke-static {p2, v2, v0}, Lcom/google/firebase/storage/StorageTask$$Lambda$11;->lambdaFactory$(Lcom/google/android/gms/tasks/SuccessContinuation;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/tasks/CancellationTokenSource;)Lcom/google/android/gms/tasks/OnSuccessListener;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {v1, v0, p1, p2}, Lcom/google/firebase/storage/TaskListenerImpl;->addListener(Landroid/app/Activity;Ljava/util/concurrent/Executor;Ljava/lang/Object;)V

    .line 1055
    invoke-virtual {v2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public bridge synthetic addOnCanceledListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnCanceledListener;)Lcom/google/android/gms/tasks/Task;
    .registers 3
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/tasks/OnCanceledListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/storage/StorageTask;->addOnCanceledListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnCanceledListener;)Lcom/google/firebase/storage/StorageTask;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addOnCanceledListener(Lcom/google/android/gms/tasks/OnCanceledListener;)Lcom/google/android/gms/tasks/Task;
    .registers 2
    .param p1    # Lcom/google/android/gms/tasks/OnCanceledListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 41
    invoke-virtual {p0, p1}, Lcom/google/firebase/storage/StorageTask;->addOnCanceledListener(Lcom/google/android/gms/tasks/OnCanceledListener;)Lcom/google/firebase/storage/StorageTask;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addOnCanceledListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCanceledListener;)Lcom/google/android/gms/tasks/Task;
    .registers 3
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/tasks/OnCanceledListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/storage/StorageTask;->addOnCanceledListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCanceledListener;)Lcom/google/firebase/storage/StorageTask;

    move-result-object p1

    return-object p1
.end method

.method public addOnCanceledListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnCanceledListener;)Lcom/google/firebase/storage/StorageTask;
    .registers 5
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/tasks/OnCanceledListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/android/gms/tasks/OnCanceledListener;",
            ")",
            "Lcom/google/firebase/storage/StorageTask<",
            "TResultT;>;"
        }
    .end annotation

    .line 838
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 839
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 840
    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask;->cancelManager:Lcom/google/firebase/storage/TaskListenerImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lcom/google/firebase/storage/TaskListenerImpl;->addListener(Landroid/app/Activity;Ljava/util/concurrent/Executor;Ljava/lang/Object;)V

    return-object p0
.end method

.method public addOnCanceledListener(Lcom/google/android/gms/tasks/OnCanceledListener;)Lcom/google/firebase/storage/StorageTask;
    .registers 4
    .param p1    # Lcom/google/android/gms/tasks/OnCanceledListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/OnCanceledListener;",
            ")",
            "Lcom/google/firebase/storage/StorageTask<",
            "TResultT;>;"
        }
    .end annotation

    .line 799
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 800
    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask;->cancelManager:Lcom/google/firebase/storage/TaskListenerImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1}, Lcom/google/firebase/storage/TaskListenerImpl;->addListener(Landroid/app/Activity;Ljava/util/concurrent/Executor;Ljava/lang/Object;)V

    return-object p0
.end method

.method public addOnCanceledListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCanceledListener;)Lcom/google/firebase/storage/StorageTask;
    .registers 5
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/tasks/OnCanceledListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/OnCanceledListener;",
            ")",
            "Lcom/google/firebase/storage/StorageTask<",
            "TResultT;>;"
        }
    .end annotation

    .line 817
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 818
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 819
    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask;->cancelManager:Lcom/google/firebase/storage/TaskListenerImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/firebase/storage/TaskListenerImpl;->addListener(Landroid/app/Activity;Ljava/util/concurrent/Executor;Ljava/lang/Object;)V

    return-object p0
.end method

.method public bridge synthetic addOnCompleteListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;
    .registers 3
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/tasks/OnCompleteListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/storage/StorageTask;->addOnCompleteListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/firebase/storage/StorageTask;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;
    .registers 2
    .param p1    # Lcom/google/android/gms/tasks/OnCompleteListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 41
    invoke-virtual {p0, p1}, Lcom/google/firebase/storage/StorageTask;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/firebase/storage/StorageTask;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addOnCompleteListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;
    .registers 3
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/tasks/OnCompleteListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/storage/StorageTask;->addOnCompleteListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/firebase/storage/StorageTask;

    move-result-object p1

    return-object p1
.end method

.method public addOnCompleteListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/firebase/storage/StorageTask;
    .registers 5
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/tasks/OnCompleteListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/android/gms/tasks/OnCompleteListener<",
            "TResultT;>;)",
            "Lcom/google/firebase/storage/StorageTask<",
            "TResultT;>;"
        }
    .end annotation

    .line 771
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 772
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask;->completeListener:Lcom/google/firebase/storage/TaskListenerImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lcom/google/firebase/storage/TaskListenerImpl;->addListener(Landroid/app/Activity;Ljava/util/concurrent/Executor;Ljava/lang/Object;)V

    return-object p0
.end method

.method public addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/firebase/storage/StorageTask;
    .registers 4
    .param p1    # Lcom/google/android/gms/tasks/OnCompleteListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/OnCompleteListener<",
            "TResultT;>;)",
            "Lcom/google/firebase/storage/StorageTask<",
            "TResultT;>;"
        }
    .end annotation

    .line 729
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 730
    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask;->completeListener:Lcom/google/firebase/storage/TaskListenerImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1}, Lcom/google/firebase/storage/TaskListenerImpl;->addListener(Landroid/app/Activity;Ljava/util/concurrent/Executor;Ljava/lang/Object;)V

    return-object p0
.end method

.method public addOnCompleteListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/firebase/storage/StorageTask;
    .registers 5
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/tasks/OnCompleteListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/OnCompleteListener<",
            "TResultT;>;)",
            "Lcom/google/firebase/storage/StorageTask<",
            "TResultT;>;"
        }
    .end annotation

    .line 749
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 750
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 752
    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask;->completeListener:Lcom/google/firebase/storage/TaskListenerImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/firebase/storage/TaskListenerImpl;->addListener(Landroid/app/Activity;Ljava/util/concurrent/Executor;Ljava/lang/Object;)V

    return-object p0
.end method

.method public bridge synthetic addOnFailureListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;
    .registers 3
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/tasks/OnFailureListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/storage/StorageTask;->addOnFailureListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/firebase/storage/StorageTask;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;
    .registers 2
    .param p1    # Lcom/google/android/gms/tasks/OnFailureListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 41
    invoke-virtual {p0, p1}, Lcom/google/firebase/storage/StorageTask;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/firebase/storage/StorageTask;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addOnFailureListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;
    .registers 3
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/tasks/OnFailureListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/storage/StorageTask;->addOnFailureListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/firebase/storage/StorageTask;

    move-result-object p1

    return-object p1
.end method

.method public addOnFailureListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/firebase/storage/StorageTask;
    .registers 5
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/tasks/OnFailureListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/android/gms/tasks/OnFailureListener;",
            ")",
            "Lcom/google/firebase/storage/StorageTask<",
            "TResultT;>;"
        }
    .end annotation

    .line 700
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 701
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 703
    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask;->failureManager:Lcom/google/firebase/storage/TaskListenerImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lcom/google/firebase/storage/TaskListenerImpl;->addListener(Landroid/app/Activity;Ljava/util/concurrent/Executor;Ljava/lang/Object;)V

    return-object p0
.end method

.method public addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/firebase/storage/StorageTask;
    .registers 4
    .param p1    # Lcom/google/android/gms/tasks/OnFailureListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/OnFailureListener;",
            ")",
            "Lcom/google/firebase/storage/StorageTask<",
            "TResultT;>;"
        }
    .end annotation

    .line 657
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 658
    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask;->failureManager:Lcom/google/firebase/storage/TaskListenerImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1}, Lcom/google/firebase/storage/TaskListenerImpl;->addListener(Landroid/app/Activity;Ljava/util/concurrent/Executor;Ljava/lang/Object;)V

    return-object p0
.end method

.method public addOnFailureListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/firebase/storage/StorageTask;
    .registers 5
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/tasks/OnFailureListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/OnFailureListener;",
            ")",
            "Lcom/google/firebase/storage/StorageTask<",
            "TResultT;>;"
        }
    .end annotation

    .line 677
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 680
    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask;->failureManager:Lcom/google/firebase/storage/TaskListenerImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/firebase/storage/TaskListenerImpl;->addListener(Landroid/app/Activity;Ljava/util/concurrent/Executor;Ljava/lang/Object;)V

    return-object p0
.end method

.method public bridge synthetic addOnPausedListener(Landroid/app/Activity;Lcom/google/firebase/storage/OnPausedListener;)Lcom/google/firebase/storage/ControllableTask;
    .registers 3
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/storage/OnPausedListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/storage/StorageTask;->addOnPausedListener(Landroid/app/Activity;Lcom/google/firebase/storage/OnPausedListener;)Lcom/google/firebase/storage/StorageTask;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addOnPausedListener(Lcom/google/firebase/storage/OnPausedListener;)Lcom/google/firebase/storage/ControllableTask;
    .registers 2
    .param p1    # Lcom/google/firebase/storage/OnPausedListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 41
    invoke-virtual {p0, p1}, Lcom/google/firebase/storage/StorageTask;->addOnPausedListener(Lcom/google/firebase/storage/OnPausedListener;)Lcom/google/firebase/storage/StorageTask;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addOnPausedListener(Ljava/util/concurrent/Executor;Lcom/google/firebase/storage/OnPausedListener;)Lcom/google/firebase/storage/ControllableTask;
    .registers 3
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/storage/OnPausedListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/storage/StorageTask;->addOnPausedListener(Ljava/util/concurrent/Executor;Lcom/google/firebase/storage/OnPausedListener;)Lcom/google/firebase/storage/StorageTask;

    move-result-object p1

    return-object p1
.end method

.method public addOnPausedListener(Landroid/app/Activity;Lcom/google/firebase/storage/OnPausedListener;)Lcom/google/firebase/storage/StorageTask;
    .registers 5
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/storage/OnPausedListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/firebase/storage/OnPausedListener<",
            "-TResultT;>;)",
            "Lcom/google/firebase/storage/StorageTask<",
            "TResultT;>;"
        }
    .end annotation

    .line 501
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask;->pausedManager:Lcom/google/firebase/storage/TaskListenerImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lcom/google/firebase/storage/TaskListenerImpl;->addListener(Landroid/app/Activity;Ljava/util/concurrent/Executor;Ljava/lang/Object;)V

    return-object p0
.end method

.method public addOnPausedListener(Lcom/google/firebase/storage/OnPausedListener;)Lcom/google/firebase/storage/StorageTask;
    .registers 4
    .param p1    # Lcom/google/firebase/storage/OnPausedListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/storage/OnPausedListener<",
            "-TResultT;>;)",
            "Lcom/google/firebase/storage/StorageTask<",
            "TResultT;>;"
        }
    .end annotation

    .line 467
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask;->pausedManager:Lcom/google/firebase/storage/TaskListenerImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1}, Lcom/google/firebase/storage/TaskListenerImpl;->addListener(Landroid/app/Activity;Ljava/util/concurrent/Executor;Ljava/lang/Object;)V

    return-object p0
.end method

.method public addOnPausedListener(Ljava/util/concurrent/Executor;Lcom/google/firebase/storage/OnPausedListener;)Lcom/google/firebase/storage/StorageTask;
    .registers 5
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/storage/OnPausedListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/firebase/storage/OnPausedListener<",
            "-TResultT;>;)",
            "Lcom/google/firebase/storage/StorageTask<",
            "TResultT;>;"
        }
    .end annotation

    .line 482
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask;->pausedManager:Lcom/google/firebase/storage/TaskListenerImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/firebase/storage/TaskListenerImpl;->addListener(Landroid/app/Activity;Ljava/util/concurrent/Executor;Ljava/lang/Object;)V

    return-object p0
.end method

.method public bridge synthetic addOnProgressListener(Landroid/app/Activity;Lcom/google/firebase/storage/OnProgressListener;)Lcom/google/firebase/storage/CancellableTask;
    .registers 3
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/storage/OnProgressListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/storage/StorageTask;->addOnProgressListener(Landroid/app/Activity;Lcom/google/firebase/storage/OnProgressListener;)Lcom/google/firebase/storage/StorageTask;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addOnProgressListener(Lcom/google/firebase/storage/OnProgressListener;)Lcom/google/firebase/storage/CancellableTask;
    .registers 2
    .param p1    # Lcom/google/firebase/storage/OnProgressListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 41
    invoke-virtual {p0, p1}, Lcom/google/firebase/storage/StorageTask;->addOnProgressListener(Lcom/google/firebase/storage/OnProgressListener;)Lcom/google/firebase/storage/StorageTask;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addOnProgressListener(Ljava/util/concurrent/Executor;Lcom/google/firebase/storage/OnProgressListener;)Lcom/google/firebase/storage/CancellableTask;
    .registers 3
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/storage/OnProgressListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/storage/StorageTask;->addOnProgressListener(Ljava/util/concurrent/Executor;Lcom/google/firebase/storage/OnProgressListener;)Lcom/google/firebase/storage/StorageTask;

    move-result-object p1

    return-object p1
.end method

.method public addOnProgressListener(Landroid/app/Activity;Lcom/google/firebase/storage/OnProgressListener;)Lcom/google/firebase/storage/StorageTask;
    .registers 5
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/storage/OnProgressListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/firebase/storage/OnProgressListener<",
            "-TResultT;>;)",
            "Lcom/google/firebase/storage/StorageTask<",
            "TResultT;>;"
        }
    .end annotation

    .line 557
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask;->progressManager:Lcom/google/firebase/storage/TaskListenerImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lcom/google/firebase/storage/TaskListenerImpl;->addListener(Landroid/app/Activity;Ljava/util/concurrent/Executor;Ljava/lang/Object;)V

    return-object p0
.end method

.method public addOnProgressListener(Lcom/google/firebase/storage/OnProgressListener;)Lcom/google/firebase/storage/StorageTask;
    .registers 4
    .param p1    # Lcom/google/firebase/storage/OnProgressListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/storage/OnProgressListener<",
            "-TResultT;>;)",
            "Lcom/google/firebase/storage/StorageTask<",
            "TResultT;>;"
        }
    .end annotation

    .line 525
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask;->progressManager:Lcom/google/firebase/storage/TaskListenerImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1}, Lcom/google/firebase/storage/TaskListenerImpl;->addListener(Landroid/app/Activity;Ljava/util/concurrent/Executor;Ljava/lang/Object;)V

    return-object p0
.end method

.method public addOnProgressListener(Ljava/util/concurrent/Executor;Lcom/google/firebase/storage/OnProgressListener;)Lcom/google/firebase/storage/StorageTask;
    .registers 5
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/storage/OnProgressListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/firebase/storage/OnProgressListener<",
            "-TResultT;>;)",
            "Lcom/google/firebase/storage/StorageTask<",
            "TResultT;>;"
        }
    .end annotation

    .line 540
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask;->progressManager:Lcom/google/firebase/storage/TaskListenerImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/firebase/storage/TaskListenerImpl;->addListener(Landroid/app/Activity;Ljava/util/concurrent/Executor;Ljava/lang/Object;)V

    return-object p0
.end method

.method public bridge synthetic addOnSuccessListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;
    .registers 3
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/tasks/OnSuccessListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/storage/StorageTask;->addOnSuccessListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/firebase/storage/StorageTask;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;
    .registers 2
    .param p1    # Lcom/google/android/gms/tasks/OnSuccessListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 41
    invoke-virtual {p0, p1}, Lcom/google/firebase/storage/StorageTask;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/firebase/storage/StorageTask;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addOnSuccessListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;
    .registers 3
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/tasks/OnSuccessListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/storage/StorageTask;->addOnSuccessListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/firebase/storage/StorageTask;

    move-result-object p1

    return-object p1
.end method

.method public addOnSuccessListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/firebase/storage/StorageTask;
    .registers 5
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/tasks/OnSuccessListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/android/gms/tasks/OnSuccessListener<",
            "-TResultT;>;)",
            "Lcom/google/firebase/storage/StorageTask<",
            "TResultT;>;"
        }
    .end annotation

    .line 628
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask;->successManager:Lcom/google/firebase/storage/TaskListenerImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lcom/google/firebase/storage/TaskListenerImpl;->addListener(Landroid/app/Activity;Ljava/util/concurrent/Executor;Ljava/lang/Object;)V

    return-object p0
.end method

.method public addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/firebase/storage/StorageTask;
    .registers 4
    .param p1    # Lcom/google/android/gms/tasks/OnSuccessListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/OnSuccessListener<",
            "-TResultT;>;)",
            "Lcom/google/firebase/storage/StorageTask<",
            "TResultT;>;"
        }
    .end annotation

    .line 584
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask;->successManager:Lcom/google/firebase/storage/TaskListenerImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1}, Lcom/google/firebase/storage/TaskListenerImpl;->addListener(Landroid/app/Activity;Ljava/util/concurrent/Executor;Ljava/lang/Object;)V

    return-object p0
.end method

.method public addOnSuccessListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/firebase/storage/StorageTask;
    .registers 5
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/tasks/OnSuccessListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/OnSuccessListener<",
            "-TResultT;>;)",
            "Lcom/google/firebase/storage/StorageTask<",
            "TResultT;>;"
        }
    .end annotation

    .line 605
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask;->successManager:Lcom/google/firebase/storage/TaskListenerImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/firebase/storage/TaskListenerImpl;->addListener(Landroid/app/Activity;Ljava/util/concurrent/Executor;Ljava/lang/Object;)V

    return-object p0
.end method

.method public cancel()Z
    .registers 3

    const/4 v0, 0x2

    .line 231
    new-array v0, v0, [I

    fill-array-data v0, :array_c

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/storage/StorageTask;->tryChangeState([IZ)Z

    move-result v0

    return v0

    :array_c
    .array-data 4
        0x100
        0x20
    .end array-data
.end method

.method public continueWith(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;
    .registers 3
    .param p1    # Lcom/google/android/gms/tasks/Continuation;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContinuationResultT:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/tasks/Continuation<",
            "TResultT;TContinuationResultT;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "TContinuationResultT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 864
    invoke-direct {p0, v0, p1}, Lcom/google/firebase/storage/StorageTask;->continueWithImpl(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public continueWith(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;
    .registers 3
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/tasks/Continuation;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContinuationResultT:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/Continuation<",
            "TResultT;TContinuationResultT;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "TContinuationResultT;>;"
        }
    .end annotation

    .line 879
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/storage/StorageTask;->continueWithImpl(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public continueWithTask(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;
    .registers 3
    .param p1    # Lcom/google/android/gms/tasks/Continuation;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContinuationResultT:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/tasks/Continuation<",
            "TResultT;",
            "Lcom/google/android/gms/tasks/Task<",
            "TContinuationResultT;>;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "TContinuationResultT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 925
    invoke-direct {p0, v0, p1}, Lcom/google/firebase/storage/StorageTask;->continueWithTaskImpl(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public continueWithTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;
    .registers 3
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/tasks/Continuation;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContinuationResultT:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/Continuation<",
            "TResultT;",
            "Lcom/google/android/gms/tasks/Task<",
            "TContinuationResultT;>;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "TContinuationResultT;>;"
        }
    .end annotation

    .line 940
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/storage/StorageTask;->continueWithTaskImpl(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public getException()Ljava/lang/Exception;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 313
    invoke-direct {p0}, Lcom/google/firebase/storage/StorageTask;->getFinalResult()Lcom/google/firebase/storage/StorageTask$ProvideError;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    .line 316
    :cond_8
    invoke-direct {p0}, Lcom/google/firebase/storage/StorageTask;->getFinalResult()Lcom/google/firebase/storage/StorageTask$ProvideError;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/firebase/storage/StorageTask$ProvideError;->getError()Ljava/lang/Exception;

    move-result-object v0

    return-object v0
.end method

.method getInternalState()I
    .registers 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 331
    iget v0, p0, Lcom/google/firebase/storage/StorageTask;->currentState:I

    return v0
.end method

.method public getResult()Lcom/google/firebase/storage/StorageTask$ProvideError;
    .registers 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResultT;"
        }
    .end annotation

    .line 273
    invoke-direct {p0}, Lcom/google/firebase/storage/StorageTask;->getFinalResult()Lcom/google/firebase/storage/StorageTask$ProvideError;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 276
    invoke-direct {p0}, Lcom/google/firebase/storage/StorageTask;->getFinalResult()Lcom/google/firebase/storage/StorageTask$ProvideError;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/firebase/storage/StorageTask$ProvideError;->getError()Ljava/lang/Exception;

    move-result-object v0

    if-nez v0, :cond_15

    .line 280
    invoke-direct {p0}, Lcom/google/firebase/storage/StorageTask;->getFinalResult()Lcom/google/firebase/storage/StorageTask$ProvideError;

    move-result-object v0

    return-object v0

    .line 278
    :cond_15
    new-instance v1, Lcom/google/android/gms/tasks/RuntimeExecutionException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/tasks/RuntimeExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 274
    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getResult(Ljava/lang/Class;)Lcom/google/firebase/storage/StorageTask$ProvideError;
    .registers 3
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Class<",
            "TX;>;)TResultT;^TX;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 293
    invoke-direct {p0}, Lcom/google/firebase/storage/StorageTask;->getFinalResult()Lcom/google/firebase/storage/StorageTask$ProvideError;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 296
    invoke-direct {p0}, Lcom/google/firebase/storage/StorageTask;->getFinalResult()Lcom/google/firebase/storage/StorageTask$ProvideError;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/firebase/storage/StorageTask$ProvideError;->getError()Ljava/lang/Exception;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 299
    invoke-direct {p0}, Lcom/google/firebase/storage/StorageTask;->getFinalResult()Lcom/google/firebase/storage/StorageTask$ProvideError;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/firebase/storage/StorageTask$ProvideError;->getError()Ljava/lang/Exception;

    move-result-object p1

    if-nez p1, :cond_23

    .line 303
    invoke-direct {p0}, Lcom/google/firebase/storage/StorageTask;->getFinalResult()Lcom/google/firebase/storage/StorageTask$ProvideError;

    move-result-object p1

    return-object p1

    .line 301
    :cond_23
    new-instance v0, Lcom/google/android/gms/tasks/RuntimeExecutionException;

    invoke-direct {v0, p1}, Lcom/google/android/gms/tasks/RuntimeExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 297
    :cond_29
    invoke-direct {p0}, Lcom/google/firebase/storage/StorageTask;->getFinalResult()Lcom/google/firebase/storage/StorageTask$ProvideError;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/firebase/storage/StorageTask$ProvideError;->getError()Ljava/lang/Exception;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 294
    :cond_38
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public bridge synthetic getResult()Ljava/lang/Object;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 41
    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask;->getResult()Lcom/google/firebase/storage/StorageTask$ProvideError;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getResult(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 2
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 41
    invoke-virtual {p0, p1}, Lcom/google/firebase/storage/StorageTask;->getResult(Ljava/lang/Class;)Lcom/google/firebase/storage/StorageTask$ProvideError;

    move-result-object p1

    return-object p1
.end method

.method getRunnable()Ljava/lang/Runnable;
    .registers 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1070
    invoke-static {p0}, Lcom/google/firebase/storage/StorageTask$$Lambda$12;->lambdaFactory$(Lcom/google/firebase/storage/StorageTask;)Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method public getSnapshot()Lcom/google/firebase/storage/StorageTask$ProvideError;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResultT;"
        }
    .end annotation

    .line 325
    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask;->snapState()Lcom/google/firebase/storage/StorageTask$ProvideError;

    move-result-object v0

    return-object v0
.end method

.method abstract getStorage()Lcom/google/firebase/storage/StorageReference;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end method

.method getSyncObject()Ljava/lang/Object;
    .registers 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 336
    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask;->syncObject:Ljava/lang/Object;

    return-object v0
.end method

.method public isCanceled()Z
    .registers 3

    .line 249
    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask;->getInternalState()I

    move-result v0

    const/16 v1, 0x100

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public isComplete()Z
    .registers 2

    .line 237
    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask;->getInternalState()I

    move-result v0

    and-int/lit16 v0, v0, 0x1c0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public isInProgress()Z
    .registers 2

    .line 255
    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask;->getInternalState()I

    move-result v0

    and-int/lit16 v0, v0, -0x1d1

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public isPaused()Z
    .registers 2

    .line 261
    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask;->getInternalState()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public isSuccessful()Z
    .registers 2

    .line 243
    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask;->getInternalState()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method protected onCanceled()V
    .registers 1

    return-void
.end method

.method protected onFailure()V
    .registers 1

    return-void
.end method

.method protected onPaused()V
    .registers 1

    return-void
.end method

.method protected onProgress()V
    .registers 1

    return-void
.end method

.method protected onQueued()V
    .registers 1

    return-void
.end method

.method protected onSuccess()V
    .registers 1

    return-void
.end method

.method public onSuccessTask(Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;
    .registers 3
    .param p1    # Lcom/google/android/gms/tasks/SuccessContinuation;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContinuationResultT:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/tasks/SuccessContinuation<",
            "TResultT;TContinuationResultT;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "TContinuationResultT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 959
    invoke-direct {p0, v0, p1}, Lcom/google/firebase/storage/StorageTask;->successTaskImpl(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public onSuccessTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;
    .registers 3
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/tasks/SuccessContinuation;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContinuationResultT:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/SuccessContinuation<",
            "TResultT;TContinuationResultT;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "TContinuationResultT;>;"
        }
    .end annotation

    .line 978
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/storage/StorageTask;->successTaskImpl(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public pause()Z
    .registers 3

    const/4 v0, 0x2

    .line 221
    new-array v0, v0, [I

    fill-array-data v0, :array_c

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/storage/StorageTask;->tryChangeState([IZ)Z

    move-result v0

    return v0

    :array_c
    .array-data 4
        0x10
        0x8
    .end array-data
.end method

.method queue()Z
    .registers 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 179
    invoke-virtual {p0, v1, v0}, Lcom/google/firebase/storage/StorageTask;->tryChangeState(IZ)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 180
    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask;->schedule()V

    const/4 v0, 0x1

    :cond_c
    return v0
.end method

.method public removeOnCanceledListener(Lcom/google/android/gms/tasks/OnCanceledListener;)Lcom/google/firebase/storage/StorageTask;
    .registers 3
    .param p1    # Lcom/google/android/gms/tasks/OnCanceledListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/OnCanceledListener;",
            ")",
            "Lcom/google/firebase/storage/StorageTask<",
            "TResultT;>;"
        }
    .end annotation

    .line 847
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 848
    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask;->cancelManager:Lcom/google/firebase/storage/TaskListenerImpl;

    invoke-virtual {v0, p1}, Lcom/google/firebase/storage/TaskListenerImpl;->removeListener(Ljava/lang/Object;)V

    return-object p0
.end method

.method public removeOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/firebase/storage/StorageTask;
    .registers 3
    .param p1    # Lcom/google/android/gms/tasks/OnCompleteListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/OnCompleteListener<",
            "TResultT;>;)",
            "Lcom/google/firebase/storage/StorageTask<",
            "TResultT;>;"
        }
    .end annotation

    .line 782
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 783
    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask;->completeListener:Lcom/google/firebase/storage/TaskListenerImpl;

    invoke-virtual {v0, p1}, Lcom/google/firebase/storage/TaskListenerImpl;->removeListener(Ljava/lang/Object;)V

    return-object p0
.end method

.method public removeOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/firebase/storage/StorageTask;
    .registers 3
    .param p1    # Lcom/google/android/gms/tasks/OnFailureListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/OnFailureListener;",
            ")",
            "Lcom/google/firebase/storage/StorageTask<",
            "TResultT;>;"
        }
    .end annotation

    .line 710
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 711
    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask;->failureManager:Lcom/google/firebase/storage/TaskListenerImpl;

    invoke-virtual {v0, p1}, Lcom/google/firebase/storage/TaskListenerImpl;->removeListener(Ljava/lang/Object;)V

    return-object p0
.end method

.method public removeOnPausedListener(Lcom/google/firebase/storage/OnPausedListener;)Lcom/google/firebase/storage/StorageTask;
    .registers 3
    .param p1    # Lcom/google/firebase/storage/OnPausedListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/storage/OnPausedListener<",
            "-TResultT;>;)",
            "Lcom/google/firebase/storage/StorageTask<",
            "TResultT;>;"
        }
    .end annotation

    .line 511
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask;->pausedManager:Lcom/google/firebase/storage/TaskListenerImpl;

    invoke-virtual {v0, p1}, Lcom/google/firebase/storage/TaskListenerImpl;->removeListener(Ljava/lang/Object;)V

    return-object p0
.end method

.method public removeOnProgressListener(Lcom/google/firebase/storage/OnProgressListener;)Lcom/google/firebase/storage/StorageTask;
    .registers 3
    .param p1    # Lcom/google/firebase/storage/OnProgressListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/storage/OnProgressListener<",
            "-TResultT;>;)",
            "Lcom/google/firebase/storage/StorageTask<",
            "TResultT;>;"
        }
    .end annotation

    .line 567
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask;->progressManager:Lcom/google/firebase/storage/TaskListenerImpl;

    invoke-virtual {v0, p1}, Lcom/google/firebase/storage/TaskListenerImpl;->removeListener(Ljava/lang/Object;)V

    return-object p0
.end method

.method public removeOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/firebase/storage/StorageTask;
    .registers 3
    .param p1    # Lcom/google/android/gms/tasks/OnSuccessListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/OnSuccessListener<",
            "-TResultT;>;)",
            "Lcom/google/firebase/storage/StorageTask<",
            "TResultT;>;"
        }
    .end annotation

    .line 638
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 639
    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask;->successManager:Lcom/google/firebase/storage/TaskListenerImpl;

    invoke-virtual {v0, p1}, Lcom/google/firebase/storage/TaskListenerImpl;->removeListener(Ljava/lang/Object;)V

    return-object p0
.end method

.method resetState()V
    .registers 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    return-void
.end method

.method public resume()Z
    .registers 3

    const/4 v0, 0x1

    const/4 v1, 0x2

    .line 205
    invoke-virtual {p0, v1, v0}, Lcom/google/firebase/storage/StorageTask;->tryChangeState(IZ)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 206
    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask;->resetState()V

    .line 207
    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask;->schedule()V

    return v0

    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method abstract run()V
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end method

.method abstract schedule()V
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end method

.method snapState()Lcom/google/firebase/storage/StorageTask$ProvideError;
    .registers 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResultT;"
        }
    .end annotation

    .line 342
    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask;->syncObject:Ljava/lang/Object;

    monitor-enter v0

    .line 343
    :try_start_3
    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask;->snapStateImpl()Lcom/google/firebase/storage/StorageTask$ProvideError;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_9
    move-exception v1

    .line 344
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method abstract snapStateImpl()Lcom/google/firebase/storage/StorageTask$ProvideError;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResultT;"
        }
    .end annotation
.end method

.method tryChangeState(IZ)Z
    .registers 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x1

    .line 426
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, v0, p2}, Lcom/google/firebase/storage/StorageTask;->tryChangeState([IZ)Z

    move-result p1

    return p1
.end method

.method tryChangeState([IZ)Z
    .registers 11
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    if-eqz p2, :cond_5

    .line 360
    sget-object v0, Lcom/google/firebase/storage/StorageTask;->ValidUserInitiatedStateChanges:Ljava/util/HashMap;

    goto :goto_7

    :cond_5
    sget-object v0, Lcom/google/firebase/storage/StorageTask;->ValidTaskInitiatedStateChanges:Ljava/util/HashMap;

    .line 362
    :goto_7
    iget-object v1, p0, Lcom/google/firebase/storage/StorageTask;->syncObject:Ljava/lang/Object;

    monitor-enter v1

    .line 363
    :try_start_a
    array-length v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_d
    if-ge v4, v2, :cond_c2

    aget v5, p1, v4

    .line 364
    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask;->getInternalState()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashSet;

    if-eqz v6, :cond_be

    .line 365
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_be

    .line 366
    iput v5, p0, Lcom/google/firebase/storage/StorageTask;->currentState:I

    .line 367
    iget p1, p0, Lcom/google/firebase/storage/StorageTask;->currentState:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_5a

    const/4 v0, 0x4

    if-eq p1, v0, :cond_56

    const/16 v0, 0x10

    if-eq p1, v0, :cond_52

    const/16 v0, 0x40

    if-eq p1, v0, :cond_4e

    const/16 v0, 0x80

    if-eq p1, v0, :cond_4a

    const/16 v0, 0x100

    if-eq p1, v0, :cond_46

    goto :goto_64

    .line 385
    :cond_46
    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask;->onCanceled()V

    goto :goto_64

    .line 382
    :cond_4a
    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask;->onSuccess()V

    goto :goto_64

    .line 379
    :cond_4e
    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask;->onFailure()V

    goto :goto_64

    .line 376
    :cond_52
    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask;->onPaused()V

    goto :goto_64

    .line 373
    :cond_56
    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask;->onProgress()V

    goto :goto_64

    .line 369
    :cond_5a
    invoke-static {}, Lcom/google/firebase/storage/StorageTaskManager;->getInstance()Lcom/google/firebase/storage/StorageTaskManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/firebase/storage/StorageTaskManager;->ensureRegistered(Lcom/google/firebase/storage/StorageTask;)V

    .line 370
    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask;->onQueued()V

    .line 389
    :goto_64
    iget-object p1, p0, Lcom/google/firebase/storage/StorageTask;->successManager:Lcom/google/firebase/storage/TaskListenerImpl;

    invoke-virtual {p1}, Lcom/google/firebase/storage/TaskListenerImpl;->onInternalStateChanged()V

    .line 390
    iget-object p1, p0, Lcom/google/firebase/storage/StorageTask;->failureManager:Lcom/google/firebase/storage/TaskListenerImpl;

    invoke-virtual {p1}, Lcom/google/firebase/storage/TaskListenerImpl;->onInternalStateChanged()V

    .line 391
    iget-object p1, p0, Lcom/google/firebase/storage/StorageTask;->cancelManager:Lcom/google/firebase/storage/TaskListenerImpl;

    invoke-virtual {p1}, Lcom/google/firebase/storage/TaskListenerImpl;->onInternalStateChanged()V

    .line 392
    iget-object p1, p0, Lcom/google/firebase/storage/StorageTask;->completeListener:Lcom/google/firebase/storage/TaskListenerImpl;

    invoke-virtual {p1}, Lcom/google/firebase/storage/TaskListenerImpl;->onInternalStateChanged()V

    .line 393
    iget-object p1, p0, Lcom/google/firebase/storage/StorageTask;->pausedManager:Lcom/google/firebase/storage/TaskListenerImpl;

    invoke-virtual {p1}, Lcom/google/firebase/storage/TaskListenerImpl;->onInternalStateChanged()V

    .line 394
    iget-object p1, p0, Lcom/google/firebase/storage/StorageTask;->progressManager:Lcom/google/firebase/storage/TaskListenerImpl;

    invoke-virtual {p1}, Lcom/google/firebase/storage/TaskListenerImpl;->onInternalStateChanged()V

    const-string p1, "StorageTask"

    const/4 v0, 0x3

    .line 396
    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_bb

    const-string p1, "StorageTask"

    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changed internal state to: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    invoke-direct {p0, v5}, Lcom/google/firebase/storage/StorageTask;->getStateString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " isUser: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " from state:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/google/firebase/storage/StorageTask;->currentState:I

    .line 404
    invoke-direct {p0, p2}, Lcom/google/firebase/storage/StorageTask;->getStateString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 397
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    :cond_bb
    monitor-exit v1

    const/4 p1, 0x1

    return p1

    :cond_be
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_d

    :cond_c2
    const-string v0, "StorageTask"

    .line 411
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unable to change internal state to: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    invoke-direct {p0, p1}, Lcom/google/firebase/storage/StorageTask;->getStateString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " isUser: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " from state:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/google/firebase/storage/StorageTask;->currentState:I

    .line 418
    invoke-direct {p0, p1}, Lcom/google/firebase/storage/StorageTask;->getStateString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 411
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    monitor-exit v1

    return v3

    :catchall_f4
    move-exception p1

    .line 421
    monitor-exit v1
    :try_end_f6
    .catchall {:try_start_a .. :try_end_f6} :catchall_f4

    throw p1

    return-void
.end method
