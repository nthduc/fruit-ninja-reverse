.class final synthetic Lcom/google/firebase/installations/FirebaseInstallations$$Lambda$3;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-installations@@16.3.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/google/firebase/installations/FirebaseInstallations;


# direct methods
.method private constructor <init>(Lcom/google/firebase/installations/FirebaseInstallations;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/installations/FirebaseInstallations$$Lambda$3;->arg$1:Lcom/google/firebase/installations/FirebaseInstallations;

    return-void
.end method

.method public static lambdaFactory$(Lcom/google/firebase/installations/FirebaseInstallations;)Ljava/lang/Runnable;
    .registers 2

    new-instance v0, Lcom/google/firebase/installations/FirebaseInstallations$$Lambda$3;

    invoke-direct {v0, p0}, Lcom/google/firebase/installations/FirebaseInstallations$$Lambda$3;-><init>(Lcom/google/firebase/installations/FirebaseInstallations;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/google/firebase/installations/FirebaseInstallations$$Lambda$3;->arg$1:Lcom/google/firebase/installations/FirebaseInstallations;

    # invokes: Lcom/google/firebase/installations/FirebaseInstallations;->doGetAuthTokenWithoutForceRefresh()V
    invoke-static {v0}, Lcom/google/firebase/installations/FirebaseInstallations;->access$lambda$2(Lcom/google/firebase/installations/FirebaseInstallations;)V

    return-void
.end method