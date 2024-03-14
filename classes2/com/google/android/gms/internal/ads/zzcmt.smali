.class public final Lcom/google/android/gms/internal/ads/zzcmt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private final zzczo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final synthetic zzghh:Lcom/google/android/gms/internal/ads/zzcmu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcmu;)V
    .registers 2
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcmt;->zzghh:Lcom/google/android/gms/internal/ads/zzcmu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcmt;->zzczo:Ljava/util/Map;

    return-void
.end method

.method private final zzapb()Lcom/google/android/gms/internal/ads/zzcmt;
    .registers 3

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcmt;->zzczo:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcmt;->zzghh:Lcom/google/android/gms/internal/ads/zzcmu;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzcmu;->zza(Lcom/google/android/gms/internal/ads/zzcmu;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzcmt;)Lcom/google/android/gms/internal/ads/zzcmt;
    .registers 1

    .line 16
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcmt;->zzapb()Lcom/google/android/gms/internal/ads/zzcmt;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzdnw;)Lcom/google/android/gms/internal/ads/zzcmt;
    .registers 4

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcmt;->zzczo:Ljava/util/Map;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdnw;->zzdtb:Ljava/lang/String;

    const-string v1, "gqi"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final zzapc()V
    .registers 3

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcmt;->zzghh:Lcom/google/android/gms/internal/ads/zzcmu;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcmu;->zzb(Lcom/google/android/gms/internal/ads/zzcmu;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcmw;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzcmw;-><init>(Lcom/google/android/gms/internal/ads/zzcmt;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzapd()Ljava/lang/String;
    .registers 3

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcmt;->zzghh:Lcom/google/android/gms/internal/ads/zzcmu;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcmu;->zzc(Lcom/google/android/gms/internal/ads/zzcmu;)Lcom/google/android/gms/internal/ads/zzcmz;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcmt;->zzczo:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcmz;->zzo(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final synthetic zzape()V
    .registers 3

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcmt;->zzghh:Lcom/google/android/gms/internal/ads/zzcmu;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcmu;->zzc(Lcom/google/android/gms/internal/ads/zzcmu;)Lcom/google/android/gms/internal/ads/zzcmz;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcmt;->zzczo:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcmz;->zzn(Ljava/util/Map;)V

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzdnv;)Lcom/google/android/gms/internal/ads/zzcmt;
    .registers 4

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcmt;->zzczo:Ljava/util/Map;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdnv;->zzdjo:Ljava/lang/String;

    const-string v1, "aai"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final zzr(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzcmt;
    .registers 4

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcmt;->zzczo:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
