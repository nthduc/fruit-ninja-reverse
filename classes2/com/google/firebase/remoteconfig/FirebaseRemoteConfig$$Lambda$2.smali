.class final synthetic Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig$$Lambda$2;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-config@@19.1.4"

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;


# instance fields
.field private final arg$1:Lcom/google/android/gms/tasks/Task;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/tasks/Task;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig$$Lambda$2;->arg$1:Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public static lambdaFactory$(Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Continuation;
    .registers 2

    new-instance v0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig$$Lambda$2;

    invoke-direct {v0, p0}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig$$Lambda$2;-><init>(Lcom/google/android/gms/tasks/Task;)V

    return-object v0
.end method


# virtual methods
.method public then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig$$Lambda$2;->arg$1:Lcom/google/android/gms/tasks/Task;

    invoke-static {v0, p1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->lambda$ensureInitialized$0(Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/tasks/Task;)Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigInfo;

    move-result-object p1

    return-object p1
.end method
