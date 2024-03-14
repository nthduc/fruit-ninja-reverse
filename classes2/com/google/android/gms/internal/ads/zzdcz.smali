.class public final Lcom/google/android/gms/internal/ads/zzdcz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdgx;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdgx<",
        "Lcom/google/android/gms/internal/ads/zzdcw;",
        ">;"
    }
.end annotation


# instance fields
.field private final executor:Ljava/util/concurrent/Executor;

.field private final zzfmv:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzvr:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/Executor;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdcz;->zzvr:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdcz;->zzfmv:Ljava/util/concurrent/ScheduledExecutorService;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdcz;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final zzarj()Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "Lcom/google/android/gms/internal/ads/zzdcw;",
            ">;"
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabb;->zzcwp:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 8
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x0

    .line 9
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdyq;->zzaf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v0

    return-object v0

    .line 10
    :cond_18
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbcg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbcg;-><init>()V

    const/4 v1, 0x0

    .line 12
    :try_start_1e
    new-instance v2, Lcom/google/android/gms/internal/ads/zzdcy;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzdcy;-><init>(Lcom/google/android/gms/internal/ads/zzbcg;)V

    .line 13
    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/ads/zzdvq;->zzbm(Z)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_26} :catch_27

    goto :goto_33

    :catch_27
    const-string v2, "ArCoreApk is not ready."

    .line 16
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzayp;->zzfc(Ljava/lang/String;)V

    .line 17
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbcg;->set(Ljava/lang/Object;)Z

    :goto_33
    const-wide/16 v1, 0xc8

    .line 18
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdcz;->zzfmv:Ljava/util/concurrent/ScheduledExecutorService;

    .line 19
    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzdyq;->zza(Lcom/google/android/gms/internal/ads/zzdzc;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v0

    .line 20
    new-instance v1, Lcom/google/android/gms/internal/ads/zzddb;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzddb;-><init>(Lcom/google/android/gms/internal/ads/zzdcz;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdcz;->executor:Ljava/util/concurrent/Executor;

    .line 21
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdyq;->zzb(Lcom/google/android/gms/internal/ads/zzdzc;Lcom/google/android/gms/internal/ads/zzdvu;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v0

    const-class v1, Ljava/lang/Throwable;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzdda;->zzboo:Lcom/google/android/gms/internal/ads/zzdya;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdcz;->executor:Ljava/util/concurrent/Executor;

    .line 22
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdyq;->zzb(Lcom/google/android/gms/internal/ads/zzdzc;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzdya;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v0

    return-object v0
.end method
