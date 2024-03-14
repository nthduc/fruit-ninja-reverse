.class public abstract Lcom/google/android/gms/internal/ads/zzdyp;
.super Lcom/google/android/gms/internal/ads/zzdym;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdzc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/zzdym<",
        "TV;>;",
        "Lcom/google/android/gms/internal/ads/zzdzc<",
        "TV;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdym;-><init>()V

    return-void
.end method


# virtual methods
.method public addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .registers 4

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdyp;->zzayg()Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdzc;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method protected synthetic zzaxh()Ljava/lang/Object;
    .registers 2

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdyp;->zzayg()Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic zzayf()Ljava/util/concurrent/Future;
    .registers 2

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdyp;->zzayg()Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v0

    return-object v0
.end method

.method protected abstract zzayg()Lcom/google/android/gms/internal/ads/zzdzc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "+TV;>;"
        }
    .end annotation
.end method
