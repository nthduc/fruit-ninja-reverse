.class final Lcom/google/firebase/auth/api/internal/zzat;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.1"

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/Continuation<",
        "TResultT;",
        "Lcom/google/android/gms/tasks/Task<",
        "TResultT;>;>;"
    }
.end annotation


# instance fields
.field private final synthetic zza:Lcom/google/firebase/auth/api/internal/zzap;

.field private final synthetic zzb:Lcom/google/firebase/auth/api/internal/zzau;


# direct methods
.method constructor <init>(Lcom/google/firebase/auth/api/internal/zzau;Lcom/google/firebase/auth/api/internal/zzap;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/firebase/auth/api/internal/zzat;->zzb:Lcom/google/firebase/auth/api/internal/zzau;

    iput-object p2, p0, Lcom/google/firebase/auth/api/internal/zzat;->zza:Lcom/google/firebase/auth/api/internal/zzap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/gms/common/api/UnsupportedApiCallException;

    if-eqz v0, :cond_14

    .line 4
    iget-object p1, p0, Lcom/google/firebase/auth/api/internal/zzat;->zzb:Lcom/google/firebase/auth/api/internal/zzau;

    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzat;->zza:Lcom/google/firebase/auth/api/internal/zzap;

    invoke-interface {v0}, Lcom/google/firebase/auth/api/internal/zzap;->zzc()Lcom/google/firebase/auth/api/internal/zzap;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/firebase/auth/api/internal/zzam;->zza(Lcom/google/firebase/auth/api/internal/zzap;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    :cond_14
    return-object p1
.end method
