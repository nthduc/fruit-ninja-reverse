.class final Lcom/google/android/gms/internal/ads/zzqe;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/view/Choreographer$FrameCallback;


# static fields
.field private static final zzbmt:Lcom/google/android/gms/internal/ads/zzqe;


# instance fields
.field private final handler:Landroid/os/Handler;

.field public volatile zzbms:J

.field private final zzbmu:Landroid/os/HandlerThread;

.field private zzbmv:Landroid/view/Choreographer;

.field private zzbmw:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 31
    new-instance v0, Lcom/google/android/gms/internal/ads/zzqe;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzqe;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzqe;->zzbmt:Lcom/google/android/gms/internal/ads/zzqe;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ChoreographerOwner:Handler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzbmu:Landroid/os/HandlerThread;

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzbmu:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 5
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzbmu:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqe;->handler:Landroid/os/Handler;

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqe;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public static zzjp()Lcom/google/android/gms/internal/ads/zzqe;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzqe;->zzbmt:Lcom/google/android/gms/internal/ads/zzqe;

    return-object v0
.end method


# virtual methods
.method public final doFrame(J)V
    .registers 5

    .line 12
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzbms:J

    .line 13
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzbmv:Landroid/view/Choreographer;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p0, v0, v1}, Landroid/view/Choreographer;->postFrameCallbackDelayed(Landroid/view/Choreographer$FrameCallback;J)V

    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .registers 5

    .line 15
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eqz p1, :cond_2e

    if-eq p1, v0, :cond_1f

    const/4 v1, 0x2

    if-eq p1, v1, :cond_c

    const/4 p1, 0x0

    return p1

    .line 25
    :cond_c
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzbmw:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzbmw:I

    .line 26
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzbmw:I

    if-nez p1, :cond_1e

    .line 27
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzbmv:Landroid/view/Choreographer;

    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    const-wide/16 v1, 0x0

    .line 28
    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzbms:J

    :cond_1e
    return v0

    .line 20
    :cond_1f
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzbmw:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzbmw:I

    .line 21
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzbmw:I

    if-ne p1, v0, :cond_2d

    .line 22
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzbmv:Landroid/view/Choreographer;

    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_2d
    return v0

    .line 17
    :cond_2e
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzbmv:Landroid/view/Choreographer;

    return v0
.end method

.method public final zzjq()V
    .registers 3

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqe;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final zzjr()V
    .registers 3

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqe;->handler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
