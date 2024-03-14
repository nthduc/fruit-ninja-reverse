.class final Lcom/google/android/gms/internal/ads/zzdtq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-gass@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;
.implements Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;


# instance fields
.field private final lock:Ljava/lang/Object;

.field private zzgke:Z

.field private zzgkf:Z

.field private final zzhmu:Lcom/google/android/gms/internal/ads/zzduk;

.field private final zzhmv:Lcom/google/android/gms/internal/ads/zzduc;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/ads/zzduc;)V
    .registers 11
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Looper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/gms/internal/ads/zzduc;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdtq;->lock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdtq;->zzgke:Z

    .line 4
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdtq;->zzgkf:Z

    .line 5
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdtq;->zzhmv:Lcom/google/android/gms/internal/ads/zzduc;

    .line 6
    new-instance p3, Lcom/google/android/gms/internal/ads/zzduk;

    const v6, 0xc35000

    move-object v1, p3

    move-object v2, p1

    move-object v3, p2

    move-object v4, p0

    move-object v5, p0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzduk;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;I)V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdtq;->zzhmu:Lcom/google/android/gms/internal/ads/zzduk;

    return-void
.end method

.method private final zzapz()V
    .registers 3

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdtq;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 14
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdtq;->zzhmu:Lcom/google/android/gms/internal/ads/zzduk;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzduk;->isConnected()Z

    move-result v1

    if-nez v1, :cond_13

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdtq;->zzhmu:Lcom/google/android/gms/internal/ads/zzduk;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzduk;->isConnecting()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 15
    :cond_13
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdtq;->zzhmu:Lcom/google/android/gms/internal/ads/zzduk;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzduk;->disconnect()V

    .line 16
    :cond_18
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    .line 17
    monitor-exit v0

    return-void

    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .registers 5
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 18
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdtq;->lock:Ljava/lang/Object;

    monitor-enter p1

    .line 19
    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdtq;->zzgkf:Z

    if-eqz v0, :cond_9

    .line 20
    monitor-exit p1

    return-void

    :cond_9
    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdtq;->zzgkf:Z
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_2e

    .line 22
    :try_start_c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdtq;->zzhmu:Lcom/google/android/gms/internal/ads/zzduk;

    .line 23
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzduk;->zzawm()Lcom/google/android/gms/internal/ads/zzdun;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdui;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdtq;->zzhmv:Lcom/google/android/gms/internal/ads/zzduc;

    .line 24
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzeif;->toByteArray()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzdui;-><init>([B)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzdun;->zza(Lcom/google/android/gms/internal/ads/zzdui;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_20} :catch_29
    .catchall {:try_start_c .. :try_end_20} :catchall_24

    .line 25
    :try_start_20
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdtq;->zzapz()V

    goto :goto_2c

    :catchall_24
    move-exception v0

    .line 30
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdtq;->zzapz()V

    .line 31
    throw v0

    .line 28
    :catch_29
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdtq;->zzapz()V

    .line 32
    :goto_2c
    monitor-exit p1

    return-void

    :catchall_2e
    move-exception v0

    monitor-exit p1
    :try_end_30
    .catchall {:try_start_20 .. :try_end_30} :catchall_2e

    throw v0
.end method

.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 2
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public final onConnectionSuspended(I)V
    .registers 2

    return-void
.end method

.method final zzawd()V
    .registers 3

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdtq;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 9
    :try_start_3
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzdtq;->zzgke:Z

    if-nez v1, :cond_f

    const/4 v1, 0x1

    .line 10
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzdtq;->zzgke:Z

    .line 11
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdtq;->zzhmu:Lcom/google/android/gms/internal/ads/zzduk;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzduk;->checkAvailabilityAndConnect()V

    .line 12
    :cond_f
    monitor-exit v0

    return-void

    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method
