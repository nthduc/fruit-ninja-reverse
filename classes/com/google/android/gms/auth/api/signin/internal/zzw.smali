.class public final Lcom/google/android/gms/auth/api/signin/internal/zzw;
.super Lcom/google/android/gms/auth/api/signin/internal/zzq;
.source "com.google.android.gms:play-services-auth@@18.1.0"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/auth/api/signin/internal/zzq;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/auth/api/signin/internal/zzw;->mContext:Landroid/content/Context;

    return-void
.end method

.method private final zzq()V
    .registers 5

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/zzw;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/util/UidVerifier;->isGooglePlayServicesUid(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    .line 20
    :cond_d
    new-instance v0, Ljava/lang/SecurityException;

    .line 21
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x34

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Calling UID "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is not Google Play services."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final zzn()V
    .registers 4

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/auth/api/signin/internal/zzw;->zzq()V

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/zzw;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/auth/api/signin/internal/Storage;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/internal/Storage;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/internal/Storage;->getSavedDefaultGoogleSignInAccount()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v1

    .line 8
    sget-object v2, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->DEFAULT_SIGN_IN:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    if-eqz v1, :cond_15

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/internal/Storage;->getSavedDefaultGoogleSignInOptions()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object v2

    .line 11
    :cond_15
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/zzw;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getClient(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    move-result-object v0

    if-eqz v1, :cond_21

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;->revokeAccess()Lcom/google/android/gms/tasks/Task;

    return-void

    .line 14
    :cond_21
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;->signOut()Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public final zzo()V
    .registers 2

    .line 16
    invoke-direct {p0}, Lcom/google/android/gms/auth/api/signin/internal/zzw;->zzq()V

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/zzw;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/auth/api/signin/internal/zzo;->zzd(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/internal/zzo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/internal/zzo;->clear()V

    return-void
.end method
