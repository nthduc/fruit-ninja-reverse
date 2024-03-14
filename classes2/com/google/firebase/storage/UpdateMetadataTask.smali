.class Lcom/google/firebase/storage/UpdateMetadataTask;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-storage@@19.1.1"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String; = "UpdateMetadataTask"


# instance fields
.field private final mNewMetadata:Lcom/google/firebase/storage/StorageMetadata;

.field private final mPendingResult:Lcom/google/android/gms/tasks/TaskCompletionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Lcom/google/firebase/storage/StorageMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private mResultMetadata:Lcom/google/firebase/storage/StorageMetadata;

.field private mSender:Lcom/google/firebase/storage/internal/ExponentialBackoffSender;

.field private final mStorageRef:Lcom/google/firebase/storage/StorageReference;


# direct methods
.method public constructor <init>(Lcom/google/firebase/storage/StorageReference;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/firebase/storage/StorageMetadata;)V
    .registers 7
    .param p1    # Lcom/google/firebase/storage/StorageReference;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/tasks/TaskCompletionSource;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/firebase/storage/StorageMetadata;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/storage/StorageReference;",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Lcom/google/firebase/storage/StorageMetadata;",
            ">;",
            "Lcom/google/firebase/storage/StorageMetadata;",
            ")V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/google/firebase/storage/UpdateMetadataTask;->mResultMetadata:Lcom/google/firebase/storage/StorageMetadata;

    .line 39
    iput-object p1, p0, Lcom/google/firebase/storage/UpdateMetadataTask;->mStorageRef:Lcom/google/firebase/storage/StorageReference;

    .line 40
    iput-object p2, p0, Lcom/google/firebase/storage/UpdateMetadataTask;->mPendingResult:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 41
    iput-object p3, p0, Lcom/google/firebase/storage/UpdateMetadataTask;->mNewMetadata:Lcom/google/firebase/storage/StorageMetadata;

    .line 43
    iget-object p1, p0, Lcom/google/firebase/storage/UpdateMetadataTask;->mStorageRef:Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {p1}, Lcom/google/firebase/storage/StorageReference;->getStorage()Lcom/google/firebase/storage/FirebaseStorage;

    move-result-object p1

    .line 44
    new-instance p2, Lcom/google/firebase/storage/internal/ExponentialBackoffSender;

    .line 46
    invoke-virtual {p1}, Lcom/google/firebase/storage/FirebaseStorage;->getApp()Lcom/google/firebase/FirebaseApp;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    .line 47
    invoke-virtual {p1}, Lcom/google/firebase/storage/FirebaseStorage;->getAuthProvider()Lcom/google/firebase/auth/internal/InternalAuthProvider;

    move-result-object v0

    .line 48
    invoke-virtual {p1}, Lcom/google/firebase/storage/FirebaseStorage;->getMaxOperationRetryTimeMillis()J

    move-result-wide v1

    invoke-direct {p2, p3, v0, v1, v2}, Lcom/google/firebase/storage/internal/ExponentialBackoffSender;-><init>(Landroid/content/Context;Lcom/google/firebase/auth/internal/InternalAuthProvider;J)V

    iput-object p2, p0, Lcom/google/firebase/storage/UpdateMetadataTask;->mSender:Lcom/google/firebase/storage/internal/ExponentialBackoffSender;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 53
    new-instance v0, Lcom/google/firebase/storage/network/UpdateMetadataNetworkRequest;

    iget-object v1, p0, Lcom/google/firebase/storage/UpdateMetadataTask;->mStorageRef:Lcom/google/firebase/storage/StorageReference;

    .line 55
    invoke-virtual {v1}, Lcom/google/firebase/storage/StorageReference;->getStorageUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/storage/UpdateMetadataTask;->mStorageRef:Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {v2}, Lcom/google/firebase/storage/StorageReference;->getApp()Lcom/google/firebase/FirebaseApp;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/storage/UpdateMetadataTask;->mNewMetadata:Lcom/google/firebase/storage/StorageMetadata;

    invoke-virtual {v3}, Lcom/google/firebase/storage/StorageMetadata;->createJSONObject()Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/firebase/storage/network/UpdateMetadataNetworkRequest;-><init>(Landroid/net/Uri;Lcom/google/firebase/FirebaseApp;Lorg/json/JSONObject;)V

    .line 57
    iget-object v1, p0, Lcom/google/firebase/storage/UpdateMetadataTask;->mSender:Lcom/google/firebase/storage/internal/ExponentialBackoffSender;

    invoke-virtual {v1, v0}, Lcom/google/firebase/storage/internal/ExponentialBackoffSender;->sendWithExponentialBackoff(Lcom/google/firebase/storage/network/NetworkRequest;)V

    .line 58
    invoke-virtual {v0}, Lcom/google/firebase/storage/network/NetworkRequest;->isResultSuccess()Z

    move-result v1

    if-eqz v1, :cond_59

    .line 60
    :try_start_22
    new-instance v1, Lcom/google/firebase/storage/StorageMetadata$Builder;

    invoke-virtual {v0}, Lcom/google/firebase/storage/network/NetworkRequest;->getResultBody()Lorg/json/JSONObject;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/storage/UpdateMetadataTask;->mStorageRef:Lcom/google/firebase/storage/StorageReference;

    invoke-direct {v1, v2, v3}, Lcom/google/firebase/storage/StorageMetadata$Builder;-><init>(Lorg/json/JSONObject;Lcom/google/firebase/storage/StorageReference;)V

    invoke-virtual {v1}, Lcom/google/firebase/storage/StorageMetadata$Builder;->build()Lcom/google/firebase/storage/StorageMetadata;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/storage/UpdateMetadataTask;->mResultMetadata:Lcom/google/firebase/storage/StorageMetadata;
    :try_end_33
    .catch Lorg/json/JSONException; {:try_start_22 .. :try_end_33} :catch_34

    goto :goto_59

    :catch_34
    move-exception v1

    .line 62
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to parse a valid JSON object from resulting metadata:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v0}, Lcom/google/firebase/storage/network/NetworkRequest;->getRawResult()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "UpdateMetadataTask"

    .line 62
    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 67
    iget-object v0, p0, Lcom/google/firebase/storage/UpdateMetadataTask;->mPendingResult:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {v1}, Lcom/google/firebase/storage/StorageException;->fromException(Ljava/lang/Throwable;)Lcom/google/firebase/storage/StorageException;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    return-void

    .line 72
    :cond_59
    :goto_59
    iget-object v1, p0, Lcom/google/firebase/storage/UpdateMetadataTask;->mPendingResult:Lcom/google/android/gms/tasks/TaskCompletionSource;

    if-eqz v1, :cond_62

    .line 73
    iget-object v2, p0, Lcom/google/firebase/storage/UpdateMetadataTask;->mResultMetadata:Lcom/google/firebase/storage/StorageMetadata;

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/storage/network/NetworkRequest;->completeTask(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/Object;)V

    :cond_62
    return-void
.end method
