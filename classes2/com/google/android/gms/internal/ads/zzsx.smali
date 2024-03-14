.class final Lcom/google/android/gms/internal/ads/zzsx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;


# instance fields
.field private final synthetic zzbuz:Lcom/google/android/gms/internal/ads/zzsw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzsw;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsx;->zzbuz:Lcom/google/android/gms/internal/ads/zzsw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .registers 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzsx;->zzbuz:Lcom/google/android/gms/internal/ads/zzsw;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzsw;->zzc(Lcom/google/android/gms/internal/ads/zzsw;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 3
    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsx;->zzbuz:Lcom/google/android/gms/internal/ads/zzsw;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzsw;->zzd(Lcom/google/android/gms/internal/ads/zzsw;)Lcom/google/android/gms/internal/ads/zztb;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsx;->zzbuz:Lcom/google/android/gms/internal/ads/zzsw;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzsx;->zzbuz:Lcom/google/android/gms/internal/ads/zzsw;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzsw;->zzd(Lcom/google/android/gms/internal/ads/zzsw;)Lcom/google/android/gms/internal/ads/zztb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zztb;->zzmz()Lcom/google/android/gms/internal/ads/zztf;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzsw;->zza(Lcom/google/android/gms/internal/ads/zzsw;Lcom/google/android/gms/internal/ads/zztf;)Lcom/google/android/gms/internal/ads/zztf;
    :try_end_1e
    .catch Landroid/os/DeadObjectException; {:try_start_7 .. :try_end_1e} :catch_21
    .catchall {:try_start_7 .. :try_end_1e} :catchall_1f

    goto :goto_2c

    :catchall_1f
    move-exception v0

    goto :goto_37

    :catch_21
    move-exception v0

    :try_start_22
    const-string v1, "Unable to obtain a cache service instance."

    .line 7
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzayp;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsx;->zzbuz:Lcom/google/android/gms/internal/ads/zzsw;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzsw;->zza(Lcom/google/android/gms/internal/ads/zzsw;)V

    .line 9
    :cond_2c
    :goto_2c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsx;->zzbuz:Lcom/google/android/gms/internal/ads/zzsw;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzsw;->zzc(Lcom/google/android/gms/internal/ads/zzsw;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 10
    monitor-exit p1

    return-void

    :goto_37
    monitor-exit p1
    :try_end_38
    .catchall {:try_start_22 .. :try_end_38} :catchall_1f

    throw v0
.end method

.method public final onConnectionSuspended(I)V
    .registers 4

    .line 11
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzsx;->zzbuz:Lcom/google/android/gms/internal/ads/zzsw;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzsw;->zzc(Lcom/google/android/gms/internal/ads/zzsw;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 12
    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsx;->zzbuz:Lcom/google/android/gms/internal/ads/zzsw;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzsw;->zza(Lcom/google/android/gms/internal/ads/zzsw;Lcom/google/android/gms/internal/ads/zztf;)Lcom/google/android/gms/internal/ads/zztf;

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsx;->zzbuz:Lcom/google/android/gms/internal/ads/zzsw;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzsw;->zzc(Lcom/google/android/gms/internal/ads/zzsw;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 14
    monitor-exit p1

    return-void

    :catchall_18
    move-exception v0

    monitor-exit p1
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_18

    throw v0
.end method
