.class final Lcom/google/android/gms/internal/ads/zzbdr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field private final zzehi:Landroid/hardware/SensorManager;

.field private final zzehj:Ljava/lang/Object;

.field private final zzehk:Landroid/view/Display;

.field private final zzehl:[F

.field private final zzehm:[F

.field private zzehn:[F
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "sensorThreadLock"
    .end annotation
.end field

.field private zzeho:Landroid/os/Handler;

.field private zzehp:Lcom/google/android/gms/internal/ads/zzbdt;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "sensor"

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzehi:Landroid/hardware/SensorManager;

    const-string v0, "window"

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 4
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzehk:Landroid/view/Display;

    const/16 p1, 0x9

    .line 5
    new-array v0, p1, [F

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzehl:[F

    .line 6
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzehm:[F

    .line 7
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzehj:Ljava/lang/Object;

    return-void
.end method

.method private final zzl(II)V
    .registers 6

    .line 65
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzehm:[F

    aget v1, v0, p1

    .line 66
    aget v2, v0, p2

    aput v2, v0, p1

    .line 67
    aput v1, v0, p2

    return-void
.end method


# virtual methods
.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 10

    .line 32
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x0

    .line 33
    aget v1, p1, v0

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    cmpl-float v1, v1, v2

    if-nez v1, :cond_18

    aget v1, p1, v4

    cmpl-float v1, v1, v2

    if-nez v1, :cond_18

    aget v1, p1, v3

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_79

    .line 34
    :cond_18
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzehj:Ljava/lang/Object;

    monitor-enter v1

    .line 35
    :try_start_1b
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzehn:[F

    const/16 v5, 0x9

    if-nez v2, :cond_25

    .line 36
    new-array v2, v5, [F

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzehn:[F

    .line 37
    :cond_25
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_1b .. :try_end_26} :catchall_7d

    .line 38
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzehl:[F

    invoke-static {v1, p1}, Landroid/hardware/SensorManager;->getRotationMatrixFromVector([F[F)V

    .line 40
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzehk:Landroid/view/Display;

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    const/16 v1, 0x81

    const/4 v2, 0x3

    if-eq p1, v4, :cond_54

    const/16 v6, 0x82

    if-eq p1, v3, :cond_4c

    if-eq p1, v2, :cond_44

    .line 48
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzehl:[F

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzehm:[F

    invoke-static {p1, v0, v1, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_5b

    .line 46
    :cond_44
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzehl:[F

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzehm:[F

    invoke-static {p1, v6, v4, v1}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    goto :goto_5b

    .line 44
    :cond_4c
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzehl:[F

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzehm:[F

    invoke-static {p1, v1, v6, v7}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    goto :goto_5b

    .line 42
    :cond_54
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzehl:[F

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzehm:[F

    invoke-static {p1, v3, v1, v6}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    .line 49
    :goto_5b
    invoke-direct {p0, v4, v2}, Lcom/google/android/gms/internal/ads/zzbdr;->zzl(II)V

    const/4 p1, 0x6

    .line 50
    invoke-direct {p0, v3, p1}, Lcom/google/android/gms/internal/ads/zzbdr;->zzl(II)V

    const/4 p1, 0x5

    const/4 v1, 0x7

    .line 51
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzbdr;->zzl(II)V

    .line 52
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzehj:Ljava/lang/Object;

    monitor-enter p1

    .line 53
    :try_start_6a
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzehm:[F

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzehn:[F

    invoke-static {v1, v0, v2, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 54
    monitor-exit p1
    :try_end_72
    .catchall {:try_start_6a .. :try_end_72} :catchall_7a

    .line 55
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzehp:Lcom/google/android/gms/internal/ads/zzbdt;

    if-eqz p1, :cond_79

    .line 56
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbdt;->zzux()V

    :cond_79
    return-void

    :catchall_7a
    move-exception v0

    .line 54
    :try_start_7b
    monitor-exit p1
    :try_end_7c
    .catchall {:try_start_7b .. :try_end_7c} :catchall_7a

    throw v0

    :catchall_7d
    move-exception p1

    .line 37
    :try_start_7e
    monitor-exit v1
    :try_end_7f
    .catchall {:try_start_7e .. :try_end_7f} :catchall_7d

    throw p1
.end method

.method final start()V
    .registers 5

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzeho:Landroid/os/Handler;

    if-eqz v0, :cond_5

    return-void

    .line 11
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzehi:Landroid/hardware/SensorManager;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    if-nez v0, :cond_15

    const-string v0, "No Sensor of TYPE_ROTATION_VECTOR"

    .line 13
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzayp;->zzfc(Ljava/lang/String;)V

    return-void

    .line 15
    :cond_15
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "OrientationMonitor"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 17
    new-instance v2, Lcom/google/android/gms/internal/ads/zzdvo;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzdvo;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzeho:Landroid/os/Handler;

    .line 18
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzehi:Landroid/hardware/SensorManager;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzeho:Landroid/os/Handler;

    .line 19
    invoke-virtual {v1, p0, v0, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    move-result v0

    if-nez v0, :cond_3d

    const-string v0, "SensorManager.registerListener failed."

    .line 21
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzayp;->zzfc(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbdr;->stop()V

    :cond_3d
    return-void
.end method

.method final stop()V
    .registers 3

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzeho:Landroid/os/Handler;

    if-nez v0, :cond_5

    return-void

    .line 26
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzehi:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 27
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzeho:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbdq;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzbdq;-><init>(Lcom/google/android/gms/internal/ads/zzbdr;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzeho:Landroid/os/Handler;

    return-void
.end method

.method final zza(Lcom/google/android/gms/internal/ads/zzbdt;)V
    .registers 2

    .line 30
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzehp:Lcom/google/android/gms/internal/ads/zzbdt;

    return-void
.end method

.method final zza([F)Z
    .registers 6

    .line 59
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzehj:Ljava/lang/Object;

    monitor-enter v0

    .line 60
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzehn:[F

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 61
    monitor-exit v0

    return v2

    .line 62
    :cond_a
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzehn:[F

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzehn:[F

    array-length v3, v3

    invoke-static {v1, v2, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p1, 0x1

    .line 63
    monitor-exit v0

    return p1

    :catchall_15
    move-exception p1

    .line 64
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p1
.end method
