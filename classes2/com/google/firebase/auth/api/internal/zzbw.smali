.class final Lcom/google/firebase/auth/api/internal/zzbw;
.super Lcom/google/firebase/auth/api/internal/zzfe;
.source "com.google.firebase:firebase-auth@@19.3.1"


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/firebase/auth/api/internal/zzfe<",
        "Ljava/lang/Void;",
        "Lcom/google/firebase/auth/internal/zza;",
        ">;"
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/firebase_auth/zzdj;


# direct methods
.method public constructor <init>(Lcom/google/firebase/auth/AuthCredential;Ljava/lang/String;)V
    .registers 4
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0}, Lcom/google/firebase/auth/api/internal/zzfe;-><init>(I)V

    const-string v0, "credential cannot be null"

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p1, p2}, Lcom/google/firebase/auth/internal/zzc;->zza(Lcom/google/firebase/auth/AuthCredential;Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_auth/zzfy;

    move-result-object p1

    const/4 p2, 0x0

    .line 5
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzfy;->zza(Z)Lcom/google/android/gms/internal/firebase_auth/zzfy;

    move-result-object p1

    .line 6
    new-instance p2, Lcom/google/android/gms/internal/firebase_auth/zzdj;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/firebase_auth/zzdj;-><init>(Lcom/google/android/gms/internal/firebase_auth/zzfy;)V

    iput-object p2, p0, Lcom/google/firebase/auth/api/internal/zzbw;->zza:Lcom/google/android/gms/internal/firebase_auth/zzdj;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/String;
    .registers 2

    const-string v0, "reauthenticateWithCredential"

    return-object v0
.end method

.method final synthetic zza(Lcom/google/firebase/auth/api/internal/zzef;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    new-instance v0, Lcom/google/firebase/auth/api/internal/zzfo;

    invoke-direct {v0, p0, p2}, Lcom/google/firebase/auth/api/internal/zzfo;-><init>(Lcom/google/firebase/auth/api/internal/zzfe;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 27
    iput-object v0, p0, Lcom/google/firebase/auth/api/internal/zzfe;->zzh:Lcom/google/firebase/auth/api/internal/zzff;

    .line 28
    iget-boolean p2, p0, Lcom/google/firebase/auth/api/internal/zzbw;->zzu:Z

    if-eqz p2, :cond_1b

    .line 30
    invoke-interface {p1}, Lcom/google/firebase/auth/api/internal/zzef;->zza()Lcom/google/firebase/auth/api/internal/zzep;

    move-result-object p1

    iget-object p2, p0, Lcom/google/firebase/auth/api/internal/zzbw;->zza:Lcom/google/android/gms/internal/firebase_auth/zzdj;

    .line 31
    invoke-virtual {p2}, Lcom/google/android/gms/internal/firebase_auth/zzdj;->zza()Lcom/google/android/gms/internal/firebase_auth/zzfy;

    move-result-object p2

    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzbw;->zzc:Lcom/google/firebase/auth/api/internal/zzfg;

    .line 32
    invoke-interface {p1, p2, v0}, Lcom/google/firebase/auth/api/internal/zzep;->zza(Lcom/google/android/gms/internal/firebase_auth/zzfy;Lcom/google/firebase/auth/api/internal/zzeo;)V

    return-void

    .line 34
    :cond_1b
    invoke-interface {p1}, Lcom/google/firebase/auth/api/internal/zzef;->zza()Lcom/google/firebase/auth/api/internal/zzep;

    move-result-object p1

    iget-object p2, p0, Lcom/google/firebase/auth/api/internal/zzbw;->zza:Lcom/google/android/gms/internal/firebase_auth/zzdj;

    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzbw;->zzc:Lcom/google/firebase/auth/api/internal/zzfg;

    .line 35
    invoke-interface {p1, p2, v0}, Lcom/google/firebase/auth/api/internal/zzep;->zza(Lcom/google/android/gms/internal/firebase_auth/zzdj;Lcom/google/firebase/auth/api/internal/zzeo;)V

    return-void
.end method

.method public final zzb()Lcom/google/android/gms/common/api/internal/TaskApiCall;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/common/api/internal/TaskApiCall<",
            "Lcom/google/firebase/auth/api/internal/zzef;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 9
    invoke-static {}, Lcom/google/android/gms/common/api/internal/TaskApiCall;->builder()Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->setAutoResolveMissingFeatures(Z)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object v0

    .line 11
    iget-boolean v2, p0, Lcom/google/firebase/auth/api/internal/zzbw;->zzu:Z

    if-nez v2, :cond_1a

    iget-boolean v2, p0, Lcom/google/firebase/auth/api/internal/zzbw;->zzv:Z

    if-eqz v2, :cond_12

    goto :goto_1a

    :cond_12
    const/4 v2, 0x1

    .line 13
    new-array v2, v2, [Lcom/google/android/gms/common/Feature;

    sget-object v3, Lcom/google/android/gms/internal/firebase_auth/zze;->zza:Lcom/google/android/gms/common/Feature;

    aput-object v3, v2, v1

    goto :goto_1b

    :cond_1a
    :goto_1a
    const/4 v2, 0x0

    .line 14
    :goto_1b
    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->setFeatures([Lcom/google/android/gms/common/Feature;)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/auth/api/internal/zzbv;

    invoke-direct {v1, p0}, Lcom/google/firebase/auth/api/internal/zzbv;-><init>(Lcom/google/firebase/auth/api/internal/zzbw;)V

    .line 15
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->run(Lcom/google/android/gms/common/api/internal/RemoteCall;)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->build()Lcom/google/android/gms/common/api/internal/TaskApiCall;

    move-result-object v0

    return-object v0
.end method

.method public final zze()V
    .registers 4

    .line 18
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzbw;->zzd:Lcom/google/firebase/FirebaseApp;

    iget-object v1, p0, Lcom/google/firebase/auth/api/internal/zzbw;->zzl:Lcom/google/android/gms/internal/firebase_auth/zzew;

    invoke-static {v0, v1}, Lcom/google/firebase/auth/api/internal/zzau;->zza(Lcom/google/firebase/FirebaseApp;Lcom/google/android/gms/internal/firebase_auth/zzew;)Lcom/google/firebase/auth/internal/zzn;

    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/google/firebase/auth/api/internal/zzbw;->zze:Lcom/google/firebase/auth/FirebaseUser;

    invoke-virtual {v1}, Lcom/google/firebase/auth/FirebaseUser;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseUser;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 20
    iget-object v1, p0, Lcom/google/firebase/auth/api/internal/zzbw;->zzf:Ljava/lang/Object;

    check-cast v1, Lcom/google/firebase/auth/internal/zza;

    iget-object v2, p0, Lcom/google/firebase/auth/api/internal/zzbw;->zzk:Lcom/google/android/gms/internal/firebase_auth/zzff;

    invoke-interface {v1, v2, v0}, Lcom/google/firebase/auth/internal/zza;->zza(Lcom/google/android/gms/internal/firebase_auth/zzff;Lcom/google/firebase/auth/FirebaseUser;)V

    const/4 v0, 0x0

    .line 22
    invoke-virtual {p0, v0}, Lcom/google/firebase/auth/api/internal/zzfe;->zzb(Ljava/lang/Object;)V

    return-void

    .line 24
    :cond_26
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x4280

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method
