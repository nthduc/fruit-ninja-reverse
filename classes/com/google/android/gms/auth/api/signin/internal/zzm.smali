.class final Lcom/google/android/gms/auth/api/signin/internal/zzm;
.super Lcom/google/android/gms/auth/api/signin/internal/zzd;
.source "com.google.android.gms:play-services-auth@@18.1.0"


# instance fields
.field private final synthetic zzck:Lcom/google/android/gms/auth/api/signin/internal/zzn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/api/signin/internal/zzn;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/auth/api/signin/internal/zzm;->zzck:Lcom/google/android/gms/auth/api/signin/internal/zzn;

    invoke-direct {p0}, Lcom/google/android/gms/auth/api/signin/internal/zzd;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzf(Lcom/google/android/gms/common/api/Status;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/zzm;->zzck:Lcom/google/android/gms/auth/api/signin/internal/zzn;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/auth/api/signin/internal/zzn;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
