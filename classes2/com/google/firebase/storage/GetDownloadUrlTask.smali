.class Lcom/google/firebase/storage/GetDownloadUrlTask;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-storage@@19.1.1"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final DOWNLOAD_TOKENS_KEY:Ljava/lang/String; = "downloadTokens"
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "GetMetadataTask"


# instance fields
.field private pendingResult:Lcom/google/android/gms/tasks/TaskCompletionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private sender:Lcom/google/firebase/storage/internal/ExponentialBackoffSender;

.field private storageRef:Lcom/google/firebase/storage/StorageReference;


# direct methods
.method constructor <init>(Lcom/google/firebase/storage/StorageReference;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .registers 7
    .param p1    # Lcom/google/firebase/storage/StorageReference;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/tasks/TaskCompletionSource;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/storage/StorageReference;",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iput-object p1, p0, Lcom/google/firebase/storage/GetDownloadUrlTask;->storageRef:Lcom/google/firebase/storage/StorageReference;

    .line 44
    iput-object p2, p0, Lcom/google/firebase/storage/GetDownloadUrlTask;->pendingResult:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 45
    invoke-virtual {p1}, Lcom/google/firebase/storage/StorageReference;->getRoot()Lcom/google/firebase/storage/StorageReference;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/firebase/storage/StorageReference;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/google/firebase/storage/StorageReference;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3d

    .line 49
    iget-object p1, p0, Lcom/google/firebase/storage/GetDownloadUrlTask;->storageRef:Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {p1}, Lcom/google/firebase/storage/StorageReference;->getStorage()Lcom/google/firebase/storage/FirebaseStorage;

    move-result-object p1

    .line 50
    new-instance p2, Lcom/google/firebase/storage/internal/ExponentialBackoffSender;

    .line 52
    invoke-virtual {p1}, Lcom/google/firebase/storage/FirebaseStorage;->getApp()Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 53
    invoke-virtual {p1}, Lcom/google/firebase/storage/FirebaseStorage;->getAuthProvider()Lcom/google/firebase/auth/internal/InternalAuthProvider;

    move-result-object v1

    .line 54
    invoke-virtual {p1}, Lcom/google/firebase/storage/FirebaseStorage;->getMaxOperationRetryTimeMillis()J

    move-result-wide v2

    invoke-direct {p2, v0, v1, v2, v3}, Lcom/google/firebase/storage/internal/ExponentialBackoffSender;-><init>(Landroid/content/Context;Lcom/google/firebase/auth/internal/InternalAuthProvider;J)V

    iput-object p2, p0, Lcom/google/firebase/storage/GetDownloadUrlTask;->sender:Lcom/google/firebase/storage/internal/ExponentialBackoffSender;

    return-void

    .line 46
    :cond_3d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "getDownloadUrl() is not supported at the root of the bucket."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private extractDownloadUrl(Lorg/json/JSONObject;)Landroid/net/Uri;
    .registers 5

    const-string v0, "downloadTokens"

    .line 58
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 60
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_35

    const/4 v0, -0x1

    const-string v1, ","

    .line 61
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    .line 62
    iget-object v0, p0, Lcom/google/firebase/storage/GetDownloadUrlTask;->storageRef:Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {v0}, Lcom/google/firebase/storage/StorageReference;->getStorageUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/storage/network/NetworkRequest;->getDefaultURL(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "alt"

    const-string v2, "media"

    .line 63
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v1, "token"

    .line 64
    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 65
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    return-object p1

    :cond_35
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 73
    new-instance v0, Lcom/google/firebase/storage/network/GetMetadataNetworkRequest;

    iget-object v1, p0, Lcom/google/firebase/storage/GetDownloadUrlTask;->storageRef:Lcom/google/firebase/storage/StorageReference;

    .line 74
    invoke-virtual {v1}, Lcom/google/firebase/storage/StorageReference;->getStorageUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/storage/GetDownloadUrlTask;->storageRef:Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {v2}, Lcom/google/firebase/storage/StorageReference;->getApp()Lcom/google/firebase/FirebaseApp;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/storage/network/GetMetadataNetworkRequest;-><init>(Landroid/net/Uri;Lcom/google/firebase/FirebaseApp;)V

    .line 76
    iget-object v1, p0, Lcom/google/firebase/storage/GetDownloadUrlTask;->sender:Lcom/google/firebase/storage/internal/ExponentialBackoffSender;

    invoke-virtual {v1, v0}, Lcom/google/firebase/storage/internal/ExponentialBackoffSender;->sendWithExponentialBackoff(Lcom/google/firebase/storage/network/NetworkRequest;)V

    .line 79
    invoke-virtual {v0}, Lcom/google/firebase/storage/network/NetworkRequest;->isResultSuccess()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 80
    invoke-virtual {v0}, Lcom/google/firebase/storage/network/NetworkRequest;->getResultBody()Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/firebase/storage/GetDownloadUrlTask;->extractDownloadUrl(Lorg/json/JSONObject;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_26

    :cond_25
    const/4 v1, 0x0

    .line 83
    :goto_26
    iget-object v2, p0, Lcom/google/firebase/storage/GetDownloadUrlTask;->pendingResult:Lcom/google/android/gms/tasks/TaskCompletionSource;

    if-eqz v2, :cond_2d

    .line 84
    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/storage/network/NetworkRequest;->completeTask(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/Object;)V

    :cond_2d
    return-void
.end method
