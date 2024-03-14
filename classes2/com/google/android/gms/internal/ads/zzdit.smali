.class public final Lcom/google/android/gms/internal/ads/zzdit;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdgx;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdgx<",
        "Lcom/google/android/gms/internal/ads/zzdiq;",
        ">;"
    }
.end annotation


# instance fields
.field private applicationInfo:Landroid/content/pm/ApplicationInfo;

.field private zzdtz:Z

.field private zzfmv:Ljava/util/concurrent/ScheduledExecutorService;

.field private zzgwp:Lcom/google/android/gms/internal/ads/zzams;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzams;Ljava/util/concurrent/ScheduledExecutorService;ZLandroid/content/pm/ApplicationInfo;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdit;->zzgwp:Lcom/google/android/gms/internal/ads/zzams;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdit;->zzfmv:Ljava/util/concurrent/ScheduledExecutorService;

    .line 4
    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzdit;->zzdtz:Z

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdit;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-void
.end method


# virtual methods
.method public final zzarj()Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "Lcom/google/android/gms/internal/ads/zzdiq;",
            ">;"
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/google/android/gms/internal/ads/zzacl;->zzdac:Lcom/google/android/gms/internal/ads/zzaci;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaci;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 8
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Auto Collect Location by gms is disabled."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdyq;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v0

    return-object v0

    .line 9
    :cond_1a
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdit;->zzdtz:Z

    if-nez v0, :cond_2a

    .line 10
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Auto Collect Location is false."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdyq;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v0

    return-object v0

    .line 11
    :cond_2a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdit;->zzgwp:Lcom/google/android/gms/internal/ads/zzams;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdit;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 12
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzams;->zza(Landroid/content/pm/ApplicationInfo;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzabb;->zzcsm:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 14
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v1

    .line 15
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdit;->zzfmv:Ljava/util/concurrent/ScheduledExecutorService;

    .line 16
    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzdyq;->zza(Lcom/google/android/gms/internal/ads/zzdzc;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v0

    .line 17
    sget-object v1, Lcom/google/android/gms/internal/ads/zzdis;->zzdwz:Lcom/google/android/gms/internal/ads/zzdvu;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbbz;->zzeep:Lcom/google/android/gms/internal/ads/zzdzb;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdyq;->zzb(Lcom/google/android/gms/internal/ads/zzdzc;Lcom/google/android/gms/internal/ads/zzdvu;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v0

    return-object v0
.end method
