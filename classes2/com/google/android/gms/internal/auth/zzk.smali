.class final Lcom/google/android/gms/internal/auth/zzk;
.super Lcom/google/android/gms/internal/auth/zzn;


# instance fields
.field private final synthetic zzaf:Lcom/google/android/gms/internal/auth/zzj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/auth/zzj;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/auth/zzk;->zzaf:Lcom/google/android/gms/internal/auth/zzj;

    invoke-direct {p0}, Lcom/google/android/gms/internal/auth/zzn;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzc(Landroid/accounts/Account;)V
    .registers 5

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzk;->zzaf:Lcom/google/android/gms/internal/auth/zzj;

    new-instance v1, Lcom/google/android/gms/internal/auth/zzo;

    if-eqz p1, :cond_9

    .line 3
    sget-object v2, Lcom/google/android/gms/common/api/Status;->RESULT_SUCCESS:Lcom/google/android/gms/common/api/Status;

    goto :goto_d

    :cond_9
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzh;->zzc()Lcom/google/android/gms/common/api/Status;

    move-result-object v2

    :goto_d
    invoke-direct {v1, v2, p1}, Lcom/google/android/gms/internal/auth/zzo;-><init>(Lcom/google/android/gms/common/api/Status;Landroid/accounts/Account;)V

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/auth/zzj;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method