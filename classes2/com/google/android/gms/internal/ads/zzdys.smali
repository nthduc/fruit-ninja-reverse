.class final Lcom/google/android/gms/internal/ads/zzdys;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private final zzhte:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "TV;>;"
        }
    .end annotation
.end field

.field private final zzhtf:Lcom/google/android/gms/internal/ads/zzdyr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdyr<",
            "-TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/Future;Lcom/google/android/gms/internal/ads/zzdyr;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "TV;>;",
            "Lcom/google/android/gms/internal/ads/zzdyr<",
            "-TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdys;->zzhte:Ljava/util/concurrent/Future;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdys;->zzhtf:Lcom/google/android/gms/internal/ads/zzdyr;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdys;->zzhte:Ljava/util/concurrent/Future;

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzdzt;

    if-eqz v1, :cond_14

    .line 6
    check-cast v0, Lcom/google/android/gms/internal/ads/zzdzt;

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdzw;->zza(Lcom/google/android/gms/internal/ads/zzdzt;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdys;->zzhtf:Lcom/google/android/gms/internal/ads/zzdyr;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzdyr;->zzb(Ljava/lang/Throwable;)V

    return-void

    .line 11
    :cond_14
    :try_start_14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdys;->zzhte:Ljava/util/concurrent/Future;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdyq;->zza(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1a
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_14 .. :try_end_1a} :catch_29
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_1a} :catch_22
    .catch Ljava/lang/Error; {:try_start_14 .. :try_end_1a} :catch_20

    .line 19
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdys;->zzhtf:Lcom/google/android/gms/internal/ads/zzdyr;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzdyr;->onSuccess(Ljava/lang/Object;)V

    return-void

    :catch_20
    move-exception v0

    goto :goto_23

    :catch_22
    move-exception v0

    .line 17
    :goto_23
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdys;->zzhtf:Lcom/google/android/gms/internal/ads/zzdyr;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzdyr;->zzb(Ljava/lang/Throwable;)V

    return-void

    :catch_29
    move-exception v0

    .line 14
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdys;->zzhtf:Lcom/google/android/gms/internal/ads/zzdyr;

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzdyr;->zzb(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 21
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdvt;->zzx(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdvv;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdys;->zzhtf:Lcom/google/android/gms/internal/ads/zzdyr;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdvv;->zzy(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdvv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdvv;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
