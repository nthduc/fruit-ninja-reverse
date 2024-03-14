.class final synthetic Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig$$Lambda$4;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-config@@19.1.4"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field private final arg$1:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;


# direct methods
.method private constructor <init>(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig$$Lambda$4;->arg$1:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    return-void
.end method

.method public static lambdaFactory$(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;)Lcom/google/android/gms/tasks/OnSuccessListener;
    .registers 2

    new-instance v0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig$$Lambda$4;

    invoke-direct {v0, p0}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig$$Lambda$4;-><init>(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;)V

    return-object v0
.end method


# virtual methods
.method public onSuccess(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig$$Lambda$4;->arg$1:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    check-cast p1, Lcom/google/firebase/remoteconfig/internal/ConfigContainer;

    invoke-static {v0, p1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->lambda$activateFetched$2(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;Lcom/google/firebase/remoteconfig/internal/ConfigContainer;)V

    return-void
.end method
