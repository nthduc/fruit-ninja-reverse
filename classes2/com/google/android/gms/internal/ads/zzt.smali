.class public final Lcom/google/android/gms/internal/ads/zzt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzak;


# instance fields
.field private final zzag:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzs;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzs;-><init>(Lcom/google/android/gms/internal/ads/zzt;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzt;->zzag:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzaa;Lcom/google/android/gms/internal/ads/zzaj;Ljava/lang/Runnable;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzaa<",
            "*>;",
            "Lcom/google/android/gms/internal/ads/zzaj<",
            "*>;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaa;->zzk()V

    const-string v0, "post-response"

    .line 7
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzaa;->zzc(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzt;->zzag:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzv;

    invoke-direct {v1, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzv;-><init>(Lcom/google/android/gms/internal/ads/zzaa;Lcom/google/android/gms/internal/ads/zzaj;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzaa;Lcom/google/android/gms/internal/ads/zzao;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzaa<",
            "*>;",
            "Lcom/google/android/gms/internal/ads/zzao;",
            ")V"
        }
    .end annotation

    const-string v0, "post-error"

    .line 10
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzaa;->zzc(Ljava/lang/String;)V

    .line 11
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzaj;->zzd(Lcom/google/android/gms/internal/ads/zzao;)Lcom/google/android/gms/internal/ads/zzaj;

    move-result-object p2

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzt;->zzag:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzv;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzv;-><init>(Lcom/google/android/gms/internal/ads/zzaa;Lcom/google/android/gms/internal/ads/zzaj;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzaa;Lcom/google/android/gms/internal/ads/zzaj;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzaa<",
            "*>;",
            "Lcom/google/android/gms/internal/ads/zzaj<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzt;->zza(Lcom/google/android/gms/internal/ads/zzaa;Lcom/google/android/gms/internal/ads/zzaj;Ljava/lang/Runnable;)V

    return-void
.end method
