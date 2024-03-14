.class public final Lcom/google/android/gms/internal/ads/zzbwr;
.super Lcom/google/android/gms/internal/ads/zzbyr;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbws;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzbyr<",
        "Lcom/google/android/gms/internal/ads/zzbws;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzbws;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/zzcab<",
            "Lcom/google/android/gms/internal/ads/zzbws;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbyr;-><init>(Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/ads/zzdog;)V
    .registers 3

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbwt;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzbwt;-><init>(Lcom/google/android/gms/internal/ads/zzdog;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzbyr;->zza(Lcom/google/android/gms/internal/ads/zzbyt;)V

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzatc;)V
    .registers 3

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbwq;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzbwq;-><init>(Lcom/google/android/gms/internal/ads/zzatc;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzbyr;->zza(Lcom/google/android/gms/internal/ads/zzbyt;)V

    return-void
.end method
