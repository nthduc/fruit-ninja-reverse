.class public final Lcom/google/firebase/auth/api/internal/zzfo;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.1"

# interfaces
.implements Lcom/google/firebase/auth/api/internal/zzff;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultT:",
        "Ljava/lang/Object;",
        "CallbackT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/firebase/auth/api/internal/zzff<",
        "TResultT;>;"
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/firebase/auth/api/internal/zzfe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/auth/api/internal/zzfe<",
            "TResultT;TCallbackT;>;"
        }
    .end annotation
.end field

.field private final zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "TResultT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/firebase/auth/api/internal/zzfe;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/api/internal/zzfe<",
            "TResultT;TCallbackT;>;",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "TResultT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/firebase/auth/api/internal/zzfo;->zza:Lcom/google/firebase/auth/api/internal/zzfe;

    .line 3
    iput-object p2, p0, Lcom/google/firebase/auth/api/internal/zzfo;->zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;Lcom/google/android/gms/common/api/Status;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResultT;",
            "Lcom/google/android/gms/common/api/Status;",
            ")V"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzfo;->zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

    const-string v1, "completion source cannot be null"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_6e

    .line 7
    iget-object p1, p0, Lcom/google/firebase/auth/api/internal/zzfo;->zza:Lcom/google/firebase/auth/api/internal/zzfe;

    iget-object p1, p1, Lcom/google/firebase/auth/api/internal/zzfe;->zzt:Lcom/google/android/gms/internal/firebase_auth/zzej;

    if-eqz p1, :cond_48

    .line 8
    iget-object p1, p0, Lcom/google/firebase/auth/api/internal/zzfo;->zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iget-object p2, p0, Lcom/google/firebase/auth/api/internal/zzfo;->zza:Lcom/google/firebase/auth/api/internal/zzfe;

    iget-object p2, p2, Lcom/google/firebase/auth/api/internal/zzfe;->zzd:Lcom/google/firebase/FirebaseApp;

    .line 9
    invoke-static {p2}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object p2

    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzfo;->zza:Lcom/google/firebase/auth/api/internal/zzfe;

    iget-object v0, v0, Lcom/google/firebase/auth/api/internal/zzfe;->zzt:Lcom/google/android/gms/internal/firebase_auth/zzej;

    .line 11
    iget-object v1, p0, Lcom/google/firebase/auth/api/internal/zzfo;->zza:Lcom/google/firebase/auth/api/internal/zzfe;

    invoke-virtual {v1}, Lcom/google/firebase/auth/api/internal/zzfe;->zza()Ljava/lang/String;

    move-result-object v1

    const-string v2, "reauthenticateWithCredential"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3c

    iget-object v1, p0, Lcom/google/firebase/auth/api/internal/zzfo;->zza:Lcom/google/firebase/auth/api/internal/zzfe;

    .line 12
    invoke-virtual {v1}, Lcom/google/firebase/auth/api/internal/zzfe;->zza()Ljava/lang/String;

    move-result-object v1

    const-string v2, "reauthenticateWithCredentialWithData"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    goto :goto_3c

    :cond_3a
    const/4 v1, 0x0

    goto :goto_40

    .line 13
    :cond_3c
    :goto_3c
    iget-object v1, p0, Lcom/google/firebase/auth/api/internal/zzfo;->zza:Lcom/google/firebase/auth/api/internal/zzfe;

    iget-object v1, v1, Lcom/google/firebase/auth/api/internal/zzfe;->zze:Lcom/google/firebase/auth/FirebaseUser;

    .line 15
    :goto_40
    invoke-static {p2, v0, v1}, Lcom/google/firebase/auth/api/internal/zzeh;->zza(Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/android/gms/internal/firebase_auth/zzej;Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/firebase/auth/FirebaseAuthMultiFactorException;

    move-result-object p2

    .line 16
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    return-void

    .line 17
    :cond_48
    iget-object p1, p0, Lcom/google/firebase/auth/api/internal/zzfo;->zza:Lcom/google/firebase/auth/api/internal/zzfe;

    iget-object p1, p1, Lcom/google/firebase/auth/api/internal/zzfe;->zzq:Lcom/google/firebase/auth/AuthCredential;

    if-eqz p1, :cond_64

    .line 18
    iget-object p1, p0, Lcom/google/firebase/auth/api/internal/zzfo;->zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzfo;->zza:Lcom/google/firebase/auth/api/internal/zzfe;

    iget-object v0, v0, Lcom/google/firebase/auth/api/internal/zzfe;->zzq:Lcom/google/firebase/auth/AuthCredential;

    iget-object v1, p0, Lcom/google/firebase/auth/api/internal/zzfo;->zza:Lcom/google/firebase/auth/api/internal/zzfe;

    iget-object v1, v1, Lcom/google/firebase/auth/api/internal/zzfe;->zzr:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/firebase/auth/api/internal/zzfo;->zza:Lcom/google/firebase/auth/api/internal/zzfe;

    iget-object v2, v2, Lcom/google/firebase/auth/api/internal/zzfe;->zzs:Ljava/lang/String;

    .line 19
    invoke-static {p2, v0, v1, v2}, Lcom/google/firebase/auth/api/internal/zzeh;->zza(Lcom/google/android/gms/common/api/Status;Lcom/google/firebase/auth/AuthCredential;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/FirebaseException;

    move-result-object p2

    .line 20
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    return-void

    .line 21
    :cond_64
    iget-object p1, p0, Lcom/google/firebase/auth/api/internal/zzfo;->zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {p2}, Lcom/google/firebase/auth/api/internal/zzeh;->zza(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/FirebaseException;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    return-void

    .line 22
    :cond_6e
    iget-object p2, p0, Lcom/google/firebase/auth/api/internal/zzfo;->zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void
.end method
