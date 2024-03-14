.class public final Lcom/google/android/gms/internal/ads/zzdhl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdgx;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdgx<",
        "Lcom/google/android/gms/internal/ads/zzdhi;",
        ">;"
    }
.end annotation


# instance fields
.field private final executor:Ljava/util/concurrent/Executor;

.field private final zzfmv:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzgyr:Lcom/google/android/gms/internal/ads/zzaxx;

.field private final zzvr:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaxx;Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/Executor;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdhl;->zzgyr:Lcom/google/android/gms/internal/ads/zzaxx;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdhl;->zzvr:Landroid/content/Context;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdhl;->zzfmv:Ljava/util/concurrent/ScheduledExecutorService;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdhl;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final zzarj()Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "Lcom/google/android/gms/internal/ads/zzdhi;",
            ">;"
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabb;->zzcoq:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdhl;->zzgyr:Lcom/google/android/gms/internal/ads/zzaxx;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdhl;->zzvr:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzaxx;->zzal(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdyl;->zzg(Lcom/google/android/gms/internal/ads/zzdzc;)Lcom/google/android/gms/internal/ads/zzdyl;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdhk;->zzdwz:Lcom/google/android/gms/internal/ads/zzdvu;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdhl;->executor:Ljava/util/concurrent/Executor;

    .line 12
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdyl;->zza(Lcom/google/android/gms/internal/ads/zzdvu;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdyl;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzabb;->zzcor:Lcom/google/android/gms/internal/ads/zzaaq;

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

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdhl;->zzfmv:Ljava/util/concurrent/ScheduledExecutorService;

    .line 16
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzdyl;->zza(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/zzdyl;

    move-result-object v0

    const-class v1, Ljava/lang/Throwable;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdhn;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzdhn;-><init>(Lcom/google/android/gms/internal/ads/zzdhl;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdhl;->executor:Ljava/util/concurrent/Executor;

    .line 17
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdyl;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzdvu;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdyl;

    move-result-object v0

    return-object v0

    .line 19
    :cond_4c
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Did not ad Ad ID into query param."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdyq;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v0

    return-object v0
.end method

.method final synthetic zzf(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzdhi;
    .registers 4

    .line 21
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpt()Lcom/google/android/gms/internal/ads/zzbbg;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdhl;->zzvr:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbbg;->zzbo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 22
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdhi;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdhi;-><init>(Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;Ljava/lang/String;)V

    return-object v0
.end method
