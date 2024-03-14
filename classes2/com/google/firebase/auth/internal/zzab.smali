.class final Lcom/google/firebase/auth/internal/zzab;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/firebase/auth/internal/zzac;

.field private final zzb:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/firebase/auth/internal/zzac;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzab;->zza:Lcom/google/firebase/auth/internal/zzac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzab;->zzb:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 4
    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzab;->zzb:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/firebase/FirebaseApp;->getInstance(Ljava/lang/String;)Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v1

    if-eqz v1, :cond_29

    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/firebase/auth/FirebaseAuth;->getAccessToken(Z)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 8
    invoke-static {}, Lcom/google/firebase/auth/internal/zzac;->zzd()Lcom/google/android/gms/common/logging/Logger;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Token refreshing started"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/common/logging/Logger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    new-instance v1, Lcom/google/firebase/auth/internal/zzae;

    invoke-direct {v1, p0}, Lcom/google/firebase/auth/internal/zzae;-><init>(Lcom/google/firebase/auth/internal/zzab;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    :cond_29
    return-void
.end method
