.class final Lcom/google/android/gms/internal/auth/zzm;
.super Lcom/google/android/gms/internal/auth/zzn;


# instance fields
.field private final synthetic zzag:Lcom/google/android/gms/internal/auth/zzl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/auth/zzl;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/auth/zzm;->zzag:Lcom/google/android/gms/internal/auth/zzl;

    invoke-direct {p0}, Lcom/google/android/gms/internal/auth/zzn;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Z)V
    .registers 4

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzm;->zzag:Lcom/google/android/gms/internal/auth/zzl;

    new-instance v1, Lcom/google/android/gms/internal/auth/zzq;

    if-eqz p1, :cond_9

    .line 3
    sget-object p1, Lcom/google/android/gms/common/api/Status;->RESULT_SUCCESS:Lcom/google/android/gms/common/api/Status;

    goto :goto_d

    :cond_9
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzh;->zzc()Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    :goto_d
    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/auth/zzq;-><init>(Lcom/google/android/gms/common/api/Status;)V

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/auth/zzl;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
