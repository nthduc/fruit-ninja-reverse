.class Lcom/google/firebase/functions/FirebaseContextProvider;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-functions@@19.0.2"

# interfaces
.implements Lcom/google/firebase/functions/ContextProvider;


# instance fields
.field private final instanceId:Lcom/google/firebase/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/inject/Provider<",
            "Lcom/google/firebase/iid/internal/FirebaseInstanceIdInternal;",
            ">;"
        }
    .end annotation
.end field

.field private final tokenProvider:Lcom/google/firebase/inject/Provider;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/inject/Provider<",
            "Lcom/google/firebase/auth/internal/InternalAuthProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/firebase/inject/Provider;Lcom/google/firebase/inject/Provider;)V
    .registers 3
    .param p1    # Lcom/google/firebase/inject/Provider;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/inject/Provider<",
            "Lcom/google/firebase/auth/internal/InternalAuthProvider;",
            ">;",
            "Lcom/google/firebase/inject/Provider<",
            "Lcom/google/firebase/iid/internal/FirebaseInstanceIdInternal;",
            ">;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/google/firebase/functions/FirebaseContextProvider;->tokenProvider:Lcom/google/firebase/inject/Provider;

    .line 34
    iput-object p2, p0, Lcom/google/firebase/functions/FirebaseContextProvider;->instanceId:Lcom/google/firebase/inject/Provider;

    return-void
.end method

.method static synthetic lambda$getContext$0(Lcom/google/firebase/functions/FirebaseContextProvider;Lcom/google/android/gms/tasks/Task;)Lcom/google/firebase/functions/HttpsCallableContext;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 52
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_11

    .line 53
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    .line 54
    instance-of v0, p1, Lcom/google/firebase/internal/api/FirebaseNoSignedInUserException;

    if-eqz v0, :cond_10

    const/4 p1, 0x0

    goto :goto_1b

    .line 57
    :cond_10
    throw p1

    .line 60
    :cond_11
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/auth/GetTokenResult;

    invoke-virtual {p1}, Lcom/google/firebase/auth/GetTokenResult;->getToken()Ljava/lang/String;

    move-result-object p1

    .line 63
    :goto_1b
    iget-object p0, p0, Lcom/google/firebase/functions/FirebaseContextProvider;->instanceId:Lcom/google/firebase/inject/Provider;

    invoke-interface {p0}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/iid/internal/FirebaseInstanceIdInternal;

    invoke-interface {p0}, Lcom/google/firebase/iid/internal/FirebaseInstanceIdInternal;->getToken()Ljava/lang/String;

    move-result-object p0

    .line 65
    new-instance v0, Lcom/google/firebase/functions/HttpsCallableContext;

    invoke-direct {v0, p1, p0}, Lcom/google/firebase/functions/HttpsCallableContext;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getContext()Lcom/google/android/gms/tasks/Task;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/functions/HttpsCallableContext;",
            ">;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/google/firebase/functions/FirebaseContextProvider;->tokenProvider:Lcom/google/firebase/inject/Provider;

    if-nez v0, :cond_23

    .line 41
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 42
    new-instance v1, Lcom/google/firebase/functions/HttpsCallableContext;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/firebase/functions/FirebaseContextProvider;->instanceId:Lcom/google/firebase/inject/Provider;

    invoke-interface {v3}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/iid/internal/FirebaseInstanceIdInternal;

    invoke-interface {v3}, Lcom/google/firebase/iid/internal/FirebaseInstanceIdInternal;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/firebase/functions/HttpsCallableContext;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 43
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0

    .line 47
    :cond_23
    invoke-interface {v0}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/auth/internal/InternalAuthProvider;

    const/4 v1, 0x0

    .line 48
    invoke-interface {v0, v1}, Lcom/google/firebase/auth/internal/InternalAuthProvider;->getAccessToken(Z)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    invoke-static {p0}, Lcom/google/firebase/functions/FirebaseContextProvider$$Lambda$1;->lambdaFactory$(Lcom/google/firebase/functions/FirebaseContextProvider;)Lcom/google/android/gms/tasks/Continuation;

    move-result-object v1

    .line 49
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->continueWith(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method
