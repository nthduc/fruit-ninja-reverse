.class public final Lcom/google/android/gms/internal/ads/zzdtp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-gass@@19.4.0"


# instance fields
.field private final executor:Ljava/util/concurrent/Executor;

.field private final zzhmq:Lcom/google/android/gms/internal/ads/zzdtv;

.field private final zzhmr:Lcom/google/android/gms/internal/ads/zzdtv;

.field private zzhms:Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/internal/ads/zzcf$zza;",
            ">;"
        }
    .end annotation
.end field

.field private zzhmt:Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/internal/ads/zzcf$zza;",
            ">;"
        }
    .end annotation
.end field

.field private final zzvr:Landroid/content/Context;

.field private final zzvw:Lcom/google/android/gms/internal/ads/zzdtc;

.field private final zzyr:Lcom/google/android/gms/internal/ads/zzdtd;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzdtc;Lcom/google/android/gms/internal/ads/zzdtd;Lcom/google/android/gms/internal/ads/zzdtt;Lcom/google/android/gms/internal/ads/zzdtw;)V
    .registers 7
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdtp;->zzvr:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdtp;->executor:Ljava/util/concurrent/Executor;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdtp;->zzvw:Lcom/google/android/gms/internal/ads/zzdtc;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdtp;->zzyr:Lcom/google/android/gms/internal/ads/zzdtd;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdtp;->zzhmq:Lcom/google/android/gms/internal/ads/zzdtv;

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzdtp;->zzhmr:Lcom/google/android/gms/internal/ads/zzdtv;

    return-void
.end method

.method private static zza(Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/internal/ads/zzcf$zza;)Lcom/google/android/gms/internal/ads/zzcf$zza;
    .registers 3
    .param p0    # Lcom/google/android/gms/tasks/Task;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/google/android/gms/internal/ads/zzcf$zza;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/internal/ads/zzcf$zza;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzcf$zza;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzcf$zza;"
        }
    .end annotation

    .line 21
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_7

    return-object p1

    .line 23
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzcf$zza;

    return-object p0
.end method

.method public static zza(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzdtc;Lcom/google/android/gms/internal/ads/zzdtd;)Lcom/google/android/gms/internal/ads/zzdtp;
    .registers 12
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/internal/ads/zzdtc;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/gms/internal/ads/zzdtd;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 9
    new-instance v7, Lcom/google/android/gms/internal/ads/zzdtp;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzdtt;

    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/zzdtt;-><init>()V

    new-instance v6, Lcom/google/android/gms/internal/ads/zzdtw;

    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/zzdtw;-><init>()V

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzdtp;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzdtc;Lcom/google/android/gms/internal/ads/zzdtd;Lcom/google/android/gms/internal/ads/zzdtt;Lcom/google/android/gms/internal/ads/zzdtw;)V

    .line 11
    iget-object p0, v7, Lcom/google/android/gms/internal/ads/zzdtp;->zzyr:Lcom/google/android/gms/internal/ads/zzdtd;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdtd;->zzavu()Z

    move-result p0

    if-eqz p0, :cond_28

    .line 12
    new-instance p0, Lcom/google/android/gms/internal/ads/zzdts;

    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/ads/zzdts;-><init>(Lcom/google/android/gms/internal/ads/zzdtp;)V

    invoke-direct {v7, p0}, Lcom/google/android/gms/internal/ads/zzdtp;->zzd(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    iput-object p0, v7, Lcom/google/android/gms/internal/ads/zzdtp;->zzhms:Lcom/google/android/gms/tasks/Task;

    goto :goto_34

    .line 13
    :cond_28
    iget-object p0, v7, Lcom/google/android/gms/internal/ads/zzdtp;->zzhmq:Lcom/google/android/gms/internal/ads/zzdtv;

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzdtv;->zzawe()Lcom/google/android/gms/internal/ads/zzcf$zza;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    iput-object p0, v7, Lcom/google/android/gms/internal/ads/zzdtp;->zzhms:Lcom/google/android/gms/tasks/Task;

    .line 14
    :goto_34
    new-instance p0, Lcom/google/android/gms/internal/ads/zzdtr;

    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/ads/zzdtr;-><init>(Lcom/google/android/gms/internal/ads/zzdtp;)V

    invoke-direct {v7, p0}, Lcom/google/android/gms/internal/ads/zzdtp;->zzd(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    iput-object p0, v7, Lcom/google/android/gms/internal/ads/zzdtp;->zzhmt:Lcom/google/android/gms/tasks/Task;

    return-object v7
.end method

.method private final zzd(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;
    .registers 4
    .param p1    # Ljava/util/concurrent/Callable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Lcom/google/android/gms/internal/ads/zzcf$zza;",
            ">;)",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/internal/ads/zzcf$zza;",
            ">;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdtp;->executor:Ljava/util/concurrent/Executor;

    invoke-static {v0, p1}, Lcom/google/android/gms/tasks/Tasks;->call(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdtp;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdtu;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzdtu;-><init>(Lcom/google/android/gms/internal/ads/zzdtp;)V

    .line 19
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final zzawa()Lcom/google/android/gms/internal/ads/zzcf$zza;
    .registers 3

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdtp;->zzhms:Lcom/google/android/gms/tasks/Task;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdtp;->zzhmq:Lcom/google/android/gms/internal/ads/zzdtv;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzdtv;->zzawe()Lcom/google/android/gms/internal/ads/zzcf$zza;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdtp;->zza(Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/internal/ads/zzcf$zza;)Lcom/google/android/gms/internal/ads/zzcf$zza;

    move-result-object v0

    return-object v0
.end method

.method final synthetic zzawb()Lcom/google/android/gms/internal/ads/zzcf$zza;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdtp;->zzhmr:Lcom/google/android/gms/internal/ads/zzdtv;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdtp;->zzvr:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzdtv;->zzck(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzcf$zza;

    move-result-object v0

    return-object v0
.end method

.method final synthetic zzawc()Lcom/google/android/gms/internal/ads/zzcf$zza;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdtp;->zzhmq:Lcom/google/android/gms/internal/ads/zzdtv;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdtp;->zzvr:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzdtv;->zzck(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzcf$zza;

    move-result-object v0

    return-object v0
.end method

.method final synthetic zzc(Ljava/lang/Exception;)V
    .registers 6

    .line 24
    instance-of v0, p1, Ljava/lang/InterruptedException;

    if-eqz v0, :cond_b

    .line 25
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 26
    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdtp;->zzvw:Lcom/google/android/gms/internal/ads/zzdtc;

    const/16 v1, 0x7e9

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzdtc;->zza(IJLjava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public final zzco()Lcom/google/android/gms/internal/ads/zzcf$zza;
    .registers 3

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdtp;->zzhmt:Lcom/google/android/gms/tasks/Task;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdtp;->zzhmr:Lcom/google/android/gms/internal/ads/zzdtv;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzdtv;->zzawe()Lcom/google/android/gms/internal/ads/zzcf$zza;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdtp;->zza(Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/internal/ads/zzcf$zza;)Lcom/google/android/gms/internal/ads/zzcf$zza;

    move-result-object v0

    return-object v0
.end method
