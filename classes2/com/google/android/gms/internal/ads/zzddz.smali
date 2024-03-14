.class public final Lcom/google/android/gms/internal/ads/zzddz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdgx;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdgx<",
        "Lcom/google/android/gms/internal/ads/zzddw;",
        ">;"
    }
.end annotation


# instance fields
.field private applicationInfo:Landroid/content/pm/ApplicationInfo;

.field private zzdzr:Lcom/google/android/gms/internal/ads/zzayr;

.field private zzfmv:Ljava/util/concurrent/ScheduledExecutorService;

.field zzfsk:Lcom/google/android/gms/internal/ads/zzdok;

.field private zzgwp:Lcom/google/android/gms/internal/ads/zzams;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzams;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/zzayr;Landroid/content/pm/ApplicationInfo;Lcom/google/android/gms/internal/ads/zzdok;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzddz;->zzgwp:Lcom/google/android/gms/internal/ads/zzams;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzddz;->zzfmv:Ljava/util/concurrent/ScheduledExecutorService;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzddz;->zzdzr:Lcom/google/android/gms/internal/ads/zzayr;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzddz;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzddz;->zzfsk:Lcom/google/android/gms/internal/ads/zzdok;

    return-void
.end method


# virtual methods
.method public final zzarj()Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "Lcom/google/android/gms/internal/ads/zzddw;",
            ">;"
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/google/android/gms/internal/ads/zzacl;->zzdab:Lcom/google/android/gms/internal/ads/zzaci;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaci;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_14

    .line 11
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdyq;->zzaf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v0

    goto :goto_4b

    .line 12
    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzddz;->zzdzr:Lcom/google/android/gms/internal/ads/zzayr;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzayr;->zzxi()Z

    move-result v0

    if-nez v0, :cond_21

    .line 13
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdyq;->zzaf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v0

    goto :goto_4b

    .line 14
    :cond_21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzddz;->zzgwp:Lcom/google/android/gms/internal/ads/zzams;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzddz;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 15
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzams;->zza(Landroid/content/pm/ApplicationInfo;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzabb;->zzcsm:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 17
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v1

    .line 18
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzddz;->zzfmv:Ljava/util/concurrent/ScheduledExecutorService;

    .line 19
    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzdyq;->zza(Lcom/google/android/gms/internal/ads/zzdzc;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v0

    const-class v1, Ljava/lang/Throwable;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzdea;->zzboo:Lcom/google/android/gms/internal/ads/zzdya;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbbz;->zzeeu:Lcom/google/android/gms/internal/ads/zzdzb;

    .line 20
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdyq;->zzb(Lcom/google/android/gms/internal/ads/zzdzc;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzdya;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v0

    .line 21
    :goto_4b
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdeb;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzdeb;-><init>(Lcom/google/android/gms/internal/ads/zzddz;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzddz;->zzfmv:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdyq;->zzb(Lcom/google/android/gms/internal/ads/zzdzc;Lcom/google/android/gms/internal/ads/zzdvu;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v0

    .line 22
    sget-object v1, Lcom/google/android/gms/internal/ads/zzddy;->zzdwz:Lcom/google/android/gms/internal/ads/zzdvu;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbbz;->zzeep:Lcom/google/android/gms/internal/ads/zzdzb;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdyq;->zzb(Lcom/google/android/gms/internal/ads/zzdzc;Lcom/google/android/gms/internal/ads/zzdvu;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v0

    return-object v0
.end method
