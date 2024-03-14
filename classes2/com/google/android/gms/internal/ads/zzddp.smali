.class public final Lcom/google/android/gms/internal/ads/zzddp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdgx;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lcom/google/android/gms/internal/ads/zzdgu<",
        "*>;>",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdgx<",
        "TS;>;"
    }
.end annotation


# instance fields
.field private final zzbqa:Lcom/google/android/gms/common/util/Clock;

.field private final zzgwi:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/gms/internal/ads/zzddo<",
            "TS;>;>;"
        }
    .end annotation
.end field

.field private final zzgwj:Lcom/google/android/gms/internal/ads/zzdgx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdgx<",
            "TS;>;"
        }
    .end annotation
.end field

.field private final zzgwk:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdgx;JLcom/google/android/gms/common/util/Clock;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdgx<",
            "TS;>;J",
            "Lcom/google/android/gms/common/util/Clock;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzddp;->zzgwi:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzddp;->zzbqa:Lcom/google/android/gms/common/util/Clock;

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzddp;->zzgwj:Lcom/google/android/gms/internal/ads/zzdgx;

    .line 5
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzddp;->zzgwk:J

    return-void
.end method


# virtual methods
.method public final zzarj()Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "TS;>;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzddp;->zzgwi:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzddo;

    if-eqz v0, :cond_10

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzddo;->hasExpired()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 9
    :cond_10
    new-instance v0, Lcom/google/android/gms/internal/ads/zzddo;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzddp;->zzgwj:Lcom/google/android/gms/internal/ads/zzdgx;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzdgx;->zzarj()Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzddp;->zzgwk:J

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzddp;->zzbqa:Lcom/google/android/gms/common/util/Clock;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzddo;-><init>(Lcom/google/android/gms/internal/ads/zzdzc;JLcom/google/android/gms/common/util/Clock;)V

    .line 10
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzddp;->zzgwi:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 11
    :cond_24
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzddo;->zzgwg:Lcom/google/android/gms/internal/ads/zzdzc;

    return-object v0
.end method
