.class final Lcom/google/android/gms/internal/ads/zzddo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lcom/google/android/gms/internal/ads/zzdgu<",
        "*>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final zzbqa:Lcom/google/android/gms/common/util/Clock;

.field public final zzgwg:Lcom/google/android/gms/internal/ads/zzdzc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "TS;>;"
        }
    .end annotation
.end field

.field private final zzgwh:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdzc;JLcom/google/android/gms/common/util/Clock;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "TS;>;J",
            "Lcom/google/android/gms/common/util/Clock;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzddo;->zzgwg:Lcom/google/android/gms/internal/ads/zzdzc;

    .line 3
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzddo;->zzbqa:Lcom/google/android/gms/common/util/Clock;

    .line 4
    invoke-interface {p4}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzddo;->zzgwh:J

    return-void
.end method


# virtual methods
.method public final hasExpired()Z
    .registers 6

    .line 6
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzddo;->zzgwh:J

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzddo;->zzbqa:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method
