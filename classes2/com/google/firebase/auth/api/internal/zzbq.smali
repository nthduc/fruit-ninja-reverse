.class final Lcom/google/firebase/auth/api/internal/zzbq;
.super Lcom/google/firebase/auth/api/internal/zzfe;
.source "com.google.firebase:firebase-auth@@19.3.1"


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/firebase/auth/api/internal/zzfe<",
        "Lcom/google/firebase/auth/AuthResult;",
        "Lcom/google/firebase/auth/internal/zza;",
        ">;"
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/firebase_auth/zzfy;


# direct methods
.method public constructor <init>(Lcom/google/firebase/auth/AuthCredential;)V
    .registers 3

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0}, Lcom/google/firebase/auth/api/internal/zzfe;-><init>(I)V

    const-string v0, "credential cannot be null"

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 4
    invoke-static {p1, v0}, Lcom/google/firebase/auth/internal/zzc;->zza(Lcom/google/firebase/auth/AuthCredential;Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_auth/zzfy;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/auth/api/internal/zzbq;->zza:Lcom/google/android/gms/internal/firebase_auth/zzfy;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/String;
    .registers 2

    const-string v0, "linkFederatedCredential"

    return-object v0
.end method

.method final synthetic zza(Lcom/google/firebase/auth/api/internal/zzef;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    new-instance v0, Lcom/google/firebase/auth/api/internal/zzfo;

    invoke-direct {v0, p0, p2}, Lcom/google/firebase/auth/api/internal/zzfo;-><init>(Lcom/google/firebase/auth/api/internal/zzfe;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 21
    iput-object v0, p0, Lcom/google/firebase/auth/api/internal/zzfe;->zzh:Lcom/google/firebase/auth/api/internal/zzff;

    .line 22
    iget-boolean p2, p0, Lcom/google/firebase/auth/api/internal/zzbq;->zzu:Z

    if-eqz p2, :cond_1d

    .line 24
    invoke-interface {p1}, Lcom/google/firebase/auth/api/internal/zzef;->zza()Lcom/google/firebase/auth/api/internal/zzep;

    move-result-object p1

    iget-object p2, p0, Lcom/google/firebase/auth/api/internal/zzbq;->zze:Lcom/google/firebase/auth/FirebaseUser;

    .line 25
    invoke-virtual {p2}, Lcom/google/firebase/auth/FirebaseUser;->zzf()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzbq;->zza:Lcom/google/android/gms/internal/firebase_auth/zzfy;

    iget-object v1, p0, Lcom/google/firebase/auth/api/internal/zzbq;->zzc:Lcom/google/firebase/auth/api/internal/zzfg;

    .line 26
    invoke-interface {p1, p2, v0, v1}, Lcom/google/firebase/auth/api/internal/zzep;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase_auth/zzfy;Lcom/google/firebase/auth/api/internal/zzeo;)V

    return-void

    .line 28
    :cond_1d
    invoke-interface {p1}, Lcom/google/firebase/auth/api/internal/zzef;->zza()Lcom/google/firebase/auth/api/internal/zzep;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/firebase_auth/zzct;

    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzbq;->zze:Lcom/google/firebase/auth/FirebaseUser;

    .line 29
    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseUser;->zzf()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/auth/api/internal/zzbq;->zza:Lcom/google/android/gms/internal/firebase_auth/zzfy;

    invoke-direct {p2, v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzct;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/firebase_auth/zzfy;)V

    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzbq;->zzc:Lcom/google/firebase/auth/api/internal/zzfg;

    .line 30
    invoke-interface {p1, p2, v0}, Lcom/google/firebase/auth/api/internal/zzep;->zza(Lcom/google/android/gms/internal/firebase_auth/zzct;Lcom/google/firebase/auth/api/internal/zzeo;)V

    return-void
.end method

.method public final zzb()Lcom/google/android/gms/common/api/internal/TaskApiCall;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/common/api/internal/TaskApiCall<",
            "Lcom/google/firebase/auth/api/internal/zzef;",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    .line 7
    invoke-static {}, Lcom/google/android/gms/common/api/internal/TaskApiCall;->builder()Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->setAutoResolveMissingFeatures(Z)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object v0

    .line 9
    iget-boolean v2, p0, Lcom/google/firebase/auth/api/internal/zzbq;->zzu:Z

    if-nez v2, :cond_1a

    iget-boolean v2, p0, Lcom/google/firebase/auth/api/internal/zzbq;->zzv:Z

    if-eqz v2, :cond_12

    goto :goto_1a

    :cond_12
    const/4 v2, 0x1

    .line 11
    new-array v2, v2, [Lcom/google/android/gms/common/Feature;

    sget-object v3, Lcom/google/android/gms/internal/firebase_auth/zze;->zza:Lcom/google/android/gms/common/Feature;

    aput-object v3, v2, v1

    goto :goto_1b

    :cond_1a
    :goto_1a
    const/4 v2, 0x0

    .line 12
    :goto_1b
    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->setFeatures([Lcom/google/android/gms/common/Feature;)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/auth/api/internal/zzbp;

    invoke-direct {v1, p0}, Lcom/google/firebase/auth/api/internal/zzbp;-><init>(Lcom/google/firebase/auth/api/internal/zzbq;)V

    .line 13
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->run(Lcom/google/android/gms/common/api/internal/RemoteCall;)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->build()Lcom/google/android/gms/common/api/internal/TaskApiCall;

    move-result-object v0

    return-object v0
.end method

.method public final zze()V
    .registers 4

    .line 16
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzbq;->zzd:Lcom/google/firebase/FirebaseApp;

    iget-object v1, p0, Lcom/google/firebase/auth/api/internal/zzbq;->zzl:Lcom/google/android/gms/internal/firebase_auth/zzew;

    invoke-static {v0, v1}, Lcom/google/firebase/auth/api/internal/zzau;->zza(Lcom/google/firebase/FirebaseApp;Lcom/google/android/gms/internal/firebase_auth/zzew;)Lcom/google/firebase/auth/internal/zzn;

    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/google/firebase/auth/api/internal/zzbq;->zzf:Ljava/lang/Object;

    check-cast v1, Lcom/google/firebase/auth/internal/zza;

    iget-object v2, p0, Lcom/google/firebase/auth/api/internal/zzbq;->zzk:Lcom/google/android/gms/internal/firebase_auth/zzff;

    invoke-interface {v1, v2, v0}, Lcom/google/firebase/auth/internal/zza;->zza(Lcom/google/android/gms/internal/firebase_auth/zzff;Lcom/google/firebase/auth/FirebaseUser;)V

    .line 18
    new-instance v1, Lcom/google/firebase/auth/internal/zzh;

    invoke-direct {v1, v0}, Lcom/google/firebase/auth/internal/zzh;-><init>(Lcom/google/firebase/auth/internal/zzn;)V

    invoke-virtual {p0, v1}, Lcom/google/firebase/auth/api/internal/zzfe;->zzb(Ljava/lang/Object;)V

    return-void
.end method
