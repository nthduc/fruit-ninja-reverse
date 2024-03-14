.class public final Lcom/google/android/gms/internal/ads/zzbuk;
.super Lcom/google/android/gms/internal/ads/zzbyr;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbul;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzbyr<",
        "Lcom/google/android/gms/internal/ads/zzbul;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzbul;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbuo;Ljava/util/Set;Ljava/util/concurrent/Executor;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzbuo;",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/zzcab<",
            "Lcom/google/android/gms/internal/ads/zzbul;",
            ">;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzbyr;-><init>(Ljava/util/Set;)V

    .line 2
    invoke-virtual {p0, p1, p3}, Lcom/google/android/gms/internal/ads/zzbyr;->zza(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzccl;)V
    .registers 3

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbum;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzbum;-><init>(Lcom/google/android/gms/internal/ads/zzccl;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzbyr;->zza(Lcom/google/android/gms/internal/ads/zzbyt;)V

    return-void
.end method

.method public final zzajw()V
    .registers 2

    .line 8
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbup;->zzfur:Lcom/google/android/gms/internal/ads/zzbyt;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzbyr;->zza(Lcom/google/android/gms/internal/ads/zzbyt;)V

    return-void
.end method

.method public final zzl(Lcom/google/android/gms/internal/ads/zzva;)V
    .registers 3

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbun;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzbun;-><init>(Lcom/google/android/gms/internal/ads/zzva;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzbyr;->zza(Lcom/google/android/gms/internal/ads/zzbyt;)V

    return-void
.end method
