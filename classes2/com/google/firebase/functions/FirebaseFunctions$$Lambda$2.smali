.class final synthetic Lcom/google/firebase/functions/FirebaseFunctions$$Lambda$2;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-functions@@19.0.2"

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;


# instance fields
.field private final arg$1:Lcom/google/firebase/functions/FirebaseFunctions;


# direct methods
.method private constructor <init>(Lcom/google/firebase/functions/FirebaseFunctions;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/functions/FirebaseFunctions$$Lambda$2;->arg$1:Lcom/google/firebase/functions/FirebaseFunctions;

    return-void
.end method

.method public static lambdaFactory$(Lcom/google/firebase/functions/FirebaseFunctions;)Lcom/google/android/gms/tasks/Continuation;
    .registers 2

    new-instance v0, Lcom/google/firebase/functions/FirebaseFunctions$$Lambda$2;

    invoke-direct {v0, p0}, Lcom/google/firebase/functions/FirebaseFunctions$$Lambda$2;-><init>(Lcom/google/firebase/functions/FirebaseFunctions;)V

    return-object v0
.end method


# virtual methods
.method public then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/firebase/functions/FirebaseFunctions$$Lambda$2;->arg$1:Lcom/google/firebase/functions/FirebaseFunctions;

    invoke-static {v0, p1}, Lcom/google/firebase/functions/FirebaseFunctions;->lambda$call$1(Lcom/google/firebase/functions/FirebaseFunctions;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
