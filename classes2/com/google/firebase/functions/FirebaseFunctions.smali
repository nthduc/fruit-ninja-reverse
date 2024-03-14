.class public Lcom/google/firebase/functions/FirebaseFunctions;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-functions@@19.0.2"


# static fields
.field private static providerInstallStarted:Z

.field private static final providerInstalled:Lcom/google/android/gms/tasks/TaskCompletionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final client:Lokhttp3/OkHttpClient;

.field private final contextProvider:Lcom/google/firebase/functions/ContextProvider;

.field private final projectId:Ljava/lang/String;

.field private final region:Ljava/lang/String;

.field private final serializer:Lcom/google/firebase/functions/Serializer;

.field private urlFormat:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 51
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    sput-object v0, Lcom/google/firebase/functions/FirebaseFunctions;->providerInstalled:Lcom/google/android/gms/tasks/TaskCompletionSource;

    const/4 v0, 0x0

    .line 57
    sput-boolean v0, Lcom/google/firebase/functions/FirebaseFunctions;->providerInstallStarted:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/functions/ContextProvider;)V
    .registers 6

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "https://%1$s-%2$s.cloudfunctions.net/%3$s"

    .line 75
    iput-object v0, p0, Lcom/google/firebase/functions/FirebaseFunctions;->urlFormat:Ljava/lang/String;

    .line 79
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/functions/FirebaseFunctions;->client:Lokhttp3/OkHttpClient;

    .line 80
    new-instance v0, Lcom/google/firebase/functions/Serializer;

    invoke-direct {v0}, Lcom/google/firebase/functions/Serializer;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/functions/FirebaseFunctions;->serializer:Lcom/google/firebase/functions/Serializer;

    .line 81
    invoke-static {p4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/google/firebase/functions/ContextProvider;

    iput-object p4, p0, Lcom/google/firebase/functions/FirebaseFunctions;->contextProvider:Lcom/google/firebase/functions/ContextProvider;

    .line 82
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/google/firebase/functions/FirebaseFunctions;->projectId:Ljava/lang/String;

    .line 83
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/google/firebase/functions/FirebaseFunctions;->region:Ljava/lang/String;

    .line 85
    invoke-static {p1}, Lcom/google/firebase/functions/FirebaseFunctions;->maybeInstallProviders(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/firebase/functions/FirebaseFunctions;)Lcom/google/firebase/functions/Serializer;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/google/firebase/functions/FirebaseFunctions;->serializer:Lcom/google/firebase/functions/Serializer;

    return-object p0
.end method

.method static synthetic access$100()Lcom/google/android/gms/tasks/TaskCompletionSource;
    .registers 1

    .line 48
    sget-object v0, Lcom/google/firebase/functions/FirebaseFunctions;->providerInstalled:Lcom/google/android/gms/tasks/TaskCompletionSource;

    return-object v0
.end method

.method private call(Ljava/lang/String;Ljava/lang/Object;Lcom/google/firebase/functions/HttpsCallableContext;Lcom/google/firebase/functions/HttpsCallOptions;)Lcom/google/android/gms/tasks/Task;
    .registers 7
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Lcom/google/firebase/functions/HttpsCallableContext;",
            "Lcom/google/firebase/functions/HttpsCallOptions;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/functions/HttpsCallableResult;",
            ">;"
        }
    .end annotation

    const-string v0, "name cannot be null"

    .line 235
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    invoke-virtual {p0, p1}, Lcom/google/firebase/functions/FirebaseFunctions;->getURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1

    .line 238
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 240
    iget-object v1, p0, Lcom/google/firebase/functions/FirebaseFunctions;->serializer:Lcom/google/firebase/functions/Serializer;

    invoke-virtual {v1, p2}, Lcom/google/firebase/functions/Serializer;->encode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    const-string v1, "data"

    .line 241
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-string v0, "application/json"

    .line 244
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    .line 245
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p2

    .line 247
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/net/URL;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 248
    invoke-virtual {p3}, Lcom/google/firebase/functions/HttpsCallableContext;->getAuthToken()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_5a

    .line 249
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Bearer "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/google/firebase/functions/HttpsCallableContext;->getAuthToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Authorization"

    invoke-virtual {p1, v0, p2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 251
    :cond_5a
    invoke-virtual {p3}, Lcom/google/firebase/functions/HttpsCallableContext;->getInstanceIdToken()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_6a

    .line 252
    invoke-virtual {p3}, Lcom/google/firebase/functions/HttpsCallableContext;->getInstanceIdToken()Ljava/lang/String;

    move-result-object p2

    const-string p3, "Firebase-Instance-ID-Token"

    invoke-virtual {p1, p3, p2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 255
    :cond_6a
    iget-object p2, p0, Lcom/google/firebase/functions/FirebaseFunctions;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {p4, p2}, Lcom/google/firebase/functions/HttpsCallOptions;->apply(Lokhttp3/OkHttpClient;)Lokhttp3/OkHttpClient;

    move-result-object p2

    .line 256
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {p2, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    .line 258
    new-instance p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {p2}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 259
    new-instance p3, Lcom/google/firebase/functions/FirebaseFunctions$2;

    invoke-direct {p3, p0, p2}, Lcom/google/firebase/functions/FirebaseFunctions$2;-><init>(Lcom/google/firebase/functions/FirebaseFunctions;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-interface {p1, p3}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 315
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public static getInstance()Lcom/google/firebase/functions/FirebaseFunctions;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 165
    invoke-static {}, Lcom/google/firebase/FirebaseApp;->getInstance()Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    const-string v1, "us-central1"

    invoke-static {v0, v1}, Lcom/google/firebase/functions/FirebaseFunctions;->getInstance(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;)Lcom/google/firebase/functions/FirebaseFunctions;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/functions/FirebaseFunctions;
    .registers 2
    .param p0    # Lcom/google/firebase/FirebaseApp;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "us-central1"

    .line 149
    invoke-static {p0, v0}, Lcom/google/firebase/functions/FirebaseFunctions;->getInstance(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;)Lcom/google/firebase/functions/FirebaseFunctions;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;)Lcom/google/firebase/functions/FirebaseFunctions;
    .registers 3
    .param p0    # Lcom/google/firebase/FirebaseApp;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "You must call FirebaseApp.initializeApp first."

    .line 133
    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    const-class v0, Lcom/google/firebase/functions/FunctionsMultiResourceComponent;

    invoke-virtual {p0, v0}, Lcom/google/firebase/FirebaseApp;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/functions/FunctionsMultiResourceComponent;

    const-string v0, "Functions component does not exist."

    .line 137
    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    invoke-virtual {p0, p1}, Lcom/google/firebase/functions/FunctionsMultiResourceComponent;->get(Ljava/lang/String;)Lcom/google/firebase/functions/FirebaseFunctions;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/google/firebase/functions/FirebaseFunctions;
    .registers 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 159
    invoke-static {}, Lcom/google/firebase/FirebaseApp;->getInstance()Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/google/firebase/functions/FirebaseFunctions;->getInstance(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;)Lcom/google/firebase/functions/FirebaseFunctions;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$call$1(Lcom/google/firebase/functions/FirebaseFunctions;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 211
    iget-object p0, p0, Lcom/google/firebase/functions/FirebaseFunctions;->contextProvider:Lcom/google/firebase/functions/ContextProvider;

    invoke-interface {p0}, Lcom/google/firebase/functions/ContextProvider;->getContext()Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$call$2(Lcom/google/firebase/functions/FirebaseFunctions;Ljava/lang/String;Ljava/lang/Object;Lcom/google/firebase/functions/HttpsCallOptions;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 214
    invoke-virtual {p4}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_f

    .line 215
    invoke-virtual {p4}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0

    .line 217
    :cond_f
    invoke-virtual {p4}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/google/firebase/functions/HttpsCallableContext;

    .line 218
    invoke-direct {p0, p1, p2, p4, p3}, Lcom/google/firebase/functions/FirebaseFunctions;->call(Ljava/lang/String;Ljava/lang/Object;Lcom/google/firebase/functions/HttpsCallableContext;Lcom/google/firebase/functions/HttpsCallOptions;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$maybeInstallProviders$0(Landroid/content/Context;)V
    .registers 2

    .line 106
    new-instance v0, Lcom/google/firebase/functions/FirebaseFunctions$1;

    invoke-direct {v0}, Lcom/google/firebase/functions/FirebaseFunctions$1;-><init>()V

    invoke-static {p0, v0}, Lcom/google/android/gms/security/ProviderInstaller;->installIfNeededAsync(Landroid/content/Context;Lcom/google/android/gms/security/ProviderInstaller$ProviderInstallListener;)V

    return-void
.end method

.method private static maybeInstallProviders(Landroid/content/Context;)V
    .registers 3

    .line 95
    sget-object v0, Lcom/google/firebase/functions/FirebaseFunctions;->providerInstalled:Lcom/google/android/gms/tasks/TaskCompletionSource;

    monitor-enter v0

    .line 96
    :try_start_3
    sget-boolean v1, Lcom/google/firebase/functions/FirebaseFunctions;->providerInstallStarted:Z

    if-eqz v1, :cond_9

    .line 97
    monitor-exit v0

    return-void

    :cond_9
    const/4 v1, 0x1

    .line 99
    sput-boolean v1, Lcom/google/firebase/functions/FirebaseFunctions;->providerInstallStarted:Z

    .line 100
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_1e

    .line 104
    invoke-static {p0}, Lcom/google/firebase/functions/FirebaseFunctions$$Lambda$1;->lambdaFactory$(Landroid/content/Context;)Ljava/lang/Runnable;

    move-result-object v0

    .line 121
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-direct {v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 122
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_1e
    move-exception p0

    .line 100
    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw p0
.end method


# virtual methods
.method call(Ljava/lang/String;Ljava/lang/Object;Lcom/google/firebase/functions/HttpsCallOptions;)Lcom/google/android/gms/tasks/Task;
    .registers 6
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Lcom/google/firebase/functions/HttpsCallOptions;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/functions/HttpsCallableResult;",
            ">;"
        }
    .end annotation

    .line 209
    sget-object v0, Lcom/google/firebase/functions/FirebaseFunctions;->providerInstalled:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 210
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    invoke-static {p0}, Lcom/google/firebase/functions/FirebaseFunctions$$Lambda$2;->lambdaFactory$(Lcom/google/firebase/functions/FirebaseFunctions;)Lcom/google/android/gms/tasks/Continuation;

    move-result-object v1

    .line 211
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    invoke-static {p0, p1, p2, p3}, Lcom/google/firebase/functions/FirebaseFunctions$$Lambda$3;->lambdaFactory$(Lcom/google/firebase/functions/FirebaseFunctions;Ljava/lang/String;Ljava/lang/Object;Lcom/google/firebase/functions/HttpsCallOptions;)Lcom/google/android/gms/tasks/Continuation;

    move-result-object p1

    .line 212
    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public getHttpsCallable(Ljava/lang/String;)Lcom/google/firebase/functions/HttpsCallableReference;
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 171
    new-instance v0, Lcom/google/firebase/functions/HttpsCallableReference;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/functions/HttpsCallableReference;-><init>(Lcom/google/firebase/functions/FirebaseFunctions;Ljava/lang/String;)V

    return-object v0
.end method

.method getURL(Ljava/lang/String;)Ljava/net/URL;
    .registers 6
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 182
    iget-object v0, p0, Lcom/google/firebase/functions/FirebaseFunctions;->urlFormat:Ljava/lang/String;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/firebase/functions/FirebaseFunctions;->region:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/google/firebase/functions/FirebaseFunctions;->projectId:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 184
    :try_start_16
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/net/MalformedURLException; {:try_start_16 .. :try_end_1b} :catch_1c

    return-object v0

    :catch_1c
    move-exception p1

    .line 186
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public useFunctionsEmulator(Ljava/lang/String;)V
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "origin cannot be null"

    .line 197
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/%2$s/%1$s/%3$s"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/functions/FirebaseFunctions;->urlFormat:Ljava/lang/String;

    return-void
.end method
