.class public final Lcom/google/android/gms/internal/ads/zzcpc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private final zzfmv:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzgcz:Lcom/google/android/gms/internal/ads/zzdzb;

.field private final zzgjf:Lcom/google/android/gms/internal/ads/zzeos;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzeos<",
            "Lcom/google/android/gms/internal/ads/zzcqv;",
            ">;"
        }
    .end annotation
.end field

.field private final zzgjq:Lcom/google/android/gms/internal/ads/zzcpx;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/zzdzb;Lcom/google/android/gms/internal/ads/zzcpx;Lcom/google/android/gms/internal/ads/zzeos;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Lcom/google/android/gms/internal/ads/zzdzb;",
            "Lcom/google/android/gms/internal/ads/zzcpx;",
            "Lcom/google/android/gms/internal/ads/zzeos<",
            "Lcom/google/android/gms/internal/ads/zzcqv;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcpc;->zzfmv:Ljava/util/concurrent/ScheduledExecutorService;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcpc;->zzgcz:Lcom/google/android/gms/internal/ads/zzdzb;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcpc;->zzgjq:Lcom/google/android/gms/internal/ads/zzcpx;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcpc;->zzgjf:Lcom/google/android/gms/internal/ads/zzeos;

    return-void
.end method


# virtual methods
.method final synthetic zza(Lcom/google/android/gms/internal/ads/zzatc;ILjava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 21
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzcpc;->zzgjf:Lcom/google/android/gms/internal/ads/zzeos;

    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzeos;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/internal/ads/zzcqv;

    invoke-virtual {p3, p1, p2}, Lcom/google/android/gms/internal/ads/zzcqv;->zzd(Lcom/google/android/gms/internal/ads/zzatc;I)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    return-object p1
.end method

.method public final zzg(Lcom/google/android/gms/internal/ads/zzatc;)Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzatc;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 7
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzatc;->packageName:Ljava/lang/String;

    .line 8
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkr()Lcom/google/android/gms/internal/ads/zzayu;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzayu;->zzer(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 10
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcqm;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdpg;->zzhfw:Lcom/google/android/gms/internal/ads/zzdpg;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzcqm;-><init>(Lcom/google/android/gms/internal/ads/zzdpg;)V

    .line 11
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdyq;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v0

    goto :goto_1d

    .line 12
    :cond_17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcpc;->zzgjq:Lcom/google/android/gms/internal/ads/zzcpx;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcpx;->zzj(Lcom/google/android/gms/internal/ads/zzatc;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v0

    .line 13
    :goto_1d
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 15
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdyl;->zzg(Lcom/google/android/gms/internal/ads/zzdzc;)Lcom/google/android/gms/internal/ads/zzdyl;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/internal/ads/zzabb;->zzcvb:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 17
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v2

    .line 18
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzcpc;->zzfmv:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzdyl;->zza(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/zzdyl;

    move-result-object v0

    const-class v2, Ljava/lang/Throwable;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzcpb;

    invoke-direct {v3, p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzcpb;-><init>(Lcom/google/android/gms/internal/ads/zzcpc;Lcom/google/android/gms/internal/ads/zzatc;I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcpc;->zzgcz:Lcom/google/android/gms/internal/ads/zzdzb;

    .line 19
    invoke-virtual {v0, v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzdyl;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzdya;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdyl;

    move-result-object p1

    return-object p1
.end method
