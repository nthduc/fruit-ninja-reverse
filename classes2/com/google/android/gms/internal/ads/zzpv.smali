.class final Lcom/google/android/gms/internal/ads/zzpv;
.super Landroid/os/HandlerThread;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
.implements Landroid/os/Handler$Callback;


# instance fields
.field private handler:Landroid/os/Handler;

.field private final zzbkw:[I

.field private zzbkx:Landroid/graphics/SurfaceTexture;

.field private zzbky:Ljava/lang/Error;

.field private zzbkz:Ljava/lang/RuntimeException;

.field private zzbla:Lcom/google/android/gms/internal/ads/zzpt;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "dummySurface"

    .line 1
    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzpv;->zzbkw:[I

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .registers 25

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 27
    iget v2, v0, Landroid/os/Message;->what:I

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v2, v7, :cond_47

    if-eq v2, v5, :cond_41

    if-eq v2, v4, :cond_12

    return v7

    .line 79
    :cond_12
    :try_start_12
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzpv;->zzbkx:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_24

    .line 80
    :try_start_17
    iput-object v3, v1, Lcom/google/android/gms/internal/ads/zzpv;->zzbla:Lcom/google/android/gms/internal/ads/zzpt;

    .line 81
    iput-object v3, v1, Lcom/google/android/gms/internal/ads/zzpv;->zzbkx:Landroid/graphics/SurfaceTexture;

    .line 82
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzpv;->zzbkw:[I

    invoke-static {v7, v0, v6}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_20} :catch_31
    .catchall {:try_start_17 .. :try_end_20} :catchall_2f

    .line 88
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzpv;->quit()Z

    goto :goto_3c

    :catchall_24
    move-exception v0

    .line 84
    :try_start_25
    iput-object v3, v1, Lcom/google/android/gms/internal/ads/zzpv;->zzbla:Lcom/google/android/gms/internal/ads/zzpt;

    .line 85
    iput-object v3, v1, Lcom/google/android/gms/internal/ads/zzpv;->zzbkx:Landroid/graphics/SurfaceTexture;

    .line 86
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzpv;->zzbkw:[I

    invoke-static {v7, v2, v6}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 87
    throw v0
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_2f} :catch_31
    .catchall {:try_start_25 .. :try_end_2f} :catchall_2f

    :catchall_2f
    move-exception v0

    goto :goto_3d

    :catch_31
    move-exception v0

    :try_start_32
    const-string v2, "DummySurface"

    const-string v3, "Failed to release dummy surface"

    .line 91
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_39
    .catchall {:try_start_32 .. :try_end_39} :catchall_2f

    .line 92
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzpv;->quit()Z

    :goto_3c
    return v7

    .line 94
    :goto_3d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzpv;->quit()Z

    .line 95
    throw v0

    .line 76
    :cond_41
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzpv;->zzbkx:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    return v7

    .line 28
    :cond_47
    :try_start_47
    iget v0, v0, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_4d

    const/4 v0, 0x1

    goto :goto_4e

    :cond_4d
    const/4 v0, 0x0

    .line 29
    :goto_4e
    invoke-static {v6}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v2

    if-eqz v2, :cond_56

    const/4 v8, 0x1

    goto :goto_57

    :cond_56
    const/4 v8, 0x0

    :goto_57
    const-string v9, "eglGetDisplay failed"

    .line 30
    invoke-static {v8, v9}, Lcom/google/android/gms/internal/ads/zzoz;->checkState(ZLjava/lang/Object;)V

    .line 31
    new-array v8, v5, [I

    .line 32
    invoke-static {v2, v8, v6, v8, v7}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v8

    const-string v9, "eglInitialize failed"

    .line 33
    invoke-static {v8, v9}, Lcom/google/android/gms/internal/ads/zzoz;->checkState(ZLjava/lang/Object;)V

    const/16 v8, 0x11

    .line 34
    new-array v9, v8, [I

    const/16 v8, 0x3040

    aput v8, v9, v6

    const/16 v16, 0x4

    aput v16, v9, v7

    const/16 v8, 0x3024

    aput v8, v9, v5

    const/16 v8, 0x8

    aput v8, v9, v4

    const/16 v10, 0x3023

    aput v10, v9, v16

    const/4 v15, 0x5

    aput v8, v9, v15

    const/16 v10, 0x3022

    const/16 v17, 0x6

    aput v10, v9, v17

    const/4 v14, 0x7

    aput v8, v9, v14

    const/16 v10, 0x3021

    aput v10, v9, v8

    const/16 v10, 0x9

    aput v8, v9, v10

    const/16 v8, 0xa

    const/16 v10, 0x3025

    aput v10, v9, v8

    const/16 v8, 0xb

    aput v6, v9, v8

    const/16 v8, 0xc

    const/16 v10, 0x3027

    aput v10, v9, v8

    const/16 v8, 0xd

    const/16 v18, 0x3038

    aput v18, v9, v8

    const/16 v8, 0xe

    const/16 v10, 0x3033

    aput v10, v9, v8

    const/16 v8, 0xf

    aput v16, v9, v8

    const/16 v8, 0x10

    aput v18, v9, v8

    .line 35
    new-array v13, v7, [Landroid/opengl/EGLConfig;

    .line 36
    new-array v12, v7, [I

    const/4 v10, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x0

    move-object v8, v2

    move-object v11, v13

    move-object/from16 v22, v12

    move/from16 v12, v19

    move-object/from16 v19, v13

    move/from16 v13, v20

    const/4 v3, 0x7

    move-object/from16 v14, v22

    const/4 v3, 0x5

    move/from16 v15, v21

    .line 37
    invoke-static/range {v8 .. v15}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v8

    if-eqz v8, :cond_e2

    .line 38
    aget v8, v22, v6

    if-lez v8, :cond_e2

    aget-object v8, v19, v6

    if-eqz v8, :cond_e2

    const/4 v8, 0x1

    goto :goto_e3

    :cond_e2
    const/4 v8, 0x0

    :goto_e3
    const-string v9, "eglChooseConfig failed"

    invoke-static {v8, v9}, Lcom/google/android/gms/internal/ads/zzoz;->checkState(ZLjava/lang/Object;)V

    .line 39
    aget-object v8, v19, v6

    const/16 v9, 0x32c0

    const/16 v10, 0x3098

    if-eqz v0, :cond_fd

    .line 41
    new-array v11, v3, [I

    aput v10, v11, v6

    aput v5, v11, v7

    aput v9, v11, v5

    aput v7, v11, v4

    aput v18, v11, v16

    goto :goto_105

    .line 42
    :cond_fd
    new-array v11, v4, [I

    aput v10, v11, v6

    aput v5, v11, v7

    aput v18, v11, v5

    .line 43
    :goto_105
    sget-object v10, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v2, v8, v10, v11, v6}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v10

    if-eqz v10, :cond_10f

    const/4 v11, 0x1

    goto :goto_110

    :cond_10f
    const/4 v11, 0x0

    :goto_110
    const-string v12, "eglCreateContext failed"

    .line 44
    invoke-static {v11, v12}, Lcom/google/android/gms/internal/ads/zzoz;->checkState(ZLjava/lang/Object;)V

    const/16 v11, 0x3056

    const/16 v12, 0x3057

    if-eqz v0, :cond_12d

    const/4 v13, 0x7

    .line 46
    new-array v13, v13, [I

    aput v12, v13, v6

    aput v7, v13, v7

    aput v11, v13, v5

    aput v7, v13, v4

    aput v9, v13, v16

    aput v7, v13, v3

    aput v18, v13, v17

    goto :goto_139

    .line 47
    :cond_12d
    new-array v13, v3, [I

    aput v12, v13, v6

    aput v7, v13, v7

    aput v11, v13, v5

    aput v7, v13, v4

    aput v18, v13, v16

    .line 48
    :goto_139
    invoke-static {v2, v8, v13, v6}, Landroid/opengl/EGL14;->eglCreatePbufferSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;[II)Landroid/opengl/EGLSurface;

    move-result-object v3

    if-eqz v3, :cond_141

    const/4 v4, 0x1

    goto :goto_142

    :cond_141
    const/4 v4, 0x0

    :goto_142
    const-string v5, "eglCreatePbufferSurface failed"

    .line 49
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzoz;->checkState(ZLjava/lang/Object;)V

    .line 50
    invoke-static {v2, v3, v3, v10}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v2

    const-string v3, "eglMakeCurrent failed"

    .line 51
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzoz;->checkState(ZLjava/lang/Object;)V

    .line 52
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzpv;->zzbkw:[I

    invoke-static {v7, v2, v6}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 53
    new-instance v2, Landroid/graphics/SurfaceTexture;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzpv;->zzbkw:[I

    aget v3, v3, v6

    invoke-direct {v2, v3}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzpv;->zzbkx:Landroid/graphics/SurfaceTexture;

    .line 54
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzpv;->zzbkx:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v2, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 55
    new-instance v2, Lcom/google/android/gms/internal/ads/zzpt;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzpv;->zzbkx:Landroid/graphics/SurfaceTexture;

    const/4 v4, 0x0

    invoke-direct {v2, v1, v3, v0, v4}, Lcom/google/android/gms/internal/ads/zzpt;-><init>(Lcom/google/android/gms/internal/ads/zzpv;Landroid/graphics/SurfaceTexture;ZLcom/google/android/gms/internal/ads/zzpw;)V

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzpv;->zzbla:Lcom/google/android/gms/internal/ads/zzpt;
    :try_end_16f
    .catch Ljava/lang/RuntimeException; {:try_start_47 .. :try_end_16f} :catch_18d
    .catch Ljava/lang/Error; {:try_start_47 .. :try_end_16f} :catch_17a
    .catchall {:try_start_47 .. :try_end_16f} :catchall_178

    .line 56
    monitor-enter p0

    .line 57
    :try_start_170
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notify()V

    .line 58
    monitor-exit p0

    goto :goto_19c

    :catchall_175
    move-exception v0

    monitor-exit p0
    :try_end_177
    .catchall {:try_start_170 .. :try_end_177} :catchall_175

    throw v0

    :catchall_178
    move-exception v0

    goto :goto_1a0

    :catch_17a
    move-exception v0

    :try_start_17b
    const-string v2, "DummySurface"

    const-string v3, "Failed to initialize dummy surface"

    .line 66
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 67
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzpv;->zzbky:Ljava/lang/Error;
    :try_end_184
    .catchall {:try_start_17b .. :try_end_184} :catchall_178

    .line 68
    monitor-enter p0

    .line 69
    :try_start_185
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notify()V

    .line 70
    monitor-exit p0

    goto :goto_19c

    :catchall_18a
    move-exception v0

    monitor-exit p0
    :try_end_18c
    .catchall {:try_start_185 .. :try_end_18c} :catchall_18a

    throw v0

    :catch_18d
    move-exception v0

    :try_start_18e
    const-string v2, "DummySurface"

    const-string v3, "Failed to initialize dummy surface"

    .line 60
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 61
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzpv;->zzbkz:Ljava/lang/RuntimeException;
    :try_end_197
    .catchall {:try_start_18e .. :try_end_197} :catchall_178

    .line 62
    monitor-enter p0

    .line 63
    :try_start_198
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notify()V

    .line 64
    monitor-exit p0

    :goto_19c
    return v7

    :catchall_19d
    move-exception v0

    monitor-exit p0
    :try_end_19f
    .catchall {:try_start_198 .. :try_end_19f} :catchall_19d

    throw v0

    .line 71
    :goto_1a0
    monitor-enter p0

    .line 72
    :try_start_1a1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notify()V

    .line 73
    monitor-exit p0
    :try_end_1a5
    .catchall {:try_start_1a1 .. :try_end_1a5} :catchall_1a6

    .line 74
    throw v0

    :catchall_1a6
    move-exception v0

    .line 73
    :try_start_1a7
    monitor-exit p0
    :try_end_1a8
    .catchall {:try_start_1a7 .. :try_end_1a8} :catchall_1a6

    throw v0
.end method

.method public final onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .registers 3

    .line 25
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzpv;->handler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final release()V
    .registers 3

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpv;->handler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final zzm(Z)Lcom/google/android/gms/internal/ads/zzpt;
    .registers 5

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzpv;->start()V

    .line 5
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzpv;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzpv;->handler:Landroid/os/Handler;

    .line 7
    monitor-enter p0

    .line 8
    :try_start_f
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpv;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_17

    const/4 p1, 0x1

    goto :goto_18

    :cond_17
    const/4 p1, 0x0

    :goto_18
    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 9
    :goto_1f
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzpv;->zzbla:Lcom/google/android/gms/internal/ads/zzpt;

    if-nez p1, :cond_31

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzpv;->zzbkz:Ljava/lang/RuntimeException;

    if-nez p1, :cond_31

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzpv;->zzbky:Ljava/lang/Error;
    :try_end_29
    .catchall {:try_start_f .. :try_end_29} :catchall_48

    if-nez p1, :cond_31

    .line 10
    :try_start_2b
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2e
    .catch Ljava/lang/InterruptedException; {:try_start_2b .. :try_end_2e} :catch_2f
    .catchall {:try_start_2b .. :try_end_2e} :catchall_48

    goto :goto_1f

    :catch_2f
    const/4 v2, 0x1

    goto :goto_1f

    .line 15
    :cond_31
    :try_start_31
    monitor-exit p0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_48

    if-eqz v2, :cond_3b

    .line 17
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 18
    :cond_3b
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzpv;->zzbkz:Ljava/lang/RuntimeException;

    if-nez p1, :cond_47

    .line 20
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzpv;->zzbky:Ljava/lang/Error;

    if-nez p1, :cond_46

    .line 22
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzpv;->zzbla:Lcom/google/android/gms/internal/ads/zzpt;

    return-object p1

    .line 21
    :cond_46
    throw p1

    .line 19
    :cond_47
    throw p1

    :catchall_48
    move-exception p1

    .line 15
    :try_start_49
    monitor-exit p0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    throw p1

    return-void
.end method
