.class public Lcom/google/android/gms/internal/ads/zzbcn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final zzefc:Lcom/google/android/gms/internal/ads/zzbcg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzbcg<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final zzefd:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbcg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbcg;-><init>()V

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcn;->zzefc:Lcom/google/android/gms/internal/ads/zzbcg;

    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcn;->zzefd:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcn;->zzefc:Lcom/google/android/gms/internal/ads/zzbcg;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbcm;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzbcm;-><init>(Lcom/google/android/gms/internal/ads/zzbcn;)V

    .line 7
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbbz;->zzeeu:Lcom/google/android/gms/internal/ads/zzdzb;

    .line 8
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdyq;->zza(Lcom/google/android/gms/internal/ads/zzdzc;Lcom/google/android/gms/internal/ads/zzdyr;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzbcn;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 1

    .line 19
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbcn;->zzefd:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method


# virtual methods
.method public final getStatus()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcn;->zzefd:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public final reject()V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcn;->zzefc:Lcom/google/android/gms/internal/ads/zzbcg;

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbcg;->setException(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzbck;Lcom/google/android/gms/internal/ads/zzbci;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzbck<",
            "TT;>;",
            "Lcom/google/android/gms/internal/ads/zzbci;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcn;->zzefc:Lcom/google/android/gms/internal/ads/zzbcg;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbcp;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbcp;-><init>(Lcom/google/android/gms/internal/ads/zzbcn;Lcom/google/android/gms/internal/ads/zzbck;Lcom/google/android/gms/internal/ads/zzbci;)V

    .line 11
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbbz;->zzeeu:Lcom/google/android/gms/internal/ads/zzdzb;

    .line 12
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdyq;->zza(Lcom/google/android/gms/internal/ads/zzdzc;Lcom/google/android/gms/internal/ads/zzdyr;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final zzm(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcn;->zzefc:Lcom/google/android/gms/internal/ads/zzbcg;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbcg;->set(Ljava/lang/Object;)Z

    return-void
.end method
