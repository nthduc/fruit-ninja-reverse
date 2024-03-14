.class final synthetic Lcom/google/firebase/auth/api/internal/zzbb;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.1"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field private final zza:Lcom/google/firebase/auth/api/internal/zzbc;


# direct methods
.method constructor <init>(Lcom/google/firebase/auth/api/internal/zzbc;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/auth/api/internal/zzbb;->zza:Lcom/google/firebase/auth/api/internal/zzbc;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzbb;->zza:Lcom/google/firebase/auth/api/internal/zzbc;

    check-cast p1, Lcom/google/firebase/auth/api/internal/zzef;

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 2
    new-instance v1, Lcom/google/firebase/auth/api/internal/zzfo;

    invoke-direct {v1, v0, p2}, Lcom/google/firebase/auth/api/internal/zzfo;-><init>(Lcom/google/firebase/auth/api/internal/zzfe;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 3
    iput-object v1, v0, Lcom/google/firebase/auth/api/internal/zzfe;->zzh:Lcom/google/firebase/auth/api/internal/zzff;

    .line 4
    iget-boolean p2, v0, Lcom/google/firebase/auth/api/internal/zzbc;->zzu:Z

    if-eqz p2, :cond_27

    .line 6
    invoke-interface {p1}, Lcom/google/firebase/auth/api/internal/zzef;->zza()Lcom/google/firebase/auth/api/internal/zzep;

    move-result-object p1

    iget-object p2, v0, Lcom/google/firebase/auth/api/internal/zzbc;->zza:Lcom/google/android/gms/internal/firebase_auth/zzcf;

    .line 7
    invoke-virtual {p2}, Lcom/google/android/gms/internal/firebase_auth/zzcf;->zza()Ljava/lang/String;

    move-result-object p2

    iget-object v1, v0, Lcom/google/firebase/auth/api/internal/zzbc;->zza:Lcom/google/android/gms/internal/firebase_auth/zzcf;

    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase_auth/zzcf;->zzb()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lcom/google/firebase/auth/api/internal/zzbc;->zzc:Lcom/google/firebase/auth/api/internal/zzfg;

    .line 9
    invoke-interface {p1, p2, v1, v0}, Lcom/google/firebase/auth/api/internal/zzep;->zzc(Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/auth/api/internal/zzeo;)V

    return-void

    .line 11
    :cond_27
    invoke-interface {p1}, Lcom/google/firebase/auth/api/internal/zzef;->zza()Lcom/google/firebase/auth/api/internal/zzep;

    move-result-object p1

    iget-object p2, v0, Lcom/google/firebase/auth/api/internal/zzbc;->zza:Lcom/google/android/gms/internal/firebase_auth/zzcf;

    iget-object v0, v0, Lcom/google/firebase/auth/api/internal/zzbc;->zzc:Lcom/google/firebase/auth/api/internal/zzfg;

    .line 12
    invoke-interface {p1, p2, v0}, Lcom/google/firebase/auth/api/internal/zzep;->zza(Lcom/google/android/gms/internal/firebase_auth/zzcf;Lcom/google/firebase/auth/api/internal/zzeo;)V

    return-void
.end method
