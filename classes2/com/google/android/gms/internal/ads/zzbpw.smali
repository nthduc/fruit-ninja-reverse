.class public final Lcom/google/android/gms/internal/ads/zzbpw;
.super Lcom/google/android/gms/internal/ads/zzboq;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private final zzfoc:Ljava/util/concurrent/Executor;

.field private final zzfqz:Lcom/google/android/gms/internal/ads/zzafy;

.field private final zzfra:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbqn;Lcom/google/android/gms/internal/ads/zzafy;Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzboq;-><init>(Lcom/google/android/gms/internal/ads/zzbqn;)V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbpw;->zzfqz:Lcom/google/android/gms/internal/ads/zzafy;

    .line 3
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbpw;->zzfra:Ljava/lang/Runnable;

    .line 4
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbpw;->zzfoc:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final getVideoController()Lcom/google/android/gms/internal/ads/zzyo;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zza(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/ads/zzvn;)V
    .registers 3

    return-void
.end method

.method public final zzahw()Lcom/google/android/gms/internal/ads/zzdnu;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzahx()Landroid/view/View;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzaif()Lcom/google/android/gms/internal/ads/zzdnu;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzaig()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final zzaih()V
    .registers 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 6
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbpw;->zzfra:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 7
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbpv;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzbpv;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbpw;->zzfoc:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbpy;

    invoke-direct {v2, p0, v1}, Lcom/google/android/gms/internal/ads/zzbpy;-><init>(Lcom/google/android/gms/internal/ads/zzbpw;Ljava/lang/Runnable;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method final synthetic zze(Ljava/lang/Runnable;)V
    .registers 4

    .line 18
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbpw;->zzfqz:Lcom/google/android/gms/internal/ads/zzafy;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzafy;->zzm(Lcom/google/android/gms/dynamic/IObjectWrapper;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 19
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    :cond_f
    return-void

    .line 22
    :catch_10
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public final zzkf()V
    .registers 1

    return-void
.end method
