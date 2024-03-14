.class final synthetic Lcom/google/firebase/functions/FirebaseFunctions$$Lambda$3;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-functions@@19.0.2"

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;


# instance fields
.field private final arg$1:Lcom/google/firebase/functions/FirebaseFunctions;

.field private final arg$2:Ljava/lang/String;

.field private final arg$3:Ljava/lang/Object;

.field private final arg$4:Lcom/google/firebase/functions/HttpsCallOptions;


# direct methods
.method private constructor <init>(Lcom/google/firebase/functions/FirebaseFunctions;Ljava/lang/String;Ljava/lang/Object;Lcom/google/firebase/functions/HttpsCallOptions;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/functions/FirebaseFunctions$$Lambda$3;->arg$1:Lcom/google/firebase/functions/FirebaseFunctions;

    iput-object p2, p0, Lcom/google/firebase/functions/FirebaseFunctions$$Lambda$3;->arg$2:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/firebase/functions/FirebaseFunctions$$Lambda$3;->arg$3:Ljava/lang/Object;

    iput-object p4, p0, Lcom/google/firebase/functions/FirebaseFunctions$$Lambda$3;->arg$4:Lcom/google/firebase/functions/HttpsCallOptions;

    return-void
.end method

.method public static lambdaFactory$(Lcom/google/firebase/functions/FirebaseFunctions;Ljava/lang/String;Ljava/lang/Object;Lcom/google/firebase/functions/HttpsCallOptions;)Lcom/google/android/gms/tasks/Continuation;
    .registers 5

    new-instance v0, Lcom/google/firebase/functions/FirebaseFunctions$$Lambda$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/firebase/functions/FirebaseFunctions$$Lambda$3;-><init>(Lcom/google/firebase/functions/FirebaseFunctions;Ljava/lang/String;Ljava/lang/Object;Lcom/google/firebase/functions/HttpsCallOptions;)V

    return-object v0
.end method


# virtual methods
.method public then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .registers 6

    iget-object v0, p0, Lcom/google/firebase/functions/FirebaseFunctions$$Lambda$3;->arg$1:Lcom/google/firebase/functions/FirebaseFunctions;

    iget-object v1, p0, Lcom/google/firebase/functions/FirebaseFunctions$$Lambda$3;->arg$2:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/firebase/functions/FirebaseFunctions$$Lambda$3;->arg$3:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/firebase/functions/FirebaseFunctions$$Lambda$3;->arg$4:Lcom/google/firebase/functions/HttpsCallOptions;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/google/firebase/functions/FirebaseFunctions;->lambda$call$2(Lcom/google/firebase/functions/FirebaseFunctions;Ljava/lang/String;Ljava/lang/Object;Lcom/google/firebase/functions/HttpsCallOptions;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
