.class final Lcom/google/android/gms/internal/ads/zzdxs;
.super Lcom/google/android/gms/internal/ads/zzdxt;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/zzdxt<",
        "TI;TO;",
        "Lcom/google/android/gms/internal/ads/zzdya<",
        "-TI;+TO;>;",
        "Lcom/google/android/gms/internal/ads/zzdzc<",
        "+TO;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdzc;Lcom/google/android/gms/internal/ads/zzdya;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "+TI;>;",
            "Lcom/google/android/gms/internal/ads/zzdya<",
            "-TI;+TO;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdxt;-><init>(Lcom/google/android/gms/internal/ads/zzdzc;Ljava/lang/Object;)V

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

.method final synthetic zzd(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
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
