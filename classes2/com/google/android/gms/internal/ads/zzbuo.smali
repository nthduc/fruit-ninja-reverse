.class public final Lcom/google/android/gms/internal/ads/zzbuo;
.super Lcom/google/android/gms/internal/ads/zzbyr;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbul;


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzbyr<",
        "Lcom/google/android/gms/internal/ads/zzbuv;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzbul;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .registers 2
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/zzcab<",
            "Lcom/google/android/gms/internal/ads/zzbuv;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbyr;-><init>(Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzccl;)V
    .registers 2

    return-void
.end method

.method public final zzajw()V
    .registers 2

    .line 6
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbuq;->zzfur:Lcom/google/android/gms/internal/ads/zzbyt;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzbyr;->zza(Lcom/google/android/gms/internal/ads/zzbyt;)V

    return-void
.end method

.method public final zzl(Lcom/google/android/gms/internal/ads/zzva;)V
    .registers 3

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbur;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzbur;-><init>(Lcom/google/android/gms/internal/ads/zzva;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzbyr;->zza(Lcom/google/android/gms/internal/ads/zzbyt;)V

    return-void
.end method
