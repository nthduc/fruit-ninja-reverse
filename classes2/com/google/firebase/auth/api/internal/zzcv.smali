.class final synthetic Lcom/google/firebase/auth/api/internal/zzcv;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.1"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field private final zza:Lcom/google/firebase/auth/api/internal/zzcw;


# direct methods
.method constructor <init>(Lcom/google/firebase/auth/api/internal/zzcw;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/auth/api/internal/zzcv;->zza:Lcom/google/firebase/auth/api/internal/zzcw;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzcv;->zza:Lcom/google/firebase/auth/api/internal/zzcw;

    check-cast p1, Lcom/google/firebase/auth/api/internal/zzef;

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/auth/api/internal/zzcw;->zza(Lcom/google/firebase/auth/api/internal/zzef;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method
