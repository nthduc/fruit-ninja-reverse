.class abstract Lcom/google/android/gms/measurement/internal/zzgr;
.super Lcom/google/android/gms/measurement/internal/zzgs;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.1"


# instance fields
.field private zza:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzfx;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzgs;-><init>(Lcom/google/android/gms/measurement/internal/zzfx;)V

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzgr;->zzz:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/measurement/internal/zzfx;->zza(Lcom/google/android/gms/measurement/internal/zzgr;)V

    return-void
.end method


# virtual methods
.method protected f_()V
    .registers 1

    return-void
.end method

.method protected final zzaa()V
    .registers 3

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzz()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 6
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzab()V
    .registers 3

    .line 8
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzgr;->zza:Z

    if-nez v0, :cond_13

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zze()Z

    move-result v0

    if-nez v0, :cond_12

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgr;->zzz:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfx;->zzaf()V

    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzgr;->zza:Z

    :cond_12
    return-void

    .line 9
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t initialize twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzac()V
    .registers 3

    .line 14
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzgr;->zza:Z

    if-nez v0, :cond_10

    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->f_()V

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgr;->zzz:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfx;->zzaf()V

    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzgr;->zza:Z

    return-void

    .line 15
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t initialize twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract zze()Z
.end method

.method final zzz()Z
    .registers 2

    .line 4
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzgr;->zza:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method
