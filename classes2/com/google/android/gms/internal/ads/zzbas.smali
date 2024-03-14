.class public final Lcom/google/android/gms/internal/ads/zzbas;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private handler:Landroid/os/Handler;

.field private final lock:Ljava/lang/Object;

.field private zzedb:Landroid/os/HandlerThread;

.field private zzedc:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbas;->zzedb:Landroid/os/HandlerThread;

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbas;->handler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbas;->zzedc:I

    .line 5
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbas;->lock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getHandler()Landroid/os/Handler;
    .registers 2

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbas;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public final zzyj()Landroid/os/Looper;
    .registers 4

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbas;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 7
    :try_start_3
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbas;->zzedc:I

    if-nez v1, :cond_3c

    .line 8
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbas;->zzedb:Landroid/os/HandlerThread;

    if-nez v1, :cond_31

    const-string v1, "Starting the looper thread."

    .line 9
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzayp;->zzei(Ljava/lang/String;)V

    .line 10
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "LooperProvider"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbas;->zzedb:Landroid/os/HandlerThread;

    .line 11
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbas;->zzedb:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 12
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdvo;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbas;->zzedb:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzdvo;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbas;->handler:Landroid/os/Handler;

    const-string v1, "Looper thread started."

    .line 13
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzayp;->zzei(Ljava/lang/String;)V

    goto :goto_43

    :cond_31
    const-string v1, "Resuming the looper thread"

    .line 14
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzayp;->zzei(Ljava/lang/String;)V

    .line 15
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbas;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    goto :goto_43

    .line 16
    :cond_3c
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbas;->zzedb:Landroid/os/HandlerThread;

    const-string v2, "Invalid state: mHandlerThread should already been initialized."

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    :goto_43
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbas;->zzedc:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzbas;->zzedc:I

    .line 18
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbas;->zzedb:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_51
    move-exception v1

    .line 19
    monitor-exit v0
    :try_end_53
    .catchall {:try_start_3 .. :try_end_53} :catchall_51

    throw v1
.end method
