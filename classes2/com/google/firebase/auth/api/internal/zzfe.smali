.class abstract Lcom/google/firebase/auth/api/internal/zzfe;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.1"

# interfaces
.implements Lcom/google/firebase/auth/api/internal/zzap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/auth/api/internal/zzfe$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultT:",
        "Ljava/lang/Object;",
        "CallbackT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/firebase/auth/api/internal/zzap<",
        "Lcom/google/firebase/auth/api/internal/zzef;",
        "TResultT;>;"
    }
.end annotation


# instance fields
.field private zza:Z

.field protected final zzb:I

.field final zzc:Lcom/google/firebase/auth/api/internal/zzfg;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/auth/api/internal/zzfg;"
        }
    .end annotation
.end field

.field protected zzd:Lcom/google/firebase/FirebaseApp;

.field protected zze:Lcom/google/firebase/auth/FirebaseUser;

.field protected zzf:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TCallbackT;"
        }
    .end annotation
.end field

.field protected zzg:Lcom/google/firebase/auth/internal/zzag;

.field protected zzh:Lcom/google/firebase/auth/api/internal/zzff;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/auth/api/internal/zzff<",
            "TResultT;>;"
        }
    .end annotation
.end field

.field protected final zzi:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field protected zzj:Ljava/util/concurrent/Executor;

.field protected zzk:Lcom/google/android/gms/internal/firebase_auth/zzff;

.field protected zzl:Lcom/google/android/gms/internal/firebase_auth/zzew;

.field protected zzm:Lcom/google/android/gms/internal/firebase_auth/zzem;

.field protected zzn:Lcom/google/android/gms/internal/firebase_auth/zzfm;

.field protected zzo:Ljava/lang/String;

.field protected zzp:Ljava/lang/String;

.field protected zzq:Lcom/google/firebase/auth/AuthCredential;

.field protected zzr:Ljava/lang/String;

.field protected zzs:Ljava/lang/String;

.field protected zzt:Lcom/google/android/gms/internal/firebase_auth/zzej;

.field protected zzu:Z

.field protected zzv:Z

.field zzw:Z
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field private zzx:Ljava/lang/Object;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TResultT;"
        }
    .end annotation
.end field

.field private zzy:Lcom/google/android/gms/common/api/Status;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/firebase/auth/api/internal/zzfg;

    invoke-direct {v0, p0}, Lcom/google/firebase/auth/api/internal/zzfg;-><init>(Lcom/google/firebase/auth/api/internal/zzfe;)V

    iput-object v0, p0, Lcom/google/firebase/auth/api/internal/zzfe;->zzc:Lcom/google/firebase/auth/api/internal/zzfg;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/auth/api/internal/zzfe;->zzi:Ljava/util/List;

    .line 4
    iput p1, p0, Lcom/google/firebase/auth/api/internal/zzfe;->zzb:I

    return-void
.end method

.method static synthetic zza(Lcom/google/firebase/auth/api/internal/zzfe;)V
    .registers 1

    .line 41
    invoke-direct {p0}, Lcom/google/firebase/auth/api/internal/zzfe;->zzf()V

    return-void
.end method

.method static synthetic zza(Lcom/google/firebase/auth/api/internal/zzfe;Lcom/google/android/gms/common/api/Status;)V
    .registers 2

    .line 43
    invoke-direct {p0, p1}, Lcom/google/firebase/auth/api/internal/zzfe;->zzb(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/firebase/auth/api/internal/zzfe;Z)Z
    .registers 2

    const/4 p1, 0x1

    .line 42
    iput-boolean p1, p0, Lcom/google/firebase/auth/api/internal/zzfe;->zza:Z

    return p1
.end method

.method private final zzb(Lcom/google/android/gms/common/api/Status;)V
    .registers 3

    .line 38
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzfe;->zzg:Lcom/google/firebase/auth/internal/zzag;

    if-eqz v0, :cond_7

    .line 39
    invoke-interface {v0, p1}, Lcom/google/firebase/auth/internal/zzag;->zza(Lcom/google/android/gms/common/api/Status;)V

    :cond_7
    return-void
.end method

.method private final zzf()V
    .registers 3

    .line 35
    invoke-virtual {p0}, Lcom/google/firebase/auth/api/internal/zzfe;->zze()V

    .line 36
    iget-boolean v0, p0, Lcom/google/firebase/auth/api/internal/zzfe;->zza:Z

    const-string v1, "no success or failure set on method implementation"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/auth/api/internal/zzfe;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            ")",
            "Lcom/google/firebase/auth/api/internal/zzfe<",
            "TResultT;TCallbackT;>;"
        }
    .end annotation

    const-string v0, "firebaseApp cannot be null"

    .line 6
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/FirebaseApp;

    iput-object p1, p0, Lcom/google/firebase/auth/api/internal/zzfe;->zzd:Lcom/google/firebase/FirebaseApp;

    return-object p0
