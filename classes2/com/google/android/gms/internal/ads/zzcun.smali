.class public final Lcom/google/android/gms/internal/ads/zzcun;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcta;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzcta<",
        "Lcom/google/android/gms/internal/ads/zzboq;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzfmv:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzfwd:Lcom/google/android/gms/internal/ads/zzbug;

.field private final zzgcz:Lcom/google/android/gms/internal/ads/zzdzb;

.field private final zzgov:Lcom/google/android/gms/internal/ads/zzbpm;

.field private final zzgow:Lcom/google/android/gms/internal/ads/zzctt;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbpm;Lcom/google/android/gms/internal/ads/zzctt;Lcom/google/android/gms/internal/ads/zzbug;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/zzdzb;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcun;->zzgov:Lcom/google/android/gms/internal/ads/zzbpm;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcun;->zzgow:Lcom/google/android/gms/internal/ads/zzctt;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcun;->zzfwd:Lcom/google/android/gms/internal/ads/zzbug;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcun;->zzfmv:Ljava/util/concurrent/ScheduledExecutorService;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzcun;->zzgcz:Lcom/google/android/gms/internal/ads/zzdzb;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzcun;)Lcom/google/android/gms/internal/ads/zzbpm;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcun;->zzgov:Lcom/google/android/gms/internal/ads/zzbpm;

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzcun;)Lcom/google/android/gms/internal/ads/zzbug;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcun;->zzfwd:Lcom/google/android/gms/internal/ads/zzbug;

    return-object p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzdog;Lcom/google/android/gms/internal/ads/zzdnv;)Z
    .registers 4

    .line 8
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzdog;->zzhev:Lcom/google/android/gms/internal/ads/zzdof;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdof;->zzfsk:Lcom/google/android/gms/internal/ads/zzdok;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdok;->zzati()Lcom/google/android/gms/internal/ads/zzafy;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcun;->zzgow:Lcom/google/android/gms/internal/ads/zzctt;

    .line 9
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzctt;->zza(Lcom/google/android/gms/internal/ads/zzdog;Lcom/google/android/gms/internal/ads/zzdnv;)Z

    move-result p1

    if-eqz p1, :cond_14

    const/4 p1, 0x1

    return p1

    :cond_14
    const/4 p1, 0x0

    return p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzdog;Lcom/google/android/gms/internal/ads/zzdnv;)Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdog;",
            "Lcom/google/android/gms/internal/ads/zzdnv;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "Lcom/google/android/gms/internal/ads/zzboq;",
            ">;"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcun;->zzgcz:Lcom/google/android/gms/internal/ads/zzdzb;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcuq;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcuq;-><init>(Lcom/google/android/gms/internal/ads/zzcun;Lcom/google/android/gms/internal/ads/zzdog;Lcom/google/android/gms/internal/ads/zzdnv;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzdzb;->zze(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzc(Lcom/google/android/gms/internal/ads/zzdog;Lcom/google/android/gms/internal/ads/zzdnv;)Lcom/google/android/gms/internal/ads/zzboq;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcun;->zzgov:Lcom/google/android/gms/internal/ads/zzbpm;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbre;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzbre;-><init>(Lcom/google/android/gms/internal/ads/zzdog;Lcom/google/android/gms/internal/ads/zzdnv;Ljava/lang/String;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbqa;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzdog;->zzhev:Lcom/google/android/gms/internal/ads/zzdof;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzdof;->zzfsk:Lcom/google/android/gms/internal/ads/zzdok;

    .line 13
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzdok;->zzati()Lcom/google/android/gms/internal/ads/zzafy;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/internal/ads/zzcup;

    invoke-direct {v4, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcup;-><init>(Lcom/google/android/gms/internal/ads/zzcun;Lcom/google/android/gms/internal/ads/zzdog;Lcom/google/android/gms/internal/ads/zzdnv;)V

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzbqa;-><init>(Lcom/google/android/gms/internal/ads/zzafy;Ljava/lang/Runnable;)V

    .line 14
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbpm;->zza(Lcom/google/android/gms/internal/ads/zzbre;Lcom/google/android/gms/internal/ads/zzbqa;)Lcom/google/android/gms/internal/ads/zzbpx;

    move-result-object p1

    .line 15
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbpx;->zzagg()Lcom/google/android/gms/internal/ads/zzboq;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzd(Lcom/google/android/gms/internal/ads/zzdog;Lcom/google/android/gms/internal/ads/zzdnv;)V
    .registers 6

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcun;->zzgow:Lcom/google/android/gms/internal/ads/zzctt;

    .line 19
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzctt;->zzb(Lcom/google/android/gms/internal/ads/zzdog;Lcom/google/android/gms/internal/ads/zzdnv;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    iget p2, p2, Lcom/google/android/gms/internal/ads/zzdnv;->zzheb:I

    int-to-long v0, p2

    sget-object p2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcun;->zzfmv:Ljava/util/concurrent/ScheduledExecutorService;

    .line 20
    invoke-static {p1, v0, v1, p2, v2}, Lcom/google/android/gms/internal/ads/zzdyq;->zza(Lcom/google/android/gms/internal/ads/zzdzc;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    .line 21
    new-instance p2, Lcom/google/android/gms/internal/ads/zzcus;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/zzcus;-><init>(Lcom/google/android/gms/internal/ads/zzcun;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcun;->zzgcz:Lcom/google/android/gms/internal/ads/zzdzb;

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzdyq;->zza(Lcom/google/android/gms/internal/ads/zzdzc;Lcom/google/android/gms/internal/ads/zzdyr;Ljava/util/concurrent/Executor;)V

    return-void
.end method
