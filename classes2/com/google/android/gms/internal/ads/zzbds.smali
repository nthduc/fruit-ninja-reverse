.class public final Lcom/google/android/gms/internal/ads/zzbds;
.super Ljava/lang/Thread;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
.implements Lcom/google/android/gms/internal/ads/zzbdt;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# static fields
.field private static final zzehq:[F


# instance fields
.field private height:I

.field private width:I

.field private final zzehn:[F

.field private final zzehr:Lcom/google/android/gms/internal/ads/zzbdr;

.field private final zzehs:[F

.field private final zzeht:[F

.field private final zzehu:[F

.field private final zzehv:[F

.field private final zzehw:[F

.field private final zzehx:[F

.field private zzehy:F

.field private zzehz:F

.field private zzeia:F

.field private zzeib:Landroid/graphics/SurfaceTexture;

.field private zzeic:Landroid/graphics/SurfaceTexture;

.field private zzeid:I

.field private zzeie:I

.field private zzeif:I

.field private zzeig:Ljava/nio/FloatBuffer;

.field private final zzeih:Ljava/util/concurrent/CountDownLatch;

.field private final zzeii:Ljava/lang/Object;

.field private zzeij:Ljavax/microedition/khronos/egl/EGL10;

.field private zzeik:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private zzeil:Ljavax/microedition/khronos/egl/EGLContext;

.field private zzeim:Ljavax/microedition/khronos/egl/EGLSurface;

.field private volatile zzein:Z

.field private volatile zzeio:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0xc

    .line 316
    new-array v0, v0, [F

    fill-array-data v0, :array_a

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbds;->zzehq:[F

    return-void

    :array_a
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const-string v0, "SphericalVideoProcessor"

    .line 1
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbds;->zzehq:[F

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x2

    .line 3
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 4
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzeig:Ljava/nio/FloatBuffer;

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzeig:Ljava/nio/FloatBuffer;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbds;->zzehq:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    const/16 v0, 0x9

    .line 7
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzehn:[F

    .line 8
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzehs:[F

    .line 9
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzeht:[F

    .line 10
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzehu:[F

    .line 11
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzehv:[F

    .line 12
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzehw:[F

    .line 13
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzehx:[F

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 14
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzehy:F

    .line 15
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbdr;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzbdr;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzehr:Lcom/google/android/gms/internal/ads/zzbdr;

    .line 16
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzehr:Lcom/google/android/gms/internal/ads/zzbdr;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzbdr;->zza(Lcom/google/android/gms/internal/ads/zzbdt;)V

    .line 17
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzeih:Ljava/util/concurrent/CountDownLatch;

    .line 18
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzeii:Ljava/lang/Object;

    return-void
.end method

.method private static zza([FF)V
    .registers 7

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 262
    aput v1, p0, v0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 263
    aput v0, p0, v1

    const/4 v1, 0x2

    .line 264
    aput v0, p0, v1

    const/4 v1, 0x3

    .line 265
    aput v0, p0, v1

    float-to-double v1, p1

    .line 266
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float p1, v3

    const/4 v3, 0x4

    aput p1, p0, v3

    .line 267
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    neg-double v3, v3

    double-to-float p1, v3

    const/4 v3, 0x5

    aput p1, p0, v3

    const/4 p1, 0x6

    .line 268
    aput v0, p0, p1

    .line 269
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float p1, v3

    const/4 v0, 0x7

    aput p1, p0, v0

    .line 270
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float p1, v0

    const/16 v0, 0x8

    aput p1, p0, v0

    return-void
.end method

.method private static zza([F[F[F)V
    .registers 15

    const/4 v0, 0x0

    .line 252
    aget v1, p1, v0

    aget v2, p2, v0

    mul-float v1, v1, v2

    const/4 v2, 0x1

    aget v3, p1, v2

    const/4 v4, 0x3

    aget v5, p2, v4

    mul-float v3, v3, v5

    add-float/2addr v1, v3

    const/4 v3, 0x2

    aget v5, p1, v3

    const/4 v6, 0x6

    aget v7, p2, v6

    mul-float v5, v5, v7

    add-float/2addr v1, v5

    aput v1, p0, v0

    .line 253
    aget v1, p1, v0

    aget v5, p2, v2

    mul-float v1, v1, v5

    aget v5, p1, v2

    const/4 v7, 0x4

    aget v8, p2, v7

    mul-float v5, v5, v8

    add-float/2addr v1, v5

    aget v5, p1, v3

    const/4 v8, 0x7

    aget v9, p2, v8

    mul-float v5, v5, v9

    add-float/2addr v1, v5

    aput v1, p0, v2

    .line 254
    aget v1, p1, v0

    aget v5, p2, v3

    mul-float v1, v1, v5

    aget v5, p1, v2

    const/4 v9, 0x5

    aget v10, p2, v9

    mul-float v5, v5, v10

    add-float/2addr v1, v5

    aget v5, p1, v3

    const/16 v10, 0x8

    aget v11, p2, v10

    mul-float v5, v5, v11

    add-float/2addr v1, v5

    aput v1, p0, v3

    .line 255
    aget v1, p1, v4

    aget v5, p2, v0

    mul-float v1, v1, v5

    aget v5, p1, v7

    aget v11, p2, v4

    mul-float v5, v5, v11

    add-float/2addr v1, v5

    aget v5, p1, v9

    aget v11, p2, v6

    mul-float v5, v5, v11

    add-float/2addr v1, v5

    aput v1, p0, v4

    .line 256
    aget v1, p1, v4

    aget v5, p2, v2

    mul-float v1, v1, v5

    aget v5, p1, v7

    aget v11, p2, v7

    mul-float v5, v5, v11

    add-float/2addr v1, v5

    aget v5, p1, v9

    aget v11, p2, v8

    mul-float v5, v5, v11

    add-float/2addr v1, v5

    aput v1, p0, v7

    .line 257
    aget v1, p1, v4

    aget v5, p2, v3

    mul-float v1, v1, v5

    aget v5, p1, v7

    aget v11, p2, v9

    mul-float v5, v5, v11

    add-float/2addr v1, v5

    aget v5, p1, v9

    aget v11, p2, v10

    mul-float v5, v5, v11

    add-float/2addr v1, v5

    aput v1, p0, v9

    .line 258
    aget v1, p1, v6

    aget v0, p2, v0

    mul-float v1, v1, v0

    aget v0, p1, v8

    aget v4, p2, v4

    mul-float v0, v0, v4

    add-float/2addr v1, v0

    aget v0, p1, v10

    aget v4, p2, v6

    mul-float v0, v0, v4

    add-float/2addr v1, v0

    aput v1, p0, v6

    .line 259
    aget v0, p1, v6

    aget v1, p2, v2

    mul-float v0, v0, v1

    aget v1, p1, v8

    aget v2, p2, v7

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    aget v1, p1, v10

    aget v2, p2, v8

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    aput v0, p0, v8

    .line 260
    aget v0, p1, v6

    aget v1, p2, v3

    mul-float v0, v0, v1

    aget v1, p1, v8

    aget v2, p2, v9

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    aget p1, p1, v10

    aget p2, p2, v10

    mul-float p1, p1, p2

    add-float/2addr v0, p1

    aput v0, p0, v10

    return-void
.end method

.method private static zzb([FF)V
    .registers 6

    float-to-double v0, p1

    .line 272
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float p1, v2

    const/4 v2, 0x0

    aput p1, p0, v2

    .line 273
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    neg-double v2, v2

    double-to-float p1, v2

    const/4 v2, 0x1

    aput p1, p0, v2

    const/4 p1, 0x0

    const/4 v2, 0x2

    .line 274
    aput p1, p0, v2

    .line 275
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    const/4 v3, 0x3

    aput v2, p0, v3

    .line 276
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/4 v1, 0x4

    aput v0, p0, v1

    const/4 v0, 0x5

    .line 277
    aput p1, p0, v0

    const/4 v0, 0x6

    .line 278
    aput p1, p0, v0

    const/4 v0, 0x7

    .line 279
    aput p1, p0, v0

    const/16 p1, 0x8

    const/high16 v0, 0x3f800000    # 1.0f

    .line 280
    aput v0, p0, p1

    return-void
.end method

.method private static zzd(ILjava/lang/String;)I
    .registers 5

    .line 282
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v0

    const-string v1, "createShader"

    .line 283
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbds;->zzfi(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz v0, :cond_5b

    .line 285
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    const-string p1, "shaderSource"

    .line 286
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbds;->zzfi(Ljava/lang/String;)V

    .line 287
    invoke-static {v0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const-string p1, "compileShader"

    .line 288
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbds;->zzfi(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 289
    new-array p1, p1, [I

    const v2, 0x8b81

    .line 290
    invoke-static {v0, v2, p1, v1}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    const-string v2, "getShaderiv"

    .line 291
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzbds;->zzfi(Ljava/lang/String;)V

    .line 292
    aget p1, p1, v1

    if-nez p1, :cond_5b

    const/16 p1, 0x25

    .line 293
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "Could not compile shader "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SphericalVideoRenderer"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-static {v0}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    const-string p0, "deleteShader"

    .line 296
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbds;->zzfi(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_5b
    return v0
.end method

.method private static zzfi(Ljava/lang/String;)V
    .registers 4

    .line 312
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-eqz v0, :cond_29

    .line 314
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x15

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": glError "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SphericalVideoRenderer"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    return-void
.end method

.method private final zzzq()Z
    .registers 8
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 300
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzeim:Ljavax/microedition/khronos/egl/EGLSurface;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_26

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v0, v3, :cond_26

    .line 301
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzeij:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzeik:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v6, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    .line 302
    invoke-interface {v0, v3, v4, v5, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    or-int/2addr v0, v1

    .line 303
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzeij:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzeik:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzeim:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v1, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result v1

    or-int/2addr v1, v0

    .line 304
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzeim:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 305
    :cond_26
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzeil:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v0, :cond_35

    .line 306
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzeij:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzeik:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v3, v4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    or-int/2addr v1, v0

    .line 307
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzeil:Ljavax/microedition/khronos/egl/EGLContext;

    .line 308
    :cond_35
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzeik:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v0, :cond_42

    .line 309
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzeij:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v3, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    move-result v0

    or-int/2addr v1, v0

    .line 310
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzeik:Ljavax/microedition/khronos/egl/EGLDisplay;

    :cond_42
    return v1
.end method


# virtual methods
.method public final onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .registers 3

    .line 41
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzeif:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzeif:I

    .line 42
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzeii:Ljava/lang/Object;

    monitor-enter p1

    .line 43
    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzeii:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 44
    monitor-exit p1

    return-void

    :catchall_10
    move-exception v0

    monitor-exit p1
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public final run()V
    .registers 15

    .line 48
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzeic:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_f

    const-string v0, "SphericalVideoProcessor started with no output texture."

    .line 49
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzayp;->zzfc(Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzeih:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    .line 53
    :cond_f
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzeij:Ljavax/microedition/khronos/egl/EGL10;

    .line 54
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzeij:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzeik:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 55
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzeik:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v0, v1, :cond_2f

    :cond_2c
    :goto_2c
    const/4 v0, 0x0

    goto/16 :goto_9e

    .line 57
    :cond_2f
    new-array v0, v3, [I

    .line 58
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzeij:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzeik:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v1, v7, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v0

    if-nez v0, :cond_3c

    goto :goto_2c

    .line 61
    :cond_3c
    new-array v0, v5, [I

    .line 62
    new-array v1, v5, [Ljavax/microedition/khronos/egl/EGLConfig;

    const/16 v7, 0xb

    .line 63
    new-array v9, v7, [I

    fill-array-data v9, :array_3da

    .line 64
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzeij:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzeik:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v11, 0x1

    move-object v10, v1

    move-object v12, v0

    invoke-interface/range {v7 .. v12}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v7

    if-eqz v7, :cond_5b

    .line 65
    aget v0, v0, v6

    if-lez v0, :cond_5b

    .line 66
    aget-object v0, v1, v6

    goto :goto_5c

    :cond_5b
    move-object v0, v4

    :goto_5c
    if-nez v0, :cond_5f

    goto :goto_2c

    .line 71
    :cond_5f
    new-array v1, v2, [I

    fill-array-data v1, :array_3f4

    .line 72
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzeij:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzeik:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v9, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v7, v8, v0, v9, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzeil:Ljavax/microedition/khronos/egl/EGLContext;

    .line 73
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzeil:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v1, :cond_2c

    sget-object v7, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v1, v7, :cond_79

    goto :goto_2c

    .line 75
    :cond_79
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzeij:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzeik:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzeic:Landroid/graphics/SurfaceTexture;

    invoke-interface {v1, v7, v0, v8, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzeim:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 76
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzeim:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_2c

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v0, v1, :cond_8e

    goto :goto_2c

    .line 78
    :cond_8e
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzeij:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzeik:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzeim:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzeil:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v7, v7, v8}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_9d

    goto :goto_2c

    :cond_9d
    const/4 v0, 0x1

    :goto_9e
    const v1, 0x8b31

    .line 85
    sget-object v7, Lcom/google/android/gms/internal/ads/zzabb;->zzcpr:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 87
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v8

    .line 88
    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzaaq;->zzrf()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c2

    .line 90
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v7

    .line 91
    check-cast v7, Ljava/lang/String;

    goto :goto_c4

    :cond_c2
    const-string v7, "attribute highp vec3 aPosition;varying vec3 pos;void main() {  gl_Position = vec4(aPosition, 1.0);  pos = aPosition;}"

    .line 93
    :goto_c4
    invoke-static {v1, v7}, Lcom/google/android/gms/internal/ads/zzbds;->zzd(ILjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_cd

    :goto_ca
    const/4 v8, 0x0

    goto/16 :goto_14f

    :cond_cd
    const v7, 0x8b30

    .line 97
    sget-object v8, Lcom/google/android/gms/internal/ads/zzabb;->zzcps:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 99
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v9

    .line 100
    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzaaq;->zzrf()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_f1

    .line 102
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v8

    .line 103
    check-cast v8, Ljava/lang/String;

    goto :goto_f3

    :cond_f1
    const-string v8, "#extension GL_OES_EGL_image_external : require\n#define INV_PI 0.3183\nprecision highp float;varying vec3 pos;uniform samplerExternalOES uSplr;uniform mat3 uVMat;uniform float uFOVx;uniform float uFOVy;void main() {  vec3 ray = vec3(pos.x * tan(uFOVx), pos.y * tan(uFOVy), -1);  ray = (uVMat * ray).xyz;  ray = normalize(ray);  vec2 texCrd = vec2(    0.5 + atan(ray.x, - ray.z) * INV_PI * 0.5, acos(ray.y) * INV_PI);  gl_FragColor = vec4(texture2D(uSplr, texCrd).xyz, 1.0);}"

    .line 105
    :goto_f3
    invoke-static {v7, v8}, Lcom/google/android/gms/internal/ads/zzbds;->zzd(ILjava/lang/String;)I

    move-result v7

    if-nez v7, :cond_fa

    goto :goto_ca

    .line 108
    :cond_fa
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v8

    const-string v9, "createProgram"

    .line 109
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzbds;->zzfi(Ljava/lang/String;)V

    if-eqz v8, :cond_14f

    .line 111
    invoke-static {v8, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    const-string v1, "attachShader"

    .line 112
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbds;->zzfi(Ljava/lang/String;)V

    .line 113
    invoke-static {v8, v7}, Landroid/opengl/GLES20;->glAttachShader(II)V

    const-string v1, "attachShader"

    .line 114
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbds;->zzfi(Ljava/lang/String;)V

    .line 115
    invoke-static {v8}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    const-string v1, "linkProgram"

    .line 116
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbds;->zzfi(Ljava/lang/String;)V

    .line 117
    new-array v1, v5, [I

    const v7, 0x8b82

    .line 118
    invoke-static {v8, v7, v1, v6}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    const-string v7, "getProgramiv"

    .line 119
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzbds;->zzfi(Ljava/lang/String;)V

    .line 120
    aget v1, v1, v6

    if-eq v1, v5, :cond_147

    const-string v1, "SphericalVideoRenderer"

    const-string v7, "Could not link program: "

    .line 121
    invoke-static {v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-static {v8}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v1

    const-string v7, "SphericalVideoRenderer"

    invoke-static {v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-static {v8}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    const-string v1, "deleteProgram"

    .line 124
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbds;->zzfi(Ljava/lang/String;)V

    goto :goto_ca

    .line 126
    :cond_147
    invoke-static {v8}, Landroid/opengl/GLES20;->glValidateProgram(I)V

    const-string v1, "validateProgram"

    .line 127
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbds;->zzfi(Ljava/lang/String;)V

    .line 129
    :cond_14f
    :goto_14f
    iput v8, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzeid:I

    .line 130
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzeid:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string v1, "useProgram"

    .line 131
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbds;->zzfi(Ljava/lang/String;)V

    .line 132
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzeid:I

    const-string v7, "aPosition"

    invoke-static {v1, v7}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    const/4 v9, 0x3

    const/16 v10, 0x1406

    const/4 v11, 0x0

    const/16 v12, 0xc

    .line 133
    iget-object v13, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzeig:Ljava/nio/FloatBuffer;

    move v8, v1

    invoke-static/range {v8 .. v13}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const-string v7, "vertexAttribPointer"

    .line 134
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzbds;->zzfi(Ljava/lang/String;)V

    .line 135
    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const-string v1, "enableVertexAttribArray"

    .line 136
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbds;->zzfi(Ljava/lang/String;)V

    .line 137
    new-array v1, v5, [I

    .line 138
    invoke-static {v5, v1, v6}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    const-string v7, "genTextures"

    .line 139
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzbds;->zzfi(Ljava/lang/String;)V

    .line 140
    aget v1, v1, v6

    const v7, 0x8d65

    .line 141
    invoke-static {v7, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const-string v8, "bindTextures"

    .line 142
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzbds;->zzfi(Ljava/lang/String;)V

    const/16 v8, 0x2800

    const/16 v9, 0x2601

    .line 143
    invoke-static {v7, v8, v9}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const-string v8, "texParameteri"

    .line 144
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzbds;->zzfi(Ljava/lang/String;)V

    const/16 v8, 0x2801

    .line 145
    invoke-static {v7, v8, v9}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const-string v8, "texParameteri"

    .line 146
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzbds;->zzfi(Ljava/lang/String;)V

    const/16 v8, 0x2802

    const v9, 0x812f

    .line 147
    invoke-static {v7, v8, v9}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const-string v8, "texParameteri"

    .line 148
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzbds;->zzfi(Ljava/lang/String;)V

    const/16 v8, 0x2803

    .line 149
    invoke-static {v7, v8, v9}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const-string v7, "texParameteri"

    .line 150
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzbds;->zzfi(Ljava/lang/String;)V

    .line 151
    iget v7, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzeid:I

    const-string v8, "uVMat"

    invoke-static {v7, v8}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzeie:I

    const/16 v7, 0x9

    .line 152
    new-array v7, v7, [F

    fill-array-data v7, :array_3fe

    .line 153
    iget v8, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzeie:I

    invoke-static {v8, v5, v6, v7, v6}, Landroid/opengl/GLES20;->glUniformMatrix3fv(IIZ[FI)V

    .line 156
    iget v7, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzeid:I

    if-eqz v7, :cond_1dc

    const/4 v7, 0x1

    goto :goto_1dd

    :cond_1dc
    const/4 v7, 0x0

    :goto_1dd
    if-eqz v0, :cond_39f

    if-nez v7, :cond_1e3

    goto/16 :goto_39f

    .line 166
    :cond_1e3
    new-instance v0, Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzeib:Landroid/graphics/SurfaceTexture;

    .line 167
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzeib:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 168
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzeih:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 169
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzehr:Lcom/google/android/gms/internal/ads/zzbdr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdr;->start()V

    .line 170
    :try_start_1f9
    iput-boolean v5, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzein:Z

    .line 171
    :catch_1fb
    :goto_1fb
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzeio:Z

    if-nez v0, :cond_349

    .line 173
    :goto_1ff
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzeif:I

    if-lez v0, :cond_20e

    .line 174
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzeib:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 175
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzeif:I

    sub-int/2addr v0, v5

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzeif:I

    goto :goto_1ff

    .line 176
    :cond_20e
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzehr:Lcom/google/android/gms/internal/ads/zzbdr;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzehn:[F

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbdr;->zza([F)Z

    move-result v0

    const/4 v1, 0x5

    const/4 v7, 0x4

    const v8, 0x3fc90fdb

    if-eqz v0, :cond_294

    .line 177
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzehy:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_289

    .line 178
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzehn:[F

    .line 179
    new-array v9, v2, [F

    const/4 v10, 0x0

    aput v10, v9, v6

    const/high16 v11, 0x3f800000    # 1.0f

    aput v11, v9, v5

    aput v10, v9, v3

    .line 180
    new-array v10, v2, [F

    aget v11, v0, v6

    aget v12, v9, v6

    mul-float v11, v11, v12

    aget v12, v0, v5

    aget v13, v9, v5

    mul-float v12, v12, v13

    add-float/2addr v11, v12

    aget v12, v0, v3

    aget v13, v9, v3

    mul-float v12, v12, v13

    add-float/2addr v11, v12

    aput v11, v10, v6

    aget v11, v0, v2

    aget v12, v9, v6

    mul-float v11, v11, v12

    aget v12, v0, v7

    aget v13, v9, v5

    mul-float v12, v12, v13

    add-float/2addr v11, v12

    aget v12, v0, v1

    aget v13, v9, v3

    mul-float v12, v12, v13

    add-float/2addr v11, v12

    aput v11, v10, v5

    const/4 v11, 0x6

    aget v11, v0, v11

    aget v12, v9, v6

    mul-float v11, v11, v12

    const/4 v12, 0x7

    aget v12, v0, v12

    aget v13, v9, v5

    mul-float v12, v12, v13

    add-float/2addr v11, v12

    const/16 v12, 0x8

    aget v0, v0, v12

    aget v9, v9, v3

    mul-float v0, v0, v9

    add-float/2addr v11, v0

    aput v11, v10, v3

    .line 182
    aget v0, v10, v5

    float-to-double v11, v0

    aget v0, v10, v6

    float-to-double v9, v0

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v9

    double-to-float v0, v9

    sub-float/2addr v0, v8

    neg-float v0, v0

    .line 183
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzehy:F

    .line 184
    :cond_289
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzehw:[F

    iget v9, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzehy:F

    iget v10, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzehz:F

    add-float/2addr v9, v10

    invoke-static {v0, v9}, Lcom/google/android/gms/internal/ads/zzbds;->zzb([FF)V

    goto :goto_2a3

    .line 185
    :cond_294
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzehn:[F

    const v9, -0x4036f025

    invoke-static {v0, v9}, Lcom/google/android/gms/internal/ads/zzbds;->zza([FF)V

    .line 186
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzehw:[F

    iget v9, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzehz:F

    invoke-static {v0, v9}, Lcom/google/android/gms/internal/ads/zzbds;->zzb([FF)V

    .line 187
    :goto_2a3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzehs:[F

    invoke-static {v0, v8}, Lcom/google/android/gms/internal/ads/zzbds;->zza([FF)V

    .line 188
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzeht:[F

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzehw:[F

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzehs:[F

    invoke-static {v0, v8, v9}, Lcom/google/android/gms/internal/ads/zzbds;->zza([F[F[F)V

    .line 189
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzehu:[F

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzehn:[F

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzeht:[F

    invoke-static {v0, v8, v9}, Lcom/google/android/gms/internal/ads/zzbds;->zza([F[F[F)V

    .line 190
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzehv:[F

    iget v8, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzeia:F

    invoke-static {v0, v8}, Lcom/google/android/gms/internal/ads/zzbds;->zza([FF)V

    .line 191
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzehx:[F

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzehv:[F

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzehu:[F

    invoke-static {v0, v8, v9}, Lcom/google/android/gms/internal/ads/zzbds;->zza([F[F[F)V

    .line 192
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzeie:I

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzehx:[F

    invoke-static {v0, v5, v6, v8, v6}, Landroid/opengl/GLES20;->glUniformMatrix3fv(IIZ[FI)V

    .line 193
    invoke-static {v1, v6, v7}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    const-string v0, "drawArrays"

    .line 194
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbds;->zzfi(Ljava/lang/String;)V

    .line 195
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 196
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzeij:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzeik:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzeim:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 197
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzein:Z

    if-eqz v0, :cond_32f

    .line 199
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbds;->width:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbds;->height:I

    invoke-static {v6, v6, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    const-string v0, "viewport"

    .line 200
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbds;->zzfi(Ljava/lang/String;)V

    .line 201
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzeid:I

    const-string v1, "uFOVx"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    .line 202
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzeid:I

    const-string v7, "uFOVy"

    invoke-static {v1, v7}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    .line 203
    iget v7, p0, Lcom/google/android/gms/internal/ads/zzbds;->width:I

    iget v8, p0, Lcom/google/android/gms/internal/ads/zzbds;->height:I

    const v9, 0x3f5f66f3

    if-le v7, v8, :cond_31e

    .line 204
    invoke-static {v0, v9}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 205
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbds;->height:I

    int-to-float v0, v0

    mul-float v0, v0, v9

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzbds;->width:I

    int-to-float v7, v7

    div-float/2addr v0, v7

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    goto :goto_32d

    .line 206
    :cond_31e
    iget v7, p0, Lcom/google/android/gms/internal/ads/zzbds;->width:I

    int-to-float v7, v7

    mul-float v7, v7, v9

    iget v8, p0, Lcom/google/android/gms/internal/ads/zzbds;->height:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    invoke-static {v0, v7}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 207
    invoke-static {v1, v9}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 208
    :goto_32d
    iput-boolean v6, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzein:Z
    :try_end_32f
    .catch Ljava/lang/IllegalStateException; {:try_start_1f9 .. :try_end_32f} :catch_37a
    .catch Ljava/lang/Throwable; {:try_start_1f9 .. :try_end_32f} :catch_35b
    .catchall {:try_start_1f9 .. :try_end_32f} :catchall_359

    .line 209
    :cond_32f
    :try_start_32f
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzeii:Ljava/lang/Object;

    monitor-enter v0
    :try_end_332
    .catch Ljava/lang/InterruptedException; {:try_start_32f .. :try_end_332} :catch_1fb
    .catch Ljava/lang/IllegalStateException; {:try_start_32f .. :try_end_332} :catch_37a
    .catch Ljava/lang/Throwable; {:try_start_32f .. :try_end_332} :catch_35b
    .catchall {:try_start_32f .. :try_end_332} :catchall_359

    .line 210
    :try_start_332
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzeio:Z

    if-nez v1, :cond_343

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzein:Z

    if-nez v1, :cond_343

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzeif:I

    if-nez v1, :cond_343

    .line 211
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzeii:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 212
    :cond_343
    monitor-exit v0

    goto/16 :goto_1fb

    :catchall_346
    move-exception v1

    monitor-exit v0
    :try_end_348
    .catchall {:try_start_332 .. :try_end_348} :catchall_346

    :try_start_348
    throw v1
    :try_end_349
    .catch Ljava/lang/InterruptedException; {:try_start_348 .. :try_end_349} :catch_1fb
    .catch Ljava/lang/IllegalStateException; {:try_start_348 .. :try_end_349} :catch_37a
    .catch Ljava/lang/Throwable; {:try_start_348 .. :try_end_349} :catch_35b
    .catchall {:try_start_348 .. :try_end_349} :catchall_359

    .line 215
    :cond_349
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzehr:Lcom/google/android/gms/internal/ads/zzbdr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdr;->stop()V

    .line 216
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzeib:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v4}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 217
    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzeib:Landroid/graphics/SurfaceTexture;

    .line 218
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbds;->zzzq()Z

    return-void

    :catchall_359
    move-exception v0

    goto :goto_38f

    :catch_35b
    move-exception v0

    :try_start_35c
    const-string v1, "SphericalVideoProcessor died."

    .line 228
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzayp;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 229
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkv()Lcom/google/android/gms/internal/ads/zzayb;

    move-result-object v1

    const-string v2, "SphericalVideoProcessor.run.2"

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzayb;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_36a
    .catchall {:try_start_35c .. :try_end_36a} :catchall_359

    .line 230
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzehr:Lcom/google/android/gms/internal/ads/zzbdr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdr;->stop()V

    .line 231
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzeib:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v4}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 232
    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzeib:Landroid/graphics/SurfaceTexture;

    .line 233
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbds;->zzzq()Z

    return-void

    :catch_37a
    :try_start_37a
    const-string v0, "SphericalVideoProcessor halted unexpectedly."

    .line 221
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzayp;->zzfe(Ljava/lang/String;)V
    :try_end_37f
    .catchall {:try_start_37a .. :try_end_37f} :catchall_359

    .line 222
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzehr:Lcom/google/android/gms/internal/ads/zzbdr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdr;->stop()V

    .line 223
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzeib:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v4}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 224
    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzeib:Landroid/graphics/SurfaceTexture;

    .line 225
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbds;->zzzq()Z

    return-void

    .line 235
    :goto_38f
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzehr:Lcom/google/android/gms/internal/ads/zzbdr;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbdr;->stop()V

    .line 236
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzeib:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1, v4}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 237
    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzeib:Landroid/graphics/SurfaceTexture;

    .line 238
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbds;->zzzq()Z

    .line 239
    throw v0

    .line 158
    :cond_39f
    :goto_39f
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzeij:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "EGL initialization failed: "

    .line 159
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3ba

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3bf

    :cond_3ba
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 160
    :goto_3bf
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzayp;->zzfc(Ljava/lang/String;)V

    .line 161
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkv()Lcom/google/android/gms/internal/ads/zzayb;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    const-string v0, "SphericalVideoProcessor.run.1"

    .line 162
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzayb;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 163
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbds;->zzzq()Z

    .line 164
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzeih:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    nop

    :array_3da
    .array-data 4
        0x3040
        0x4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3025
        0x10
        0x3038
    .end array-data

    :array_3f4
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data

    :array_3fe
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final zza(Landroid/graphics/SurfaceTexture;II)V
    .registers 4

    .line 20
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzbds;->width:I

    .line 21
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzbds;->height:I

    .line 22
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzeic:Landroid/graphics/SurfaceTexture;

    return-void
.end method

.method public final zzb(FF)V
    .registers 6

    .line 240
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbds;->width:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbds;->height:I

    const v2, 0x3fdf66f3

    if-le v0, v1, :cond_11

    mul-float p1, p1, v2

    int-to-float v1, v0

    div-float/2addr p1, v1

    mul-float p2, p2, v2

    int-to-float v0, v0

    goto :goto_18

    :cond_11
    mul-float p1, p1, v2

    int-to-float v0, v1

    div-float/2addr p1, v0

    mul-float p2, p2, v2

    int-to-float v0, v1

    :goto_18
    div-float/2addr p2, v0

    .line 245
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzehz:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzehz:F

    .line 246
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzeia:F

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzeia:F

    .line 247
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzeia:F

    const p2, -0x4036f025

    cmpg-float p1, p1, p2

    if-gez p1, :cond_2e

    .line 248
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzeia:F

    .line 249
    :cond_2e
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzeia:F

    const p2, 0x3fc90fdb

    cmpl-float p1, p1, p2

    if-lez p1, :cond_39

    .line 250
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzeia:F

    :cond_39
    return-void
.end method

.method public final zzm(II)V
    .registers 4

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzeii:Ljava/lang/Object;

    monitor-enter v0

    .line 25
    :try_start_3
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbds;->width:I

    .line 26
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzbds;->height:I

    const/4 p1, 0x1

    .line 27
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzein:Z

    .line 28
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzeii:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 29
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p1
.end method

.method public final zzux()V
    .registers 3

    .line 45
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzeii:Ljava/lang/Object;

    monitor-enter v0

    .line 46
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzeii:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 47
    monitor-exit v0

    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public final zzzo()V
    .registers 3

    .line 30
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzeii:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 31
    :try_start_4
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzeio:Z

    const/4 v1, 0x0

    .line 32
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzeic:Landroid/graphics/SurfaceTexture;

    .line 33
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzeii:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 34
    monitor-exit v0

    return-void

    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public final zzzp()Landroid/graphics/SurfaceTexture;
    .registers 2

    .line 35
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzeic:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 37
    :cond_6
    :try_start_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzeih:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_b} :catch_b

    .line 40
    :catch_b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzeib:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method
