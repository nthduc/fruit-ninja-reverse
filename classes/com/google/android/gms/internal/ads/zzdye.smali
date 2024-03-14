.class final Lcom/google/android/gms/internal/ads/zzdye;
.super Lcom/google/android/gms/internal/ads/zzdxu;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/zzdxu<",
        "Ljava/lang/Object;",
        "TV;>;"
    }
.end annotation


# instance fields
.field private zzhsw:Lcom/google/android/gms/internal/ads/zzdyg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdyg<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdwk;ZLjava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdwk<",
            "+",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "*>;>;Z",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzdxu;-><init>(Lcom/google/android/gms/internal/ads/zzdwk;ZZ)V

    .line 2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdyh;

    invoke-direct {p1, p0, p4, p3}, Lcom/google/android/gms/internal/ads/zzdyh;-><init>(Lcom/google/android/gms/internal/ads/zzdye;Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdye;->zzhsw:Lcom/google/android/gms/internal/ads/zzdyg;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdxu;->zzaxy()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzdye;Lcom/google/android/gms/internal/ads/zzdyg;)Lcom/google/android/gms/internal/ads/zzdyg;
    .registers 2

    const/4 p1, 0x0

    .line 18
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdye;->zzhsw:Lcom/google/android/gms/internal/ads/zzdyg;

    return-object p1
.end method


# virtual methods
.method protected final interruptTask()V
    .registers 2

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdye;->zzhsw:Lcom/google/android/gms/internal/ads/zzdyg;

    if-eqz v0, :cond_7

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdyy;->interruptTask()V

    :cond_7
    return-void
.end method

.method final zza(Lcom/google/android/gms/internal/ads/zzdxu$zza;)V
    .registers 3

    .line 10
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzdxu;->zza(Lcom/google/android/gms/internal/ads/zzdxu$zza;)V

    .line 11
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdxu$zza;->zzhsq:Lcom/google/android/gms/internal/ads/zzdxu$zza;

    if-ne p1, v0, :cond_a

    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdye;->zzhsw:Lcom/google/android/gms/internal/ads/zzdyg;

    :cond_a
    return-void
.end method

.method final zzaxz()V
    .registers 2

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdye;->zzhsw:Lcom/google/android/gms/internal/ads/zzdyg;

    if-eqz v0, :cond_7

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdyg;->execute()V

    :cond_7
    return-void
.end method

.method final zzb(ILjava/lang/Object;)V
    .registers 3
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    return-void
.end method
