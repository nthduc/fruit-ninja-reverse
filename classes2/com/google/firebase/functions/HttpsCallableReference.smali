.class public Lcom/google/firebase/functions/HttpsCallableReference;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-functions@@19.0.2"


# instance fields
.field private final functionsClient:Lcom/google/firebase/functions/FirebaseFunctions;

.field private final name:Ljava/lang/String;

.field options:Lcom/google/firebase/functions/HttpsCallOptions;


# direct methods
.method constructor <init>(Lcom/google/firebase/functions/FirebaseFunctions;Ljava/lang/String;)V
    .registers 4

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/google/firebase/functions/HttpsCallOptions;

    invoke-direct {v0}, Lcom/google/firebase/functions/HttpsCallOptions;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/functions/HttpsCallableReference;->options:Lcom/google/firebase/functions/HttpsCallOptions;

    .line 36
    iput-object p1, p0, Lcom/google/firebase/functions/HttpsCallableReference;->functionsClient:Lcom/google/firebase/functions/FirebaseFunctions;

    .line 37
    iput-object p2, p0, Lcom/google/firebase/functions/HttpsCallableReference;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public call()Lcom/google/android/gms/tasks/Task;
    .registers 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/functions/HttpsCallableResult;",
            ">;"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/google/firebase/functions/HttpsCallableReference;->functionsClient:Lcom/google/firebase/functions/FirebaseFunctions;

    iget-object v1, p0, Lcom/google/firebase/functions/HttpsCallableReference;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/firebase/functions/HttpsCallableReference;->options:Lcom/google/firebase/functions/HttpsCallOptions;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/firebase/functions/FirebaseFunctions;->call(Ljava/lang/String;Ljava/lang/Object;Lcom/google/firebase/functions/HttpsCallOptions;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public call(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    .registers 5
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/functions/HttpsCallableResult;",
            ">;"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/google/firebase/functions/HttpsCallableReference;->functionsClient:Lcom/google/firebase/functions/FirebaseFunctions;

    iget-object v1, p0, Lcom/google/firebase/functions/HttpsCallableReference;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/firebase/functions/HttpsCallableReference;->options:Lcom/google/firebase/functions/HttpsCallOptions;

    invoke-virtual {v0, v1, p1, v2}, Lcom/google/firebase/functions/FirebaseFunctions;->call(Ljava/lang/String;Ljava/lang/Object;Lcom/google/firebase/functions/HttpsCallOptions;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public getTimeout()J
    .registers 3

    .line 121
    iget-object v0, p0, Lcom/google/firebase/functions/HttpsCallableReference;->options:Lcom/google/firebase/functions/HttpsCallOptions;

    invoke-virtual {v0}, Lcom/google/firebase/functions/HttpsCallOptions;->getTimeout()J

    move-result-wide v0

    return-wide v0
.end method

.method public setTimeout(JLjava/util/concurrent/TimeUnit;)V
    .registers 5
    .param p3    # Ljava/util/concurrent/TimeUnit;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 112
    iget-object v0, p0, Lcom/google/firebase/functions/HttpsCallableReference;->options:Lcom/google/firebase/functions/HttpsCallOptions;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/firebase/functions/HttpsCallOptions;->setTimeout(JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public withTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/google/firebase/functions/HttpsCallableReference;
    .registers 7
    .param p3    # Ljava/util/concurrent/TimeUnit;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 132
    new-instance v0, Lcom/google/firebase/functions/HttpsCallableReference;

    iget-object v1, p0, Lcom/google/firebase/functions/HttpsCallableReference;->functionsClient:Lcom/google/firebase/functions/FirebaseFunctions;

    iget-object v2, p0, Lcom/google/firebase/functions/HttpsCallableReference;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/functions/HttpsCallableReference;-><init>(Lcom/google/firebase/functions/FirebaseFunctions;Ljava/lang/String;)V

    .line 133
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/firebase/functions/HttpsCallableReference;->setTimeout(JLjava/util/concurrent/TimeUnit;)V

    return-object v0
.end method
