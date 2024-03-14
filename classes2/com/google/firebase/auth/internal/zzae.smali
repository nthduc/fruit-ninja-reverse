.class final Lcom/google/firebase/auth/internal/zzae;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.1"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# instance fields
.field private final synthetic zza:Lcom/google/firebase/auth/internal/zzab;


# direct methods
.method constructor <init>(Lcom/google/firebase/auth/internal/zzab;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzae;->zza:Lcom/google/firebase/auth/internal/zzab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .registers 4

    .line 2
    instance-of p1, p1, Lcom/google/firebase/FirebaseNetworkException;

    if-eqz p1, :cond_17

    .line 3
    invoke-static {}, Lcom/google/firebase/auth/internal/zzac;->zzd()Lcom/google/android/gms/common/logging/Logger;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Failure to refresh token; scheduling refresh after failure"

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/common/logging/Logger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/google/firebase/auth/internal/zzae;->zza:Lcom/google/firebase/auth/internal/zzab;

    iget-object p1, p1, Lcom/google/firebase/auth/internal/zzab;->zza:Lcom/google/firebase/auth/internal/zzac;

    invoke-virtual {p1}, Lcom/google/firebase/auth/internal/zzac;->zzb()V

    :cond_17
    return-void
.end method
