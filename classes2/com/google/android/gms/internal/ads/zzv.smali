.class final Lcom/google/android/gms/internal/ads/zzv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzah:Lcom/google/android/gms/internal/ads/zzaa;

.field private final zzai:Lcom/google/android/gms/internal/ads/zzaj;

.field private final zzaj:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaa;Lcom/google/android/gms/internal/ads/zzaj;Ljava/lang/Runnable;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzv;->zzah:Lcom/google/android/gms/internal/ads/zzaa;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzv;->zzai:Lcom/google/android/gms/internal/ads/zzaj;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzv;->zzaj:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzv;->zzah:Lcom/google/android/gms/internal/ads/zzaa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaa;->isCanceled()Z

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzv;->zzai:Lcom/google/android/gms/internal/ads/zzaj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaj;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzv;->zzah:Lcom/google/android/gms/internal/ads/zzaa;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzv;->zzai:Lcom/google/android/gms/internal/ads/zzaj;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaj;->result:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzaa;->zza(Ljava/lang/Object;)V

    goto :goto_20

    .line 9
    :cond_17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzv;->zzah:Lcom/google/android/gms/internal/ads/zzaa;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzv;->zzai:Lcom/google/android/gms/internal/ads/zzaj;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaj;->zzbt:Lcom/google/android/gms/internal/ads/zzao;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzaa;->zzb(Lcom/google/android/gms/internal/ads/zzao;)V

    .line 10
    :goto_20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzv;->zzai:Lcom/google/android/gms/internal/ads/zzaj;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzaj;->zzbu:Z

    if-eqz v0, :cond_2e

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzv;->zzah:Lcom/google/android/gms/internal/ads/zzaa;

    const-string v1, "intermediate-response"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzaa;->zzc(Ljava/lang/String;)V

    goto :goto_35

    .line 12
    :cond_2e
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzv;->zzah:Lcom/google/android/gms/internal/ads/zzaa;

    const-string v1, "done"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzaa;->zzd(Ljava/lang/String;)V

    .line 13
    :goto_35
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzv;->zzaj:Ljava/lang/Runnable;

    if-eqz v0, :cond_3c

    .line 14
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_3c
    return-void
.end method
