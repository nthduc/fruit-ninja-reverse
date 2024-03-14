.class final synthetic Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig$$Lambda$11;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-config@@19.1.4"

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;


# instance fields
.field private final arg$1:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;


# direct methods
.method private constructor <init>(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig$$Lambda$11;->arg$1:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    return-void
.end method

.method public static lambdaFactory$(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;)Lcom/google/android/gms/tasks/Continuation;
    .registers 2

    new-instance v0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig$$Lambda$11;

    invoke-direct {v0, p0}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig$$Lambda$11;-><init>(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;)V

    return-object v0
.end method


# virtual methods
.method public then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig$$Lambda$11;->arg$1:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    # invokes: Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->processActivatePutTask(Lcom/google/android/gms/tasks/Task;)Z
    invoke-static {v0, p1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->access$lambda$0(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;Lcom/google/android/gms/tasks/Task;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
