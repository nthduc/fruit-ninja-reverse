.class final Lcom/google/android/gms/internal/ads/zzqt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field private final zzyh:Landroid/app/Application;

.field private final zzyi:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Application$ActivityLifecycleCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private zzyj:Z


# direct methods
.method public constructor <init>(Landroid/app/Application;Landroid/app/Application$ActivityLifecycleCallbacks;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzyj:Z

    .line 3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzyi:Ljava/lang/ref/WeakReference;

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzyh:Landroid/app/Application;

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzrb;)V
    .registers 3

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzyi:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application$ActivityLifecycleCallbacks;

    if-eqz v0, :cond_e

    .line 8
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzrb;->zza(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void

    .line 9
    :cond_e
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzyj:Z

    if-nez p1, :cond_1a

    .line 10
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzyh:Landroid/app/Application;

    invoke-virtual {p1, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzyj:Z
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1b

    :cond_1a
    return-void

    :catch_1b
    move-exception p1

    const-string v0, "Error while dispatching lifecycle callback."

    .line 14
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 4

    .line 16
    new-instance v0, Lcom/google/android/gms/internal/ads/zzqw;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzqw;-><init>(Lcom/google/android/gms/internal/ads/zzqt;Landroid/app/Activity;Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzqt;->zza(Lcom/google/android/gms/internal/ads/zzrb;)V

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .registers 3

    .line 28
    new-instance v0, Lcom/google/android/gms/internal/ads/zzrc;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzrc;-><init>(Lcom/google/android/gms/internal/ads/zzqt;Landroid/app/Activity;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzqt;->zza(Lcom/google/android/gms/internal/ads/zzrb;)V

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .registers 3

    .line 22
    new-instance v0, Lcom/google/android/gms/internal/ads/zzqx;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzqx;-><init>(Lcom/google/android/gms/internal/ads/zzqt;Landroid/app/Activity;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzqt;->zza(Lcom/google/android/gms/internal/ads/zzrb;)V

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .registers 3

    .line 20
    new-instance v0, Lcom/google/android/gms/internal/ads/zzqy;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzqy;-><init>(Lcom/google/android/gms/internal/ads/zzqt;Landroid/app/Activity;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzqt;->zza(Lcom/google/android/gms/internal/ads/zzrb;)V

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 4

    .line 26
    new-instance v0, Lcom/google/android/gms/internal/ads/zzqz;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzqz;-><init>(Lcom/google/android/gms/internal/ads/zzqt;Landroid/app/Activity;Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzqt;->zza(Lcom/google/android/gms/internal/ads/zzrb;)V

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .registers 3

    .line 18
    new-instance v0, Lcom/google/android/gms/internal/ads/zzqv;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzqv;-><init>(Lcom/google/android/gms/internal/ads/zzqt;Landroid/app/Activity;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzqt;->zza(Lcom/google/android/gms/internal/ads/zzrb;)V

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .registers 3

    .line 24
    new-instance v0, Lcom/google/android/gms/internal/ads/zzra;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzra;-><init>(Lcom/google/android/gms/internal/ads/zzqt;Landroid/app/Activity;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzqt;->zza(Lcom/google/android/gms/internal/ads/zzrb;)V

    return-void
.end method
