.class final Lcom/google/android/gms/internal/ads/zzcit;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/zzp;
.implements Lcom/google/android/gms/ads/internal/overlay/zzv;
.implements Lcom/google/android/gms/internal/ads/zzagt;
.implements Lcom/google/android/gms/internal/ads/zzagv;
.implements Lcom/google/android/gms/internal/ads/zzux;


# instance fields
.field private zzcgv:Lcom/google/android/gms/internal/ads/zzux;

.field private zzdep:Lcom/google/android/gms/internal/ads/zzagt;

.field private zzdeq:Lcom/google/android/gms/internal/ads/zzagv;

.field private zzdpm:Lcom/google/android/gms/ads/internal/overlay/zzp;

.field private zzdpq:Lcom/google/android/gms/ads/internal/overlay/zzv;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzciq;)V
    .registers 2

    .line 32
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcit;-><init>()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzcit;Lcom/google/android/gms/internal/ads/zzux;Lcom/google/android/gms/internal/ads/zzagt;Lcom/google/android/gms/ads/internal/overlay/zzp;Lcom/google/android/gms/internal/ads/zzagv;Lcom/google/android/gms/ads/internal/overlay/zzv;)V
    .registers 6

    .line 33
    invoke-direct/range {p0 .. p5}, Lcom/google/android/gms/internal/ads/zzcit;->zza(Lcom/google/android/gms/internal/ads/zzux;Lcom/google/android/gms/internal/ads/zzagt;Lcom/google/android/gms/ads/internal/overlay/zzp;Lcom/google/android/gms/internal/ads/zzagv;Lcom/google/android/gms/ads/internal/overlay/zzv;)V

    return-void
.end method

.method private final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzux;Lcom/google/android/gms/internal/ads/zzagt;Lcom/google/android/gms/ads/internal/overlay/zzp;Lcom/google/android/gms/internal/ads/zzagv;Lcom/google/android/gms/ads/internal/overlay/zzv;)V
    .registers 6

    monitor-enter p0

    .line 26
    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcit;->zzcgv:Lcom/google/android/gms/internal/ads/zzux;

    .line 27
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcit;->zzdep:Lcom/google/android/gms/internal/ads/zzagt;

    .line 28
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcit;->zzdpm:Lcom/google/android/gms/ads/internal/overlay/zzp;

    .line 29
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcit;->zzdeq:Lcom/google/android/gms/internal/ads/zzagv;

    .line 30
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzcit;->zzdpq:Lcom/google/android/gms/ads/internal/overlay/zzv;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 31
    monitor-exit p0

    return-void

    :catchall_d
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final declared-synchronized onAdClicked()V
    .registers 2

    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcit;->zzcgv:Lcom/google/android/gms/internal/ads/zzux;

    if-eqz v0, :cond_a

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcit;->zzcgv:Lcom/google/android/gms/internal/ads/zzux;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzux;->onAdClicked()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 4
    :cond_a
    monitor-exit p0

    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onAppEvent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    monitor-enter p0

    .line 23
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcit;->zzdeq:Lcom/google/android/gms/internal/ads/zzagv;

    if-eqz v0, :cond_a

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcit;->zzdeq:Lcom/google/android/gms/internal/ads/zzagv;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzagv;->onAppEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 25
    :cond_a
    monitor-exit p0

    return-void

    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onPause()V
    .registers 2

    monitor-enter p0

    .line 8
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcit;->zzdpm:Lcom/google/android/gms/ads/internal/overlay/zzp;

    if-eqz v0, :cond_a

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcit;->zzdpm:Lcom/google/android/gms/ads/internal/overlay/zzp;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzp;->onPause()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 10
    :cond_a
    monitor-exit p0

    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onResume()V
    .registers 2

    monitor-enter p0

    .line 11
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcit;->zzdpm:Lcom/google/android/gms/ads/internal/overlay/zzp;

    if-eqz v0, :cond_a

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcit;->zzdpm:Lcom/google/android/gms/ads/internal/overlay/zzp;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzp;->onResume()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 13
    :cond_a
    monitor-exit p0

    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zza(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    monitor-enter p0

    .line 20
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcit;->zzdep:Lcom/google/android/gms/internal/ads/zzagt;

    if-eqz v0, :cond_a

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcit;->zzdep:Lcom/google/android/gms/internal/ads/zzagt;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzagt;->zza(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 22
    :cond_a
    monitor-exit p0

    return-void

    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzum()V
    .registers 2

    monitor-enter p0

    .line 5
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcit;->zzdpm:Lcom/google/android/gms/ads/internal/overlay/zzp;

    if-eqz v0, :cond_a

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcit;->zzdpm:Lcom/google/android/gms/ads/internal/overlay/zzp;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzp;->zzum()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 7
    :cond_a
    monitor-exit p0

    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzun()V
    .registers 2

    monitor-enter p0

    .line 14
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcit;->zzdpm:Lcom/google/android/gms/ads/internal/overlay/zzp;

    if-eqz v0, :cond_a

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcit;->zzdpm:Lcom/google/android/gms/ads/internal/overlay/zzp;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzp;->zzun()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 16
    :cond_a
    monitor-exit p0

    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzvd()V
    .registers 2

    monitor-enter p0

    .line 17
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcit;->zzdpq:Lcom/google/android/gms/ads/internal/overlay/zzv;

    if-eqz v0, :cond_a

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcit;->zzdpq:Lcom/google/android/gms/ads/internal/overlay/zzv;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzv;->zzvd()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 19
    :cond_a
    monitor-exit p0

    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method
