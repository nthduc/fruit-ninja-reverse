.class final Lcom/google/firebase/auth/api/internal/zzds;
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
.field private final zza:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0}, Lcom/google/firebase/auth/api/internal/zzfe;-><init>(I)V

    const-string v0, "password cannot be null or empty"

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/auth/api/internal/zzds;->zza:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/String;
    .registers 2

    const-string v0, "updatePassword"

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
    iget-boolean p2, p0, Lcom/google/firebase/auth/api/internal/zzds;->zzu:Z

    if-eqz p2, :cond_1d

    .line 24
    invoke-interface {p1}, Lcom/google/firebase/auth/api/internal/zzef;->zza()Lcom/google/firebase/auth/api/internal/zzep;

    move-result-object p1

    iget-object p2, p0, Lcom/google/firebase/auth/api/internal/zzds;->zze:Lcom/google/firebase/auth/FirebaseUser;

    .line 25
    invoke-virtual {p2}, Lcom/google/firebase/auth/FirebaseUser;->zzf()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzds;->zza:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/firebase/auth/api/internal/zzds;->zzc:Lcom/google/firebase/auth/api/internal/zzfg;

    .line 26
    invoke-interface {p1, p2, v0, v1}, Lcom/google/firebase/auth/api/internal/zzep;->zzb(Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/auth/api/internal/zzeo;)V

    return-void

    .line 28
    :cond_1d
    invoke-interface {p1}, Lcom/google/firebase/auth/api/internal/zzef;->zza()Lcom/google/firebase/auth/api/internal/zzep;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/firebase_auth/zzbz;

    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzds;->zze:Lcom/google/firebase/auth/FirebaseUser;

    .line 29
    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseUser;->zzf()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/auth/api/internal/zzds;->zza:Ljava/lang/String;

    invoke-direct {p2, v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzbz;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzds;->zzc:Lcom/google/firebase/auth/api/internal/zzfg;

    .line 30
    invoke-interface {p1, p2, v0}, Lcom/google/firebase/auth/api/internal/zzep;->zza(Lcom/google/android/gms/internal/firebase_auth/zzbz;Lcom/google/firebase/auth/api/internal/zzeo;)V

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

    .line 5
    invoke-static {}, Lcom/google/android/gms/common/api/internal/TaskApiCall;->builder()Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->setAutoResolveMissingFeatures(Z)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object v0

    .line 7
    iget-boolean v2, p0, Lcom/google/firebase/auth/api/internal/zzds;->zzu:Z

    if-nez v2, :cond_1a

    iget-boolean v2, p0, Lcom/google/firebase/auth/api/internal/zzds;->zzv:Z

    if-eqz v2, :cond_12

    goto :goto_1a

    :cond_12
    const/4 v2, 0x1

    .line 9
    new-array v2, v2, [Lcom/google/android/gms/common/Feature;

    sget-object v3, Lcom/google/android/gms/internal/firebase_auth/zze;->zza:Lcom/google/android/gms/common/Feature;

    aput-object v3, v2, v1

    goto :goto_1b

    :cond_1a
    :goto_1a
    const/4 v2, 0x0

    .line 10
    :goto_1b
    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->setFeatures([Lcom/google/android/gms/common/Feature;)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/auth/api/internal/zzdr;

    invoke-direct {v1, p0}, Lcom/google/firebase/auth/api/internal/zzdr;-><init>(Lcom/google/firebase/auth/api/internal/zzds;)V

    .line 11
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->run(Lcom/google/android/gms/common/api/internal/RemoteCall;)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->build()Lcom/google/android/gms/common/api/internal/TaskApiCall;

    move-result-object v0

    return-object v0
.end method

.method public final zze()V
    .registers 5

    .line 14
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzds;->zzf:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/auth/internal/zza;

    iget-object v1, p0, Lcom/google/firebase/auth/api/internal/zzds;->zzk:Lcom/google/android/gms/internal/firebase_auth/zzff;

    iget-object v2, p0, Lcom/google/firebase/auth/api/internal/zzds;->zzd:Lcom/google/firebase/FirebaseApp;

    iget-object v3, p0, Lcom/google/firebase/auth/api/internal/zzds;->zzl:Lcom/google/android/gms/internal/firebase_auth/zzew;

    .line 15
    invoke-static {v2, v3}, Lcom/google/firebase/auth/api/internal/zzau;->zza(Lcom/google/firebase/FirebaseApp;Lcom/google/android/gms/internal/firebase_auth/zzew;)Lcom/google/firebase/auth/internal/zzn;

    move-result-object v2

    .line 16
    invoke-interface {v0, v1, v2}, Lcom/google/firebase/auth/internal/zza;->zza(Lcom/google/android/gms/internal/firebase_auth/zzff;Lcom/google/firebase/auth/FirebaseUser;)V

    const/4 v0, 0x0

    .line 18
    invoke-virtual {p0, v0}, Lcom/google/firebase/auth/api/internal/zzfe;->zzb(Ljava/lang/Object;)V

    return-void
.end method