.end method

.method public final zza(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/firebase/auth/api/internal/zzfe;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/FirebaseUser;",
            ")",
            "Lcom/google/firebase/auth/api/internal/zzfe<",
            "TResultT;TCallbackT;>;"
        }
    .end annotation

    const-string v0, "firebaseUser cannot be null"

    .line 8
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/auth/FirebaseUser;

    iput-object p1, p0, Lcom/google/firebase/auth/api/internal/zzfe;->zze:Lcom/google/firebase/auth/FirebaseUser;

    return-object p0
.end method

.method public final zza(Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;Landroid/app/Activity;Ljava/util/concurrent/Executor;)Lcom/google/firebase/auth/api/internal/zzfe;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;",
            "Landroid/app/Activity;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/firebase/auth/api/internal/zzfe<",
            "TResultT;TCallbackT;>;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzfe;->zzi:Ljava/util/List;

    monitor-enter v0

    .line 15
    :try_start_3
    iget-object v1, p0, Lcom/google/firebase/auth/api/internal/zzfe;->zzi:Ljava/util/List;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_1f

    if-eqz p2, :cond_16

    .line 18
    iget-object p1, p0, Lcom/google/firebase/auth/api/internal/zzfe;->zzi:Ljava/util/List;

    invoke-static {p2, p1}, Lcom/google/firebase/auth/api/internal/zzfe$zza;->zza(Landroid/app/Activity;Ljava/util/List;)V

    .line 19
    :cond_16
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lcom/google/firebase/auth/api/internal/zzfe;->zzj:Ljava/util/concurrent/Executor;

    return-object p0

    :catchall_1f
    move-exception p1

    .line 16
    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw p1
.end method

.method public final zza(Lcom/google/firebase/auth/internal/zzag;)Lcom/google/firebase/auth/api/internal/zzfe;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/internal/zzag;",
            ")",
            "Lcom/google/firebase/auth/api/internal/zzfe<",
            "TResultT;TCallbackT;>;"
        }
    .end annotation

    const-string v0, "external failure callback cannot be null"

    .line 12
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/auth/internal/zzag;

    iput-object p1, p0, Lcom/google/firebase/auth/api/internal/zzfe;->zzg:Lcom/google/firebase/auth/internal/zzag;

    return-object p0
.end method

.method public final zza(Ljava/lang/Object;)Lcom/google/firebase/auth/api/internal/zzfe;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCallbackT;)",
            "Lcom/google/firebase/auth/api/internal/zzfe<",
            "TResultT;TCallbackT;>;"
        }
    .end annotation

    const-string v0, "external callback cannot be null"

    .line 10
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/auth/api/internal/zzfe;->zzf:Ljava/lang/Object;

    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/common/api/Status;)V
    .registers 4

    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Lcom/google/firebase/auth/api/internal/zzfe;->zza:Z

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/google/firebase/auth/api/internal/zzfe;->zzw:Z

    .line 32
    iput-object p1, p0, Lcom/google/firebase/auth/api/internal/zzfe;->zzy:Lcom/google/android/gms/common/api/Status;

    .line 33
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzfe;->zzh:Lcom/google/firebase/auth/api/internal/zzff;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/google/firebase/auth/api/internal/zzff;->zza(Ljava/lang/Object;Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public final zzb(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResultT;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lcom/google/firebase/auth/api/internal/zzfe;->zza:Z

    .line 26
    iput-boolean v0, p0, Lcom/google/firebase/auth/api/internal/zzfe;->zzw:Z

    .line 27
    iput-object p1, p0, Lcom/google/firebase/auth/api/internal/zzfe;->zzx:Ljava/lang/Object;

    .line 28
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzfe;->zzh:Lcom/google/firebase/auth/api/internal/zzff;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/google/firebase/auth/api/internal/zzff;->zza(Ljava/lang/Object;Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public final zzc()Lcom/google/firebase/auth/api/internal/zzap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/firebase/auth/api/internal/zzap<",
            "Lcom/google/firebase/auth/api/internal/zzef;",
            "TResultT;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lcom/google/firebase/auth/api/internal/zzfe;->zzu:Z

    return-object p0
.end method

.method public final zzd()Lcom/google/firebase/auth/api/internal/zzap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/firebase/auth/api/internal/zzap<",
            "Lcom/google/firebase/auth/api/internal/zzef;",
            "TResultT;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lcom/google/firebase/auth/api/internal/zzfe;->zzv:Z

    return-object p0
.end method

.method public abstract zze()V
.end method
