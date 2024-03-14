.class public Lcom/google/firebase/storage/StorageTaskScheduler;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-storage@@19.1.1"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/storage/StorageTaskScheduler$StorageThreadFactory;
    }
.end annotation


# static fields
.field private static final CALLBACK_QUEUE_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static final COMMAND_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static final DOWNLOAD_QUEUE_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static final UPLOAD_QUEUE_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static mCallbackQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static mCommandQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static mDownloadQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static mUploadQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public static sInstance:Lcom/google/firebase/storage/StorageTaskScheduler;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 36
    new-instance v0, Lcom/google/firebase/storage/StorageTaskScheduler;

    invoke-direct {v0}, Lcom/google/firebase/storage/StorageTaskScheduler;-><init>()V

    sput-object v0, Lcom/google/firebase/storage/StorageTaskScheduler;->sInstance:Lcom/google/firebase/storage/StorageTaskScheduler;

    .line 38
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sput-object v0, Lcom/google/firebase/storage/StorageTaskScheduler;->mCommandQueue:Ljava/util/concurrent/BlockingQueue;

    .line 39
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Lcom/google/firebase/storage/StorageTaskScheduler;->mCommandQueue:Ljava/util/concurrent/BlockingQueue;

    new-instance v8, Lcom/google/firebase/storage/StorageTaskScheduler$StorageThreadFactory;

    const-string v1, "Command-"

    invoke-direct {v8, v1}, Lcom/google/firebase/storage/StorageTaskScheduler$StorageThreadFactory;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x5

    const/4 v3, 0x5

    const-wide/16 v4, 0x5

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcom/google/firebase/storage/StorageTaskScheduler;->COMMAND_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 43
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sput-object v0, Lcom/google/firebase/storage/StorageTaskScheduler;->mUploadQueue:Ljava/util/concurrent/BlockingQueue;

    .line 44
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Lcom/google/firebase/storage/StorageTaskScheduler;->mUploadQueue:Ljava/util/concurrent/BlockingQueue;

    new-instance v8, Lcom/google/firebase/storage/StorageTaskScheduler$StorageThreadFactory;

    const-string v1, "Upload-"

    invoke-direct {v8, v1}, Lcom/google/firebase/storage/StorageTaskScheduler$StorageThreadFactory;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x2

    const/4 v3, 0x2

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcom/google/firebase/storage/StorageTaskScheduler;->UPLOAD_QUEUE_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 48
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sput-object v0, Lcom/google/firebase/storage/StorageTaskScheduler;->mDownloadQueue:Ljava/util/concurrent/BlockingQueue;

    .line 49
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Lcom/google/firebase/storage/StorageTaskScheduler;->mDownloadQueue:Ljava/util/concurrent/BlockingQueue;

    new-instance v8, Lcom/google/firebase/storage/StorageTaskScheduler$StorageThreadFactory;

    const-string v1, "Download-"

    invoke-direct {v8, v1}, Lcom/google/firebase/storage/StorageTaskScheduler$StorageThreadFactory;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x3

    const/4 v3, 0x3

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcom/google/firebase/storage/StorageTaskScheduler;->DOWNLOAD_QUEUE_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 53
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sput-object v0, Lcom/google/firebase/storage/StorageTaskScheduler;->mCallbackQueue:Ljava/util/concurrent/BlockingQueue;

    .line 54
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Lcom/google/firebase/storage/StorageTaskScheduler;->mCallbackQueue:Ljava/util/concurrent/BlockingQueue;

    new-instance v8, Lcom/google/firebase/storage/StorageTaskScheduler$StorageThreadFactory;

    const-string v1, "Callbacks-"

    invoke-direct {v8, v1}, Lcom/google/firebase/storage/StorageTaskScheduler$StorageThreadFactory;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcom/google/firebase/storage/StorageTaskScheduler;->CALLBACK_QUEUE_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 59
    sget-object v0, Lcom/google/firebase/storage/StorageTaskScheduler;->COMMAND_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 60
    sget-object v0, Lcom/google/firebase/storage/StorageTaskScheduler;->UPLOAD_QUEUE_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 61
    sget-object v0, Lcom/google/firebase/storage/StorageTaskScheduler;->DOWNLOAD_QUEUE_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 62
    sget-object v0, Lcom/google/firebase/storage/StorageTaskScheduler;->CALLBACK_QUEUE_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/google/firebase/storage/StorageTaskScheduler;
    .registers 1

    .line 66
    sget-object v0, Lcom/google/firebase/storage/StorageTaskScheduler;->sInstance:Lcom/google/firebase/storage/StorageTaskScheduler;

    return-object v0
.end method


# virtual methods
.method public getCommandPoolExecutor()Ljava/util/concurrent/Executor;
    .registers 2

    .line 86
    sget-object v0, Lcom/google/firebase/storage/StorageTaskScheduler;->COMMAND_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method

.method public scheduleCallback(Ljava/lang/Runnable;)V
    .registers 3

    .line 82
    sget-object v0, Lcom/google/firebase/storage/StorageTaskScheduler;->CALLBACK_QUEUE_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public scheduleCommand(Ljava/lang/Runnable;)V
    .registers 3

    .line 70
    sget-object v0, Lcom/google/firebase/storage/StorageTaskScheduler;->COMMAND_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public scheduleDownload(Ljava/lang/Runnable;)V
    .registers 3

    .line 78
    sget-object v0, Lcom/google/firebase/storage/StorageTaskScheduler;->DOWNLOAD_QUEUE_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public scheduleUpload(Ljava/lang/Runnable;)V
    .registers 3

    .line 74
    sget-object v0, Lcom/google/firebase/storage/StorageTaskScheduler;->UPLOAD_QUEUE_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
