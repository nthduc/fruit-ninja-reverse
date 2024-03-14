.class public final Lcom/google/android/gms/internal/ads/zzbhd;
.super Lcom/google/android/gms/internal/ads/zzyr;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private final lock:Ljava/lang/Object;

.field private zzadw:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private zzadx:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private zzaez:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private zzdle:Lcom/google/android/gms/internal/ads/zzyt;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private final zzegh:Lcom/google/android/gms/internal/ads/zzbdu;

.field private final zzepz:Z

.field private final zzeqa:Z

.field private zzeqb:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private zzeqc:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private zzeqd:F
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private zzeqe:F
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private zzeqf:F
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private zzeqg:Lcom/google/android/gms/internal/ads/zzafq;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbdu;FZZ)V
    .registers 6

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzyr;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhd;->lock:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzeqc:Z

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzegh:Lcom/google/android/gms/internal/ads/zzbdu;

    .line 5
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzeqd:F

    .line 6
    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzepz:Z

    .line 7
    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzeqa:Z

    return-void
.end method

.method private final zza(IIZZ)V
    .registers 13

    .line 102
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbz;->zzeet:Lcom/google/android/gms/internal/ads/zzdzb;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzbhf;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzbhf;-><init>(Lcom/google/android/gms/internal/ads/zzbhd;IIZZ)V

    invoke-interface {v0, v7}, Lcom/google/android/gms/internal/ads/zzdzb;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final zzf(Ljava/lang/String;Ljava/util/Map;)V
    .registers 4
    .param p2    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_8

    .line 33
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    goto :goto_e

    :cond_8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object p2, v0

    :goto_e
    const-string v0, "action"

    .line 34
    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbbz;->zzeet:Lcom/google/android/gms/internal/ads/zzdzb;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbhc;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/ads/zzbhc;-><init>(Lcom/google/android/gms/internal/ads/zzbhd;Ljava/util/Map;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzdzb;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final getAspectRatio()F
    .registers 3

    .line 43
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhd;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 44
    :try_start_3
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzeqf:F

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    .line 45
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public final getCurrentTime()F
    .registers 3

    .line 49
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhd;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 50
    :try_start_3
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzeqe:F

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    .line 51
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public final getDuration()F
    .registers 3

    .line 46
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhd;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 47
    :try_start_3
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzeqd:F

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    .line 48
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public final getPlaybackState()I
    .registers 3

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhd;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 41
    :try_start_3
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzaez:I

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    .line 42
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public final isClickToExpandEnabled()Z
    .registers 3

    .line 61
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbhd;->isCustomControlsEnabled()Z

    move-result v0

    .line 62
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbhd;->lock:Ljava/lang/Object;

    monitor-enter v1

    if-nez v0, :cond_15

    .line 63
    :try_start_9
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzadx:Z

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzeqa:Z

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :catchall_13
    move-exception v0

    goto :goto_18

    :cond_15
    const/4 v0, 0x0

    :goto_16
    monitor-exit v1

    return v0

    .line 64
    :goto_18
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_9 .. :try_end_19} :catchall_13

    throw v0
.end method

