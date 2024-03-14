.class final Lcom/google/android/gms/internal/ads/zzdxp;
.super Lcom/google/android/gms/internal/ads/zzdxm;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        "X:",
        "Ljava/lang/Throwable;",
        ">",
        "Lcom/google/android/gms/internal/ads/zzdxm<",
        "TV;TX;",
        "Lcom/google/android/gms/internal/ads/zzdya<",
        "-TX;+TV;>;",
        "Lcom/google/android/gms/internal/ads/zzdzc<",
        "+TV;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdzc;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzdya;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "+TV;>;",
            "Ljava/lang/Class<",
            "TX;>;",
            "Lcom/google/android/gms/internal/ads/zzdya<",
            "-TX;+TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzdxm;-><init>(Lcom/google/android/gms/internal/ads/zzdzc;Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method final synthetic setResult(Ljava/lang/Object;)V
    .registers 2

    .line 3
    check-cast p1, Lcom/google/android/gms/internal/ads/zzdzc;

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzdxq;->setFuture(Lcom/google/android/gms/internal/ads/zzdzc;)Z

    return-void
.end method

.method final synthetic zza(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6
    check-cast p1, Lcom/google/android/gms/internal/ads/zzdya;

    .line 7
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzdya;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p2

    const-string v0, "AsyncFunction.apply returned null instead of a Future. Did you mean to return immediateFuture(null)? %s"

    .line 8
    invoke-static {p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzdwd;->zza(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method
