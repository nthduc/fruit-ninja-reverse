.class final Lcom/google/android/gms/internal/ads/zzdzp;
.super Lcom/google/android/gms/internal/ads/zzdyy;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzdyy<",
        "Lcom/google/android/gms/internal/ads/zzdzc<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field private final zzhtx:Lcom/google/android/gms/internal/ads/zzdyb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdyb<",
            "TV;>;"
        }
    .end annotation
.end field

.field private final synthetic zzhty:Lcom/google/android/gms/internal/ads/zzdzq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdzq;Lcom/google/android/gms/internal/ads/zzdyb;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdyb<",
            "TV;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdzp;->zzhty:Lcom/google/android/gms/internal/ads/zzdzq;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdyy;-><init>()V

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzdwd;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdyb;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdzp;->zzhtx:Lcom/google/android/gms/internal/ads/zzdyb;

    return-void
.end method


# virtual methods
.method final isDone()Z
    .registers 2

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdzp;->zzhty:Lcom/google/android/gms/internal/ads/zzdzq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdxq;->isDone()Z

    move-result v0

    return v0
.end method

.method final synthetic zzayd()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdzp;->zzhtx:Lcom/google/android/gms/internal/ads/zzdyb;

    .line 13
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdyb;->zzarv()Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdzp;->zzhtx:Lcom/google/android/gms/internal/ads/zzdyb;

    const-string v2, "AsyncCallable.call returned null instead of a Future. Did you mean to return immediateFuture(null)? %s"

    .line 14
    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzdwd;->zza(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdzc;

    return-object v0
.end method

.method final zzaye()Ljava/lang/String;
    .registers 2

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdzp;->zzhtx:Lcom/google/android/gms/internal/ads/zzdyb;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final synthetic zzb(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 3

    .line 6
    check-cast p1, Lcom/google/android/gms/internal/ads/zzdzc;

    if-nez p2, :cond_a

    .line 8
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdzp;->zzhty:Lcom/google/android/gms/internal/ads/zzdzq;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzdxq;->setFuture(Lcom/google/android/gms/internal/ads/zzdzc;)Z

    return-void

    .line 9
    :cond_a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdzp;->zzhty:Lcom/google/android/gms/internal/ads/zzdzq;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzdxq;->setException(Ljava/lang/Throwable;)Z

    return-void
.end method
