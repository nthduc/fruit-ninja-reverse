.class public final Lcom/google/android/gms/internal/ads/zzbwa;
.super Lcom/google/android/gms/internal/ads/zzbyr;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/zzp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzbyr<",
        "Lcom/google/android/gms/ads/internal/overlay/zzp;",
        ">;",
        "Lcom/google/android/gms/ads/internal/overlay/zzp;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/zzcab<",
            "Lcom/google/android/gms/ads/internal/overlay/zzp;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbyr;-><init>(Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized onPause()V
    .registers 2

    monitor-enter p0

    .line 5
    :try_start_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbwc;->zzfur:Lcom/google/android/gms/internal/ads/zzbyt;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzbyr;->zza(Lcom/google/android/gms/internal/ads/zzbyt;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 6
    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onResume()V
    .registers 2

    monitor-enter p0

    .line 7
    :try_start_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbwf;->zzfur:Lcom/google/android/gms/internal/ads/zzbyt;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzbyr;->zza(Lcom/google/android/gms/internal/ads/zzbyt;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 8
    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzum()V
    .registers 2

    monitor-enter p0

    .line 3
    :try_start_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbwd;->zzfur:Lcom/google/android/gms/internal/ads/zzbyt;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzbyr;->zza(Lcom/google/android/gms/internal/ads/zzbyt;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 4
    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzun()V
    .registers 2

    monitor-enter p0

    .line 9
    :try_start_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbwe;->zzfur:Lcom/google/android/gms/internal/ads/zzbyt;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzbyr;->zza(Lcom/google/android/gms/internal/ads/zzbyt;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 10
    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method
