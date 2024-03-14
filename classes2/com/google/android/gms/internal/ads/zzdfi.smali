.class public final Lcom/google/android/gms/internal/ads/zzdfi;
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
.field private final zzfoz:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzgwj:Lcom/google/android/gms/internal/ads/zzdgx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdgx<",
            "TS;>;"
        }
    .end annotation
.end field

.field private final zzgxd:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdgx;JLjava/util/concurrent/ScheduledExecutorService;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdgx<",
            "TS;>;J",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdfi;->zzgwj:Lcom/google/android/gms/internal/ads/zzdgx;

    .line 3
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzdfi;->zzgxd:J

    .line 4
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdfi;->zzfoz:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method


# virtual methods
.method public final zzarj()Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "TS;>;"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdfi;->zzgwj:Lcom/google/android/gms/internal/ads/zzdgx;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdgx;->zzarj()Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v0

    .line 7
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzdfi;->zzgxd:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_16

    .line 8
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdfi;->zzfoz:Ljava/util/concurrent/ScheduledExecutorService;

    .line 9
    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzdyq;->zza(Lcom/google/android/gms/internal/ads/zzdzc;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v0

    .line 10
    :cond_16
    const-class v1, Ljava/lang/Throwable;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzdfl;->zzboo:Lcom/google/android/gms/internal/ads/zzdya;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbbz;->zzeeu:Lcom/google/android/gms/internal/ads/zzdzb;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdyq;->zzb(Lcom/google/android/gms/internal/ads/zzdzc;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzdya;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v0

    return-object v0
.end method
