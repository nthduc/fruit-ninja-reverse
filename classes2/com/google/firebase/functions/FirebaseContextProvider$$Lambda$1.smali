.class final synthetic Lcom/google/firebase/functions/FirebaseContextProvider$$Lambda$1;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-functions@@19.0.2"

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;


# instance fields
.field private final arg$1:Lcom/google/firebase/functions/FirebaseContextProvider;


# direct methods
.method private constructor <init>(Lcom/google/firebase/functions/FirebaseContextProvider;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/functions/FirebaseContextProvider$$Lambda$1;->arg$1:Lcom/google/firebase/functions/FirebaseContextProvider;

    return-void
.end method

.method public static lambdaFactory$(Lcom/google/firebase/functions/FirebaseContextProvider;)Lcom/google/android/gms/tasks/Continuation;
    .registers 2

    new-instance v0, Lcom/google/firebase/functions/FirebaseContextProvider$$Lambda$1;

    invoke-direct {v0, p0}, Lcom/google/firebase/functions/FirebaseContextProvider$$Lambda$1;-><init>(Lcom/google/firebase/functions/FirebaseContextProvider;)V

    return-object v0
.end method


# virtual methods
.method public then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/firebase/functions/FirebaseContextProvider$$Lambda$1;->arg$1:Lcom/google/firebase/functions/FirebaseContextProvider;

    invoke-static {v0, p1}, Lcom/google/firebase/functions/FirebaseContextProvider;->lambda$getContext$0(Lcom/google/firebase/functions/FirebaseContextProvider;Lcom/google/android/gms/tasks/Task;)Lcom/google/firebase/functions/HttpsCallableContext;

    move-result-object p1

    return-object p1
.end method
