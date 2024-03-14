.class final Lcom/google/firebase/auth/api/internal/zzdy;
.super Lcom/google/firebase/auth/api/internal/zzfe;
.source "com.google.firebase:firebase-auth@@19.3.1"


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/firebase/auth/api/internal/zzfe<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/firebase_auth/zzef;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/auth/ActionCodeSettings;)V
    .registers 5

    const/4 v0, 0x6

    .line 1
    invoke-direct {p0, v0}, Lcom/google/firebase/auth/api/internal/zzfe;-><init>(I)V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzef;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/gms/internal/firebase_auth/zzef;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/auth/ActionCodeSettings;)V

    iput-object v0, p0, Lcom/google/firebase/auth/api/internal/zzdy;->zza:Lcom/google/android/gms/internal/firebase_auth/zzef;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/String;
    .registers 2

    const-string v0, "verifyBeforeUpdateEmail"

    return-object v0
.end method

.method final synthetic zza(Lcom/google/firebase/auth/api/internal/zzef;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    new-instance v0, Lcom/google/firebase/auth/api/internal/zzfo;

    invoke-direct {v0, p0, p2}, Lcom/google/firebase/auth/api/internal/zzfo;-><init>(Lcom/google/firebase/auth/api/internal/zzfe;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 18
    iput-object v0, p0, Lcom/google/firebase/auth/api/internal/zzfe;->zzh:Lcom/google/firebase/auth/api/internal/zzff;

    .line 19
    invoke-interface {p1}, Lcom/google/firebase/auth/api/internal/zzef;->zza()Lcom/google/firebase/auth/api/internal/zzep;

    move-result-object p1

    iget-object p2, p0, Lcom/google/firebase/auth/api/internal/zzdy;->zza:Lcom/google/android/gms/internal/firebase_auth/zzef;

    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzdy;->zzc:Lcom/google/firebase/auth/api/internal/zzfg;

    invoke-interface {p1, p2, v0}, Lcom/google/firebase/auth/api/internal/zzep;->zza(Lcom/google/android/gms/internal/firebase_auth/zzef;Lcom/google/firebase/auth/api/internal/zzeo;)V

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

    .line 8
    invoke-static {}, Lcom/google/android/gms/common/api/internal/TaskApiCall;->builder()Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->setAutoResolveMissingFeatures(Z)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/android/gms/common/Feature;

    sget-object v3, Lcom/google/android/gms/internal/firebase_auth/zze;->zzb:Lcom/google/android/gms/common/Feature;

    aput-object v3, v2, v1

    .line 10
    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->setFeatures([Lcom/google/android/gms/common/Feature;)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/auth/api/internal/zzdx;

    invoke-direct {v1, p0}, Lcom/google/firebase/auth/api/internal/zzdx;-><init>(Lcom/google/firebase/auth/api/internal/zzdy;)V

    .line 11
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->run(Lcom/google/android/gms/common/api/internal/RemoteCall;)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->build()Lcom/google/android/gms/common/api/internal/TaskApiCall;

    move-result-object v0

    return-object v0
.end method

.method public final zze()V
    .registers 2

    const/4 v0, 0x0

    .line 15
    invoke-virtual {p0, v0}, Lcom/google/firebase/auth/api/internal/zzfe;->zzb(Ljava/lang/Object;)V

    return-void
.end method
