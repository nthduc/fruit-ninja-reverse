.class final synthetic Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler$$Lambda$4;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-config@@19.1.4"

# interfaces
.implements Lcom/google/android/gms/tasks/SuccessContinuation;


# instance fields
.field private final arg$1:Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler$FetchResponse;


# direct methods
.method private constructor <init>(Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler$FetchResponse;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler$$Lambda$4;->arg$1:Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler$FetchResponse;

    return-void
.end method

.method public static lambdaFactory$(Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler$FetchResponse;)Lcom/google/android/gms/tasks/SuccessContinuation;
    .registers 2

    new-instance v0, Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler$$Lambda$4;

    invoke-direct {v0, p0}, Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler$$Lambda$4;-><init>(Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler$FetchResponse;)V

    return-object v0
.end method


# virtual methods
.method public then(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    .registers 3

    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler$$Lambda$4;->arg$1:Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler$FetchResponse;

    check-cast p1, Lcom/google/firebase/remoteconfig/internal/ConfigContainer;

    invoke-static {v0, p1}, Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler;->lambda$fetchFromBackendAndCacheResponse$3(Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler$FetchResponse;Lcom/google/firebase/remoteconfig/internal/ConfigContainer;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
