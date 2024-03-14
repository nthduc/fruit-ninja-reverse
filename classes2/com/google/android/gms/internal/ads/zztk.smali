.class public final Lcom/google/android/gms/internal/ads/zztk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private final lock:Ljava/lang/Object;

.field private zzbvb:Lcom/google/android/gms/internal/ads/zztb;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private zzbvm:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private final zzvr:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zztk;->lock:Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zztk;->zzvr:Landroid/content/Context;

    return-void
.end method

.method private final disconnect()V
    .registers 3

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztk;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 17
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zztk;->zzbvb:Lcom/google/android/gms/internal/ads/zztb;

    if-nez v1, :cond_9

    .line 18
    monitor-exit v0

    return-void

    .line 19
    :cond_9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zztk;->zzbvb:Lcom/google/android/gms/internal/ads/zztb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zztb;->disconnect()V

    const/4 v1, 0x0

    .line 20
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zztk;->zzbvb:Lcom/google/android/gms/internal/ads/zztb;

    .line 21
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    .line 22
    monitor-exit v0

    return-void

    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zztk;)V
    .registers 1

    .line 23
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zztk;->disconnect()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zztk;Z)Z
    .registers 2

    const/4 p1, 0x1

    .line 26
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zztk;->zzbvm:Z

    return p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zztk;)Ljava/lang/Object;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zztk;->lock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/ads/zztk;)Z
    .registers 1

    .line 25
    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zztk;->zzbvm:Z

    return p0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/ads/zztk;)Lcom/google/android/gms/internal/ads/zztb;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zztk;->zzbvb:Lcom/google/android/gms/internal/ads/zztb;

    return-object p0
.end method


# virtual methods
.method final zzb(Lcom/google/android/gms/internal/ads/zzte;)Ljava/util/concurrent/Future;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzte;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/zztj;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zztj;-><init>(Lcom/google/android/gms/internal/ads/zztk;)V

    .line 6
    new-instance v1, Lcom/google/android/gms/internal/ads/zztm;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/gms/internal/ads/zztm;-><init>(Lcom/google/android/gms/internal/ads/zztk;Lcom/google/android/gms/internal/ads/zzte;Lcom/google/android/gms/internal/ads/zzbcg;)V

    .line 7
    new-instance p1, Lcom/google/android/gms/internal/ads/zztq;

    invoke-direct {p1, p0, v0}, Lcom/google/android/gms/internal/ads/zztq;-><init>(Lcom/google/android/gms/internal/ads/zztk;Lcom/google/android/gms/internal/ads/zzbcg;)V

    .line 8
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zztk;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 10
    :try_start_12
    new-instance v3, Lcom/google/android/gms/internal/ads/zztb;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zztk;->zzvr:Landroid/content/Context;

    .line 11
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzlf()Lcom/google/android/gms/internal/ads/zzbas;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzbas;->zzyj()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v3, v4, v5, v1, p1}, Lcom/google/android/gms/internal/ads/zztb;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;)V

    .line 12
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zztk;->zzbvb:Lcom/google/android/gms/internal/ads/zztb;

    .line 13
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zztk;->zzbvb:Lcom/google/android/gms/internal/ads/zztb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zztb;->checkAvailabilityAndConnect()V

    .line 14
    monitor-exit v2

    return-object v0

    :catchall_2a
    move-exception p1

    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_12 .. :try_end_2c} :catchall_2a

    throw p1
.end method