.method public final isCustomControlsEnabled()Z
    .registers 3

    .line 58
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhd;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 59
    :try_start_3
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzepz:Z

    if-eqz v1, :cond_d

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzadw:Z

    if-eqz v1, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    monitor-exit v0

    return v1

    :catchall_10
    move-exception v1

    .line 60
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public final isMuted()Z
    .registers 3

    .line 37
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhd;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 38
    :try_start_3
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzeqc:Z

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    .line 39
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public final mute(Z)V
    .registers 3

    if-eqz p1, :cond_5

    const-string p1, "mute"

    goto :goto_7

    :cond_5
    const-string p1, "unmute"

    :goto_7
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbhd;->zzf(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final pause()V
    .registers 3

    const-string v0, "pause"

    const/4 v1, 0x0

    .line 13
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzbhd;->zzf(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final play()V
    .registers 3

    const-string v0, "play"

    const/4 v1, 0x0

    .line 10
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzbhd;->zzf(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final stop()V
    .registers 3

    const-string v0, "stop"

    const/4 v1, 0x0

    .line 16
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzbhd;->zzf(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final zza(FFIZF)V
    .registers 9

    .line 76
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhd;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 77
    :try_start_3
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzeqd:F

    cmpl-float v1, p2, v1

    if-nez v1, :cond_12

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzeqf:F

    cmpl-float v1, p5, v1

    if-eqz v1, :cond_10

    goto :goto_12

    :cond_10
    const/4 v1, 0x0

    goto :goto_13

    :cond_12
    :goto_12
    const/4 v1, 0x1

    .line 79
    :goto_13
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzeqd:F

    .line 80
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzeqe:F

    .line 81
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzeqc:Z

    .line 82
    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzeqc:Z

    .line 83
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzaez:I

    .line 84
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzaez:I

    .line 85
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzeqf:F

    .line 86
    iput p5, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzeqf:F

    .line 87
    iget p5, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzeqf:F

    sub-float/2addr p5, v2

    invoke-static {p5}, Ljava/lang/Math;->abs(F)F

    move-result p5

    const v2, 0x38d1b717    # 1.0E-4f

    cmpl-float p5, p5, v2

    if-lez p5, :cond_3a

    .line 88
    iget-object p5, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzegh:Lcom/google/android/gms/internal/ads/zzbdu;

    invoke-interface {p5}, Lcom/google/android/gms/internal/ads/zzbdu;->getView()Landroid/view/View;

    move-result-object p5

    invoke-virtual {p5}, Landroid/view/View;->invalidate()V

    .line 89
    :cond_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_51

    if-eqz v1, :cond_4d

    .line 92
    :try_start_3d
    iget-object p5, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzeqg:Lcom/google/android/gms/internal/ads/zzafq;

    if-eqz p5, :cond_4d

    .line 93
    iget-object p5, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzeqg:Lcom/google/android/gms/internal/ads/zzafq;

    invoke-interface {p5}, Lcom/google/android/gms/internal/ads/zzafq;->zzsu()V
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_46} :catch_47

    goto :goto_4d

    :catch_47
    move-exception p5

    const-string v0, "#007 Could not call remote method."

    .line 96
    invoke-static {v0, p5}, Lcom/google/android/gms/internal/ads/zzbbq;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 97
    :cond_4d
    :goto_4d
    invoke-direct {p0, p2, p3, p1, p4}, Lcom/google/android/gms/internal/ads/zzbhd;->zza(IIZZ)V

    return-void

    :catchall_51
    move-exception p1

    .line 89
    :try_start_52
    monitor-exit v0
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_51

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzafq;)V
    .registers 3

    .line 99
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhd;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 100
    :try_start_3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzeqg:Lcom/google/android/gms/internal/ads/zzafq;

    .line 101
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzyt;)V
    .registers 3

    .line 52
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhd;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 53
    :try_start_3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzdle:Lcom/google/android/gms/internal/ads/zzyt;

    .line 54
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p1
.end method

.method public final zzacw()V
    .registers 5

    .line 68
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhd;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 69
    :try_start_3
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzeqc:Z

    .line 70
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzaez:I

    const/4 v3, 0x3

    .line 71
    iput v3, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzaez:I

    .line 72
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_f

    .line 73
    invoke-direct {p0, v2, v3, v1, v1}, Lcom/google/android/gms/internal/ads/zzbhd;->zza(IIZZ)V

    return-void

    :catchall_f
    move-exception v1

    .line 72
    :try_start_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v1
.end method

.method final synthetic zzb(IIZZ)V
    .registers 11

    .line 104
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhd;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, p2, :cond_9

    const/4 p1, 0x1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    .line 106
    :goto_a
    :try_start_a
    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzeqb:Z

    if-nez v3, :cond_12

    if-ne p2, v2, :cond_12

    const/4 v3, 0x1

    goto :goto_13

    :cond_12
    const/4 v3, 0x0

    :goto_13
    if-eqz p1, :cond_19

    if-ne p2, v2, :cond_19

    const/4 v4, 0x1

    goto :goto_1a

    :cond_19
    const/4 v4, 0x0

    :goto_1a
    if-eqz p1, :cond_21

    const/4 v5, 0x2

    if-ne p2, v5, :cond_21

    const/4 v5, 0x1

    goto :goto_22

    :cond_21
    const/4 v5, 0x0

    :goto_22
    if-eqz p1, :cond_29

    const/4 p1, 0x3

    if-ne p2, p1, :cond_29

    const/4 p1, 0x1

    goto :goto_2a

    :cond_29
    const/4 p1, 0x0

    :goto_2a
    if-eq p3, p4, :cond_2e

    const/4 p2, 0x1

    goto :goto_2f

    :cond_2e
    const/4 p2, 0x0

    .line 111
    :goto_2f
    iget-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzeqb:Z

    if-nez p3, :cond_35

    if-eqz v3, :cond_36

    :cond_35
    const/4 v1, 0x1

    :cond_36
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzeqb:Z
    :try_end_38
    .catchall {:try_start_a .. :try_end_38} :catchall_7f

    if-eqz v3, :cond_46

    .line 113
    :try_start_3a
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzdle:Lcom/google/android/gms/internal/ads/zzyt;

    if-eqz p3, :cond_46

    .line 114
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzdle:Lcom/google/android/gms/internal/ads/zzyt;

    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzyt;->onVideoStart()V

    goto :goto_46

    :catch_44
    move-exception p1

    goto :goto_78

    :cond_46
    :goto_46
    if-eqz v4, :cond_51

    .line 116
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzdle:Lcom/google/android/gms/internal/ads/zzyt;

    if-eqz p3, :cond_51

    .line 117
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzdle:Lcom/google/android/gms/internal/ads/zzyt;

    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzyt;->onVideoPlay()V

    :cond_51
    if-eqz v5, :cond_5c

    .line 119
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzdle:Lcom/google/android/gms/internal/ads/zzyt;

    if-eqz p3, :cond_5c

    .line 120
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzdle:Lcom/google/android/gms/internal/ads/zzyt;

    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzyt;->onVideoPause()V

    :cond_5c
    if-eqz p1, :cond_6c

    .line 122
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzdle:Lcom/google/android/gms/internal/ads/zzyt;

    if-eqz p1, :cond_67

    .line 123
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzdle:Lcom/google/android/gms/internal/ads/zzyt;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzyt;->onVideoEnd()V

    .line 124
    :cond_67
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzegh:Lcom/google/android/gms/internal/ads/zzbdu;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbdu;->zzaaa()V

    :cond_6c
    if-eqz p2, :cond_7d

    .line 126
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzdle:Lcom/google/android/gms/internal/ads/zzyt;

    if-eqz p1, :cond_7d

    .line 127
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzdle:Lcom/google/android/gms/internal/ads/zzyt;

    invoke-interface {p1, p4}, Lcom/google/android/gms/internal/ads/zzyt;->onVideoMute(Z)V
    :try_end_77
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_77} :catch_44
    .catchall {:try_start_3a .. :try_end_77} :catchall_7f

    goto :goto_7d

    :goto_78
    :try_start_78
    const-string p2, "#007 Could not call remote method."

    .line 130
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 131
    :cond_7d
    :goto_7d
    monitor-exit v0

    return-void

    :catchall_7f
    move-exception p1

    monitor-exit v0
    :try_end_81
    .catchall {:try_start_78 .. :try_end_81} :catchall_7f

    throw p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzaak;)V
    .registers 10

    .line 21
    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzaak;->zzadv:Z

    iget-boolean v1, p1, Lcom/google/android/gms/internal/ads/zzaak;->zzadw:Z

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzaak;->zzadx:Z

    .line 22
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbhd;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 23
    :try_start_9
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzadw:Z

    .line 24
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzadx:Z

    .line 25
    monitor-exit v2
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_36

    if-eqz v0, :cond_13

    const-string v0, "1"

    goto :goto_15

    :cond_13
    const-string v0, "0"

    :goto_15
    move-object v3, v0

    if-eqz v1, :cond_1b

    const-string v0, "1"

    goto :goto_1d

    :cond_1b
    const-string v0, "0"

    :goto_1d
    move-object v5, v0

    if-eqz p1, :cond_23

    const-string p1, "1"

    goto :goto_25

    :cond_23
    const-string p1, "0"

    :goto_25
    move-object v7, p1

    const-string v2, "muteStart"

    const-string v4, "customControlsRequested"

    const-string v6, "clickToExpandRequested"

    .line 30
    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/common/util/CollectionUtils;->mapOf(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    const-string v0, "initialState"

    .line 31
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzbhd;->zzf(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :catchall_36
    move-exception p1

    .line 25
    :try_start_37
    monitor-exit v2
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw p1
.end method

.method public final zze(F)V
    .registers 3

    .line 65
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhd;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 66
    :try_start_3
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzeqe:F

    .line 67
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p1
.end method

.method final synthetic zzk(Ljava/util/Map;)V
    .registers 4

    .line 132
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzegh:Lcom/google/android/gms/internal/ads/zzbdu;

    const-string v1, "pubVideoCmd"

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzbdu;->zza(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final zzqm()Lcom/google/android/gms/internal/ads/zzyt;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhd;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 56
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzdle:Lcom/google/android/gms/internal/ads/zzyt;

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    .line 57
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method
