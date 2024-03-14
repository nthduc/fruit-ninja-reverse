.class public final Lcom/google/android/gms/internal/ads/zzdix;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdgx;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdgx<",
        "Lcom/google/android/gms/internal/ads/zzdiu;",
        ">;"
    }
.end annotation


# instance fields
.field private zzfmv:Ljava/util/concurrent/ScheduledExecutorService;

.field private zzgzo:Lcom/google/android/gms/internal/ads/zzarg;

.field private zzvr:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzarg;Ljava/util/concurrent/ScheduledExecutorService;Landroid/content/Context;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdix;->zzgzo:Lcom/google/android/gms/internal/ads/zzarg;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdix;->zzfmv:Ljava/util/concurrent/ScheduledExecutorService;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdix;->zzvr:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final zzarj()Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "Lcom/google/android/gms/internal/ads/zzdiu;",
            ">;"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdix;->zzgzo:Lcom/google/android/gms/internal/ads/zzarg;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdix;->zzvr:Landroid/content/Context;

    .line 7
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzarg;->zzr(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzabb;->zzcsu:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v1

    .line 10
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdix;->zzfmv:Ljava/util/concurrent/ScheduledExecutorService;

    .line 11
    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzdyq;->zza(Lcom/google/android/gms/internal/ads/zzdzc;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v0

    .line 12
    sget-object v1, Lcom/google/android/gms/internal/ads/zzdiw;->zzdwz:Lcom/google/android/gms/internal/ads/zzdvu;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbbz;->zzeep:Lcom/google/android/gms/internal/ads/zzdzb;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdyq;->zzb(Lcom/google/android/gms/internal/ads/zzdzc;Lcom/google/android/gms/internal/ads/zzdvu;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v0

    return-object v0
.end method
