.class final Lcom/google/firebase/auth/internal/zzam;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.1"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/tasks/TaskCompletionSource;


# direct methods
.method constructor <init>(Lcom/google/firebase/auth/internal/zzaf;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .registers 3

    .line 1
    iput-object p2, p0, Lcom/google/firebase/auth/internal/zzam;->zza:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzam;->zza:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    .line 3
    invoke-static {}, Lcom/google/firebase/auth/internal/zzaf;->zzb()V

    return-void
.end method
