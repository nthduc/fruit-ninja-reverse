.class public final Lcom/google/android/gms/internal/ads/zzdhz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdgx;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdgx<",
        "Lcom/google/android/gms/internal/ads/zzdhw;",
        ">;"
    }
.end annotation


# instance fields
.field private final executor:Ljava/util/concurrent/Executor;

.field private final zzbpw:Lcom/google/android/gms/internal/ads/zzayb;

.field private final zzfmv:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzgls:I

.field private final zzgyr:Lcom/google/android/gms/internal/ads/zzaxx;

.field private final zzvr:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaxx;ILandroid/content/Context;Lcom/google/android/gms/internal/ads/zzayb;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/Executor;)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdhz;->zzgyr:Lcom/google/android/gms/internal/ads/zzaxx;

    .line 3
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzdhz;->zzgls:I

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdhz;->zzvr:Landroid/content/Context;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdhz;->zzbpw:Lcom/google/android/gms/internal/ads/zzayb;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdhz;->zzfmv:Ljava/util/concurrent/ScheduledExecutorService;

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzdhz;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final zzarj()Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "Lcom/google/android/gms/internal/ads/zzdhw;",
            ">;"
        }
    .end annotation

    .line 9
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdhy;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdhy;-><init>(Lcom/google/android/gms/internal/ads/zzdhz;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdhz;->executor:Ljava/util/concurrent/Executor;

    .line 10
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdyq;->zza(Lcom/google/android/gms/internal/ads/zzdyb;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdyl;->zzg(Lcom/google/android/gms/internal/ads/zzdzc;)Lcom/google/android/gms/internal/ads/zzdyl;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdib;->zzdwz:Lcom/google/android/gms/internal/ads/zzdvu;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdhz;->executor:Ljava/util/concurrent/Executor;

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

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdhz;->zzfmv:Ljava/util/concurrent/ScheduledExecutorService;

    .line 16
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzdyl;->zza(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/zzdyl;

    move-result-object v0

    const-class v1, Ljava/lang/Exception;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdia;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzdia;-><init>(Lcom/google/android/gms/internal/ads/zzdhz;)V

    .line 17
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdze;->zzayh()Ljava/util/concurrent/Executor;

    move-result-object v3

    .line 18
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdyl;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzdvu;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdyl;

    move-result-object v0

    return-object v0
.end method

.method final synthetic zzase()Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdhz;->zzgyr:Lcom/google/android/gms/internal/ads/zzaxx;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdhz;->zzvr:Landroid/content/Context;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzdhz;->zzgls:I

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzaxx;->zza(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v0

    return-object v0
.end method

.method final synthetic zzb(Ljava/lang/Exception;)Lcom/google/android/gms/internal/ads/zzdhw;
    .registers 4

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdhz;->zzbpw:Lcom/google/android/gms/internal/ads/zzayb;

    const-string v1, "AttestationTokenSignal"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzayb;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method
