.class public Lcom/google/firebase/storage/StorageReference;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-storage@@19.1.1"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/google/firebase/storage/StorageReference;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final TAG:Ljava/lang/String; = "StorageReference"


# instance fields
.field private final mFirebaseStorage:Lcom/google/firebase/storage/FirebaseStorage;

.field private final mStorageUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>(Landroid/net/Uri;Lcom/google/firebase/storage/FirebaseStorage;)V
    .registers 7
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/storage/FirebaseStorage;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_9

    const/4 v2, 0x1

    goto :goto_a

    :cond_9
    const/4 v2, 0x0

    :goto_a
    const-string v3, "storageUri cannot be null"

    .line 57
    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    if-eqz p2, :cond_12

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    const-string v1, "FirebaseApp cannot be null"

    .line 58
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 60
    iput-object p1, p0, Lcom/google/firebase/storage/StorageReference;->mStorageUri:Landroid/net/Uri;

    .line 61
    iput-object p2, p0, Lcom/google/firebase/storage/StorageReference;->mFirebaseStorage:Lcom/google/firebase/storage/FirebaseStorage;

    return-void
.end method

.method static synthetic access$000(Lcom/google/firebase/storage/StorageReference;Ljava/lang/Integer;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .registers 3

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/storage/StorageReference;->listHelper(Ljava/lang/Integer;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method private listHelper(Ljava/lang/Integer;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .registers 6
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/storage/ListResult;",
            ">;"
        }
    .end annotation

    .line 644
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 645
    invoke-static {}, Lcom/google/firebase/storage/StorageTaskScheduler;->getInstance()Lcom/google/firebase/storage/StorageTaskScheduler;

    move-result-object v1

    new-instance v2, Lcom/google/firebase/storage/ListTask;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/google/firebase/storage/ListTask;-><init>(Lcom/google/firebase/storage/StorageReference;Ljava/lang/Integer;Ljava/lang/String;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 646
    invoke-virtual {v1, v2}, Lcom/google/firebase/storage/StorageTaskScheduler;->scheduleCommand(Ljava/lang/Runnable;)V

    .line 647
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public child(Ljava/lang/String;)Lcom/google/firebase/storage/StorageReference;
    .registers 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 84
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "childName cannot be null or empty"

    .line 83
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 86
    invoke-static {p1}, Lcom/google/firebase/storage/internal/Slashes;->normalizeSlashes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 87
    iget-object v0, p0, Lcom/google/firebase/storage/StorageReference;->mStorageUri:Landroid/net/Uri;

    .line 88
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p1}, Lcom/google/firebase/storage/internal/Slashes;->preserveSlashEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 89
    new-instance v0, Lcom/google/firebase/storage/StorageReference;

    iget-object v1, p0, Lcom/google/firebase/storage/StorageReference;->mFirebaseStorage:Lcom/google/firebase/storage/FirebaseStorage;

    invoke-direct {v0, p1, v1}, Lcom/google/firebase/storage/StorageReference;-><init>(Landroid/net/Uri;Lcom/google/firebase/storage/FirebaseStorage;)V

    return-object v0
.end method

.method public compareTo(Lcom/google/firebase/storage/StorageReference;)I
    .registers 3
    .param p1    # Lcom/google/firebase/storage/StorageReference;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 687
    iget-object v0, p0, Lcom/google/firebase/storage/StorageReference;->mStorageUri:Landroid/net/Uri;

    iget-object p1, p1, Lcom/google/firebase/storage/StorageReference;->mStorageUri:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->compareTo(Landroid/net/Uri;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 46
    check-cast p1, Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {p0, p1}, Lcom/google/firebase/storage/StorageReference;->compareTo(Lcom/google/firebase/storage/StorageReference;)I

    move-result p1

    return p1
.end method

.method public delete()Lcom/google/android/gms/tasks/Task;
    .registers 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 533
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 534
    invoke-static {}, Lcom/google/firebase/storage/StorageTaskScheduler;->getInstance()Lcom/google/firebase/storage/StorageTaskScheduler;

    move-result-object v1

    new-instance v2, Lcom/google/firebase/storage/DeleteStorageTask;

    invoke-direct {v2, p0, v0}, Lcom/google/firebase/storage/DeleteStorageTask;-><init>(Lcom/google/firebase/storage/StorageReference;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-virtual {v1, v2}, Lcom/google/firebase/storage/StorageTaskScheduler;->scheduleCommand(Ljava/lang/Runnable;)V

    .line 535
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 671
    instance-of v0, p1, Lcom/google/firebase/storage/StorageReference;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    .line 674
    :cond_6
    check-cast p1, Lcom/google/firebase/storage/StorageReference;

    .line 675
    invoke-virtual {p1}, Lcom/google/firebase/storage/StorageReference;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageReference;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getActiveDownloadTasks()Ljava/util/List;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/storage/FileDownloadTask;",
            ">;"
        }
    .end annotation

    .line 338
    invoke-static {}, Lcom/google/firebase/storage/StorageTaskManager;->getInstance()Lcom/google/firebase/storage/StorageTaskManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/firebase/storage/StorageTaskManager;->getDownloadTasksUnder(Lcom/google/firebase/storage/StorageReference;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getActiveUploadTasks()Ljava/util/List;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/storage/UploadTask;",
            ">;"
        }
    .end annotation

    .line 332
    invoke-static {}, Lcom/google/firebase/storage/StorageTaskManager;->getInstance()Lcom/google/firebase/storage/StorageTaskManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/firebase/storage/StorageTaskManager;->getUploadTasksUnder(Lcom/google/firebase/storage/StorageReference;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getApp()Lcom/google/firebase/FirebaseApp;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 182
    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageReference;->getStorage()Lcom/google/firebase/storage/FirebaseStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/storage/FirebaseStorage;->getApp()Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    return-object v0
.end method

.method public getBucket()Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 167
    iget-object v0, p0, Lcom/google/firebase/storage/StorageReference;->mStorageUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBytes(J)Lcom/google/android/gms/tasks/Task;
    .registers 6
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/google/android/gms/tasks/Task<",
            "[B>;"
        }
    .end annotation

    .line 408
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 410
    new-instance v1, Lcom/google/firebase/storage/StreamDownloadTask;

    invoke-direct {v1, p0}, Lcom/google/firebase/storage/StreamDownloadTask;-><init>(Lcom/google/firebase/storage/StorageReference;)V

    .line 411
    new-instance v2, Lcom/google/firebase/storage/StorageReference$3;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/google/firebase/storage/StorageReference$3;-><init>(Lcom/google/firebase/storage/StorageReference;JLcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-virtual {v1, v2}, Lcom/google/firebase/storage/StreamDownloadTask;->setStreamProcessor(Lcom/google/firebase/storage/StreamDownloadTask$StreamProcessor;)Lcom/google/firebase/storage/StreamDownloadTask;

    move-result-object p1

    new-instance p2, Lcom/google/firebase/storage/StorageReference$2;

    invoke-direct {p2, p0, v0}, Lcom/google/firebase/storage/StorageReference$2;-><init>(Lcom/google/firebase/storage/StorageReference;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 438
    invoke-virtual {p1, p2}, Lcom/google/firebase/storage/StreamDownloadTask;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/firebase/storage/StorageTask;

    move-result-object p1

    new-instance p2, Lcom/google/firebase/storage/StorageReference$1;

    invoke-direct {p2, p0, v0}, Lcom/google/firebase/storage/StorageReference$1;-><init>(Lcom/google/firebase/storage/StorageReference;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 450
    invoke-virtual {p1, p2}, Lcom/google/firebase/storage/StorageTask;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/firebase/storage/StorageTask;

    .line 459
    invoke-virtual {v1}, Lcom/google/firebase/storage/StreamDownloadTask;->queue()Z

    .line 461
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public getDownloadUrl()Lcom/google/android/gms/tasks/Task;
    .registers 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 368
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 369
    invoke-static {}, Lcom/google/firebase/storage/StorageTaskScheduler;->getInstance()Lcom/google/firebase/storage/StorageTaskScheduler;

    move-result-object v1

    new-instance v2, Lcom/google/firebase/storage/GetDownloadUrlTask;

    invoke-direct {v2, p0, v0}, Lcom/google/firebase/storage/GetDownloadUrlTask;-><init>(Lcom/google/firebase/storage/StorageReference;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-virtual {v1, v2}, Lcom/google/firebase/storage/StorageTaskScheduler;->scheduleCommand(Ljava/lang/Runnable;)V

    .line 370
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public getFile(Landroid/net/Uri;)Lcom/google/firebase/storage/FileDownloadTask;
    .registers 3
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 474
    new-instance v0, Lcom/google/firebase/storage/FileDownloadTask;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/storage/FileDownloadTask;-><init>(Lcom/google/firebase/storage/StorageReference;Landroid/net/Uri;)V

    .line 475
    invoke-virtual {v0}, Lcom/google/firebase/storage/FileDownloadTask;->queue()Z

    return-object v0
.end method

.method public getFile(Ljava/io/File;)Lcom/google/firebase/storage/FileDownloadTask;
    .registers 2
    .param p1    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 488
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/firebase/storage/StorageReference;->getFile(Landroid/net/Uri;)Lcom/google/firebase/storage/FileDownloadTask;

    move-result-object p1

    return-object p1
.end method

.method public getMetadata()Lcom/google/android/gms/tasks/Task;
    .registers 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/storage/StorageMetadata;",
            ">;"
        }
    .end annotation

    .line 352
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 353
    invoke-static {}, Lcom/google/firebase/storage/StorageTaskScheduler;->getInstance()Lcom/google/firebase/storage/StorageTaskScheduler;

    move-result-object v1

    new-instance v2, Lcom/google/firebase/storage/GetMetadataTask;

    invoke-direct {v2, p0, v0}, Lcom/google/firebase/storage/GetMetadataTask;-><init>(Lcom/google/firebase/storage/StorageReference;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-virtual {v1, v2}, Lcom/google/firebase/storage/StorageTaskScheduler;->scheduleCommand(Ljava/lang/Runnable;)V

    .line 354
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/google/firebase/storage/StorageReference;->mStorageUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2f

    .line 141
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_15

    add-int/lit8 v1, v1, 0x1

    .line 143
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_15
    return-object v0
.end method

.method public getParent()Lcom/google/firebase/storage/StorageReference;
    .registers 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/google/firebase/storage/StorageReference;->mStorageUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 107
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3a

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    goto :goto_3a

    :cond_15
    const/16 v2, 0x2f

    .line 110
    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1f

    goto :goto_24

    :cond_1f
    const/4 v1, 0x0

    .line 114
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 117
    :goto_24
    iget-object v0, p0, Lcom/google/firebase/storage/StorageReference;->mStorageUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 118
    new-instance v1, Lcom/google/firebase/storage/StorageReference;

    iget-object v2, p0, Lcom/google/firebase/storage/StorageReference;->mFirebaseStorage:Lcom/google/firebase/storage/FirebaseStorage;

    invoke-direct {v1, v0, v2}, Lcom/google/firebase/storage/StorageReference;-><init>(Landroid/net/Uri;Lcom/google/firebase/storage/FirebaseStorage;)V

    return-object v1

    :cond_3a
    :goto_3a
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 155
    iget-object v0, p0, Lcom/google/firebase/storage/StorageReference;->mStorageUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lcom/google/firebase/storage/StorageReference;
    .registers 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/google/firebase/storage/StorageReference;->mStorageUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 129
    new-instance v1, Lcom/google/firebase/storage/StorageReference;

    iget-object v2, p0, Lcom/google/firebase/storage/StorageReference;->mFirebaseStorage:Lcom/google/firebase/storage/FirebaseStorage;

    invoke-direct {v1, v0, v2}, Lcom/google/firebase/storage/StorageReference;-><init>(Landroid/net/Uri;Lcom/google/firebase/storage/FirebaseStorage;)V

    return-object v1
.end method

.method public getStorage()Lcom/google/firebase/storage/FirebaseStorage;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 177
    iget-object v0, p0, Lcom/google/firebase/storage/StorageReference;->mFirebaseStorage:Lcom/google/firebase/storage/FirebaseStorage;

    return-object v0
.end method

.method getStorageUri()Landroid/net/Uri;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 655
    iget-object v0, p0, Lcom/google/firebase/storage/StorageReference;->mStorageUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getStream()Lcom/google/firebase/storage/StreamDownloadTask;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 501
    new-instance v0, Lcom/google/firebase/storage/StreamDownloadTask;

    invoke-direct {v0, p0}, Lcom/google/firebase/storage/StreamDownloadTask;-><init>(Lcom/google/firebase/storage/StorageReference;)V

    .line 502
    invoke-virtual {v0}, Lcom/google/firebase/storage/StreamDownloadTask;->queue()Z

    return-object v0
.end method

.method public getStream(Lcom/google/firebase/storage/StreamDownloadTask$StreamProcessor;)Lcom/google/firebase/storage/StreamDownloadTask;
    .registers 3
    .param p1    # Lcom/google/firebase/storage/StreamDownloadTask$StreamProcessor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 517
    new-instance v0, Lcom/google/firebase/storage/StreamDownloadTask;

    invoke-direct {v0, p0}, Lcom/google/firebase/storage/StreamDownloadTask;-><init>(Lcom/google/firebase/storage/StorageReference;)V

    .line 518
    invoke-virtual {v0, p1}, Lcom/google/firebase/storage/StreamDownloadTask;->setStreamProcessor(Lcom/google/firebase/storage/StreamDownloadTask$StreamProcessor;)Lcom/google/firebase/storage/StreamDownloadTask;

    .line 519
    invoke-virtual {v0}, Lcom/google/firebase/storage/StreamDownloadTask;->queue()Z

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 680
    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageReference;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public list(I)Lcom/google/android/gms/tasks/Task;
    .registers 6
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/storage/ListResult;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p1, :cond_6

    const/4 v2, 0x1

    goto :goto_7

    :cond_6
    const/4 v2, 0x0

    :goto_7
    const-string v3, "maxResults must be greater than zero"

    .line 558
    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    const/16 v2, 0x3e8

    if-gt p1, v2, :cond_11

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    const-string v1, "maxResults must be at most 1000"

    .line 559
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 560
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/firebase/storage/StorageReference;->listHelper(Ljava/lang/Integer;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public list(ILjava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .registers 7
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/storage/ListResult;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p1, :cond_6

    const/4 v2, 0x1

    goto :goto_7

    :cond_6
    const/4 v2, 0x0

    :goto_7
    const-string v3, "maxResults must be greater than zero"

    .line 583
    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    const/16 v2, 0x3e8

    if-gt p1, v2, :cond_12

    const/4 v2, 0x1

    goto :goto_13

    :cond_12
    const/4 v2, 0x0

    :goto_13
    const-string v3, "maxResults must be at most 1000"

    .line 584
    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    if-eqz p2, :cond_1b

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    const-string v1, "pageToken must be non-null to resume a previous list() operation"

    .line 585
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 587
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/storage/StorageReference;->listHelper(Ljava/lang/Integer;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public listAll()Lcom/google/android/gms/tasks/Task;
    .registers 11
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/storage/ListResult;",
            ">;"
        }
    .end annotation

    .line 606
    new-instance v6, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v6}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 608
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 609
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 611
    invoke-static {}, Lcom/google/firebase/storage/StorageTaskScheduler;->getInstance()Lcom/google/firebase/storage/StorageTaskScheduler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/storage/StorageTaskScheduler;->getCommandPoolExecutor()Ljava/util/concurrent/Executor;

    move-result-object v7

    const/4 v0, 0x0

    .line 612
    invoke-direct {p0, v0, v0}, Lcom/google/firebase/storage/StorageReference;->listHelper(Ljava/lang/Integer;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object v8

    .line 614
    new-instance v9, Lcom/google/firebase/storage/StorageReference$4;

    move-object v0, v9

    move-object v1, p0

    move-object v4, v7

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/storage/StorageReference$4;-><init>(Lcom/google/firebase/storage/StorageReference;Ljava/util/List;Ljava/util/List;Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 638
    invoke-virtual {v8, v7, v9}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    .line 640
    invoke-virtual {v6}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public putBytes([B)Lcom/google/firebase/storage/UploadTask;
    .registers 4
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    const-string v1, "bytes cannot be null"

    .line 200
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 202
    new-instance v0, Lcom/google/firebase/storage/UploadTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/google/firebase/storage/UploadTask;-><init>(Lcom/google/firebase/storage/StorageReference;Lcom/google/firebase/storage/StorageMetadata;[B)V

    .line 203
    invoke-virtual {v0}, Lcom/google/firebase/storage/UploadTask;->queue()Z

    return-object v0
.end method

.method public putBytes([BLcom/google/firebase/storage/StorageMetadata;)Lcom/google/firebase/storage/UploadTask;
    .registers 7
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/storage/StorageMetadata;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_6

    const/4 v2, 0x1

    goto :goto_7

    :cond_6
    const/4 v2, 0x0

    :goto_7
    const-string v3, "bytes cannot be null"

    .line 220
    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    if-eqz p2, :cond_f

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    const-string v1, "metadata cannot be null"

    .line 221
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 223
    new-instance v0, Lcom/google/firebase/storage/UploadTask;

    invoke-direct {v0, p0, p2, p1}, Lcom/google/firebase/storage/UploadTask;-><init>(Lcom/google/firebase/storage/StorageReference;Lcom/google/firebase/storage/StorageMetadata;[B)V

    .line 224
    invoke-virtual {v0}, Lcom/google/firebase/storage/UploadTask;->queue()Z

    return-object v0
.end method

.method public putFile(Landroid/net/Uri;)Lcom/google/firebase/storage/UploadTask;
    .registers 4
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    const-string v1, "uri cannot be null"

    .line 238
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 240
    new-instance v0, Lcom/google/firebase/storage/UploadTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1, v1}, Lcom/google/firebase/storage/UploadTask;-><init>(Lcom/google/firebase/storage/StorageReference;Lcom/google/firebase/storage/StorageMetadata;Landroid/net/Uri;Landroid/net/Uri;)V

    .line 241
    invoke-virtual {v0}, Lcom/google/firebase/storage/UploadTask;->queue()Z

    return-object v0
.end method

.method public putFile(Landroid/net/Uri;Lcom/google/firebase/storage/StorageMetadata;)Lcom/google/firebase/storage/UploadTask;
    .registers 7
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/storage/StorageMetadata;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_6

    const/4 v2, 0x1

    goto :goto_7

    :cond_6
    const/4 v2, 0x0

    :goto_7
    const-string v3, "uri cannot be null"

    .line 257
    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    if-eqz p2, :cond_f

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    const-string v1, "metadata cannot be null"

    .line 258
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 260
    new-instance v0, Lcom/google/firebase/storage/UploadTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, p1, v1}, Lcom/google/firebase/storage/UploadTask;-><init>(Lcom/google/firebase/storage/StorageReference;Lcom/google/firebase/storage/StorageMetadata;Landroid/net/Uri;Landroid/net/Uri;)V

    .line 261
    invoke-virtual {v0}, Lcom/google/firebase/storage/UploadTask;->queue()Z

    return-object v0
.end method

.method public putFile(Landroid/net/Uri;Lcom/google/firebase/storage/StorageMetadata;Landroid/net/Uri;)Lcom/google/firebase/storage/UploadTask;
    .registers 8
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/storage/StorageMetadata;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_6

    const/4 v2, 0x1

    goto :goto_7

    :cond_6
    const/4 v2, 0x0

    :goto_7
    const-string v3, "uri cannot be null"

    .line 280
    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    if-eqz p2, :cond_f

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    const-string v1, "metadata cannot be null"

    .line 281
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 283
    new-instance v0, Lcom/google/firebase/storage/UploadTask;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/google/firebase/storage/UploadTask;-><init>(Lcom/google/firebase/storage/StorageReference;Lcom/google/firebase/storage/StorageMetadata;Landroid/net/Uri;Landroid/net/Uri;)V

    .line 284
    invoke-virtual {v0}, Lcom/google/firebase/storage/UploadTask;->queue()Z

    return-object v0
.end method

.method public putStream(Ljava/io/InputStream;)Lcom/google/firebase/storage/UploadTask;
    .registers 4
    .param p1    # Ljava/io/InputStream;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    const-string v1, "stream cannot be null"

    .line 298
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 300
    new-instance v0, Lcom/google/firebase/storage/UploadTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/google/firebase/storage/UploadTask;-><init>(Lcom/google/firebase/storage/StorageReference;Lcom/google/firebase/storage/StorageMetadata;Ljava/io/InputStream;)V

    .line 301
    invoke-virtual {v0}, Lcom/google/firebase/storage/UploadTask;->queue()Z

    return-object v0
.end method

.method public putStream(Ljava/io/InputStream;Lcom/google/firebase/storage/StorageMetadata;)Lcom/google/firebase/storage/UploadTask;
    .registers 7
    .param p1    # Ljava/io/InputStream;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/storage/StorageMetadata;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_6

    const/4 v2, 0x1

    goto :goto_7

    :cond_6
    const/4 v2, 0x0

    :goto_7
    const-string v3, "stream cannot be null"

    .line 317
    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    if-eqz p2, :cond_f

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    const-string v1, "metadata cannot be null"

    .line 318
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 320
    new-instance v0, Lcom/google/firebase/storage/UploadTask;

    invoke-direct {v0, p0, p2, p1}, Lcom/google/firebase/storage/UploadTask;-><init>(Lcom/google/firebase/storage/StorageReference;Lcom/google/firebase/storage/StorageMetadata;Ljava/io/InputStream;)V

    .line 321
    invoke-virtual {v0}, Lcom/google/firebase/storage/UploadTask;->queue()Z

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 666
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "gs://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/firebase/storage/StorageReference;->mStorageUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/firebase/storage/StorageReference;->mStorageUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateMetadata(Lcom/google/firebase/storage/StorageMetadata;)Lcom/google/android/gms/tasks/Task;
    .registers 5
    .param p1    # Lcom/google/firebase/storage/StorageMetadata;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/storage/StorageMetadata;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/storage/StorageMetadata;",
            ">;"
        }
    .end annotation

    .line 383
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 386
    invoke-static {}, Lcom/google/firebase/storage/StorageTaskScheduler;->getInstance()Lcom/google/firebase/storage/StorageTaskScheduler;

    move-result-object v1

    new-instance v2, Lcom/google/firebase/storage/UpdateMetadataTask;

    invoke-direct {v2, p0, v0, p1}, Lcom/google/firebase/storage/UpdateMetadataTask;-><init>(Lcom/google/firebase/storage/StorageReference;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/firebase/storage/StorageMetadata;)V

    .line 387
    invoke-virtual {v1, v2}, Lcom/google/firebase/storage/StorageTaskScheduler;->scheduleCommand(Ljava/lang/Runnable;)V

    .line 388
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
