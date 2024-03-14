.class public final Lcom/google/android/gms/internal/ads/zzpt;
.super Landroid/view/Surface;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x11
.end annotation


# static fields
.field private static zzbks:Z

.field private static zzbkt:Z


# instance fields
.field private final zzbbf:Z

.field private final zzbku:Lcom/google/android/gms/internal/ads/zzpv;

.field private zzbkv:Z


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzpv;Landroid/graphics/SurfaceTexture;Z)V
    .registers 4

    .line 20
    invoke-direct {p0, p2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 21
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpt;->zzbku:Lcom/google/android/gms/internal/ads/zzpv;

    .line 22
    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzpt;->zzbbf:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzpv;Landroid/graphics/SurfaceTexture;ZLcom/google/android/gms/internal/ads/zzpw;)V
    .registers 5

    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzpt;-><init>(Lcom/google/android/gms/internal/ads/zzpv;Landroid/graphics/SurfaceTexture;Z)V

    return-void
.end method

.method public static zzc(Landroid/content/Context;Z)Lcom/google/android/gms/internal/ads/zzpt;
    .registers 4

    .line 15
    sget v0, Lcom/google/android/gms/internal/ads/zzpq;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_1f

    if-eqz p1, :cond_11

    .line 17
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzpt;->zzc(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 p0, 0x1

    :goto_12
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzoz;->checkState(Z)V

    .line 18
    new-instance p0, Lcom/google/android/gms/internal/ads/zzpv;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzpv;-><init>()V

    .line 19
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzpv;->zzm(Z)Lcom/google/android/gms/internal/ads/zzpt;

    move-result-object p0

    return-object p0

    .line 16
    :cond_1f
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Unsupported prior to API level 17"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static declared-synchronized zzc(Landroid/content/Context;)Z
    .registers 6

    const-class v0, Lcom/google/android/gms/internal/ads/zzpt;

    monitor-enter v0

    .line 1
    :try_start_3
    sget-boolean v1, Lcom/google/android/gms/internal/ads/zzpt;->zzbkt:Z

    if-nez v1, :cond_53

    .line 2
    sget v1, Lcom/google/android/gms/internal/ads/zzpq;->SDK_INT:I

    const/16 v2, 0x11

    const/4 v3, 0x1

    if-lt v1, v2, :cond_51

    const/4 v1, 0x0

    .line 3
    invoke-static {v1}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v2

    const/16 v4, 0x3055

    .line 4
    invoke-static {v2, v4}, Landroid/opengl/EGL14;->eglQueryString(Landroid/opengl/EGLDisplay;I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4f

    const-string v4, "EGL_EXT_protected_content"

    .line 5
    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 7
    sget v2, Lcom/google/android/gms/internal/ads/zzpq;->SDK_INT:I

    const/16 v4, 0x18

    if-ne v2, v4, :cond_4b

    sget-object v2, Lcom/google/android/gms/internal/ads/zzpq;->MODEL:Ljava/lang/String;

    const-string v4, "SM-G950"

    .line 8
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3d

    sget-object v2, Lcom/google/android/gms/internal/ads/zzpq;->MODEL:Ljava/lang/String;

    const-string v4, "SM-G955"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 9
    :cond_3d
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v2, "android.hardware.vr.high_performance"

    .line 10
    invoke-virtual {p0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_4b

    const/4 p0, 0x1

    goto :goto_4c

    :cond_4b
    const/4 p0, 0x0

    :goto_4c
    if-nez p0, :cond_4f

    const/4 v1, 0x1

    .line 12
    :cond_4f
    sput-boolean v1, Lcom/google/android/gms/internal/ads/zzpt;->zzbks:Z

    .line 13
    :cond_51
    sput-boolean v3, Lcom/google/android/gms/internal/ads/zzpt;->zzbkt:Z

    .line 14
    :cond_53
    sget-boolean p0, Lcom/google/android/gms/internal/ads/zzpt;->zzbks:Z
    :try_end_55
    .catchall {:try_start_3 .. :try_end_55} :catchall_57

    monitor-exit v0

    return p0

    :catchall_57
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final release()V
    .registers 3

    .line 24
    invoke-super {p0}, Landroid/view/Surface;->release()V

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpt;->zzbku:Lcom/google/android/gms/internal/ads/zzpv;

    monitor-enter v0

    .line 26
    :try_start_6
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzpt;->zzbkv:Z

    if-nez v1, :cond_12

    .line 27
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpt;->zzbku:Lcom/google/android/gms/internal/ads/zzpv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzpv;->release()V

    const/4 v1, 0x1

    .line 28
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzpt;->zzbkv:Z

    .line 29
    :cond_12
    monitor-exit v0

    return-void

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_14

    throw v1
.end method
