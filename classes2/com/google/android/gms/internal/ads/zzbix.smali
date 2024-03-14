.class public abstract Lcom/google/android/gms/internal/ads/zzbix;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbly;


# static fields
.field private static zzesl:Lcom/google/android/gms/internal/ads/zzbix;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "AppComponent.class"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzanb;I)Lcom/google/android/gms/internal/ads/zzbix;
    .registers 3

    .line 2
    invoke-static {p0, p2}, Lcom/google/android/gms/internal/ads/zzbix;->zzf(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/zzbix;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbix;->zzadn()Lcom/google/android/gms/internal/ads/zzcku;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzcku;->zzb(Lcom/google/android/gms/internal/ads/zzanb;)V

    return-object p0
.end method

.method private static zza(Lcom/google/android/gms/internal/ads/zzbbx;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbky$zza;)Lcom/google/android/gms/internal/ads/zzbix;
    .registers 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11
    const-class v0, Lcom/google/android/gms/internal/ads/zzbix;

    monitor-enter v0

    .line 12
    :try_start_3
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbix;->zzesl:Lcom/google/android/gms/internal/ads/zzbix;

    if-nez v1, :cond_96

    .line 13
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbkm;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzbkm;-><init>(Lcom/google/android/gms/internal/ads/zzbju;)V

    .line 14
    new-instance v3, Lcom/google/android/gms/internal/ads/zzbja$zza;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzbja$zza;-><init>()V

    .line 15
    invoke-virtual {v3, p0}, Lcom/google/android/gms/internal/ads/zzbja$zza;->zza(Lcom/google/android/gms/internal/ads/zzbbx;)Lcom/google/android/gms/internal/ads/zzbja$zza;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/ads/zzbja$zza;->zzbx(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzbja$zza;

    move-result-object v3

    .line 16
    new-instance v4, Lcom/google/android/gms/internal/ads/zzbja;

    invoke-direct {v4, v3, v2}, Lcom/google/android/gms/internal/ads/zzbja;-><init>(Lcom/google/android/gms/internal/ads/zzbja$zza;Lcom/google/android/gms/internal/ads/zzbiz;)V

    .line 17
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzbkm;->zzc(Lcom/google/android/gms/internal/ads/zzbja;)Lcom/google/android/gms/internal/ads/zzbkm;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbky;

    invoke-direct {v2, p2}, Lcom/google/android/gms/internal/ads/zzbky;-><init>(Lcom/google/android/gms/internal/ads/zzbky$zza;)V

    .line 18
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzbkm;->zza(Lcom/google/android/gms/internal/ads/zzbky;)Lcom/google/android/gms/internal/ads/zzbkm;

    move-result-object p2

    .line 19
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzbkm;->zzagf()Lcom/google/android/gms/internal/ads/zzbix;

    move-result-object p2

    sput-object p2, Lcom/google/android/gms/internal/ads/zzbix;->zzesl:Lcom/google/android/gms/internal/ads/zzbix;

    .line 20
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzabb;->initialize(Landroid/content/Context;)V

    .line 21
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkv()Lcom/google/android/gms/internal/ads/zzayb;

    move-result-object p2

    invoke-virtual {p2, p1, p0}, Lcom/google/android/gms/internal/ads/zzayb;->zzd(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbx;)V

    .line 22
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkx()Lcom/google/android/gms/internal/ads/zzsw;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzsw;->initialize(Landroid/content/Context;)V

    .line 23
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkr()Lcom/google/android/gms/internal/ads/zzayu;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzayu;->zzap(Landroid/content/Context;)Z

    .line 24
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkr()Lcom/google/android/gms/internal/ads/zzayu;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzayu;->zzaq(Landroid/content/Context;)Z

    .line 25
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayn;->zzao(Landroid/content/Context;)V

    .line 26
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzku()Lcom/google/android/gms/internal/ads/zzrg;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzrg;->initialize(Landroid/content/Context;)V

    .line 27
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzlm()Lcom/google/android/gms/internal/ads/zzbbc;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbbc;->initialize(Landroid/content/Context;)V

    .line 28
    sget-object p2, Lcom/google/android/gms/internal/ads/zzabb;->zzcwk:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 29
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object p2

    .line 30
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_96

    .line 31
    new-instance p2, Lcom/google/android/gms/internal/ads/zzcsm;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzts;

    new-instance v2, Lcom/google/android/gms/internal/ads/zztx;

    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/ads/zztx;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzts;-><init>(Lcom/google/android/gms/internal/ads/zztx;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcrw;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzcru;

    invoke-direct {v3, p1}, Lcom/google/android/gms/internal/ads/zzcru;-><init>(Landroid/content/Context;)V

    sget-object v4, Lcom/google/android/gms/internal/ads/zzbix;->zzesl:Lcom/google/android/gms/internal/ads/zzbix;

    .line 32
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzbix;->zzadl()Lcom/google/android/gms/internal/ads/zzdzb;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzcrw;-><init>(Lcom/google/android/gms/internal/ads/zzcru;Lcom/google/android/gms/internal/ads/zzdzb;)V

    invoke-direct {p2, p1, p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcsm;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbx;Lcom/google/android/gms/internal/ads/zzts;Lcom/google/android/gms/internal/ads/zzcrw;)V

    .line 33
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzcsm;->zzaqh()V

    .line 34
    :cond_96
    sget-object p0, Lcom/google/android/gms/internal/ads/zzbix;->zzesl:Lcom/google/android/gms/internal/ads/zzbix;

    monitor-exit v0

    return-object p0

    :catchall_9a
    move-exception p0

    .line 35
    monitor-exit v0
    :try_end_9c
    .catchall {:try_start_3 .. :try_end_9c} :catchall_9a

    throw p0
.end method

.method public static zzf(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/zzbix;
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5
    const-class v0, Lcom/google/android/gms/internal/ads/zzbix;

    monitor-enter v0

    .line 6
    :try_start_3
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbix;->zzesl:Lcom/google/android/gms/internal/ads/zzbix;

    if-eqz v1, :cond_b

    .line 7
    sget-object p0, Lcom/google/android/gms/internal/ads/zzbix;->zzesl:Lcom/google/android/gms/internal/ads/zzbix;

    monitor-exit v0

    return-object p0

    .line 8
    :cond_b
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_20

    .line 9
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbbx;

    const v1, 0xc120eb0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbbx;-><init>(IIZZ)V

    .line 10
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbjs;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzbjs;-><init>()V

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzbix;->zza(Lcom/google/android/gms/internal/ads/zzbbx;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbky$zza;)Lcom/google/android/gms/internal/ads/zzbix;

    move-result-object p0

    return-object p0

    :catchall_20
    move-exception p0

    .line 8
    :try_start_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzatc;I)Lcom/google/android/gms/internal/ads/zzdhp;
    .registers 4

    .line 36
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdiy;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdiy;-><init>(Lcom/google/android/gms/internal/ads/zzatc;I)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzbix;->zza(Lcom/google/android/gms/internal/ads/zzdiy;)Lcom/google/android/gms/internal/ads/zzdhp;

    move-result-object p1

    return-object p1
.end method

.method protected abstract zza(Lcom/google/android/gms/internal/ads/zzdiy;)Lcom/google/android/gms/internal/ads/zzdhp;
.end method

.method public abstract zzadi()Ljava/util/concurrent/Executor;
.end method

.method public abstract zzadj()Ljava/util/concurrent/ScheduledExecutorService;
.end method

.method public abstract zzadk()Ljava/util/concurrent/Executor;
.end method

.method public abstract zzadl()Lcom/google/android/gms/internal/ads/zzdzb;
.end method

.method public abstract zzadm()Lcom/google/android/gms/internal/ads/zzbwk;
.end method

.method public abstract zzadn()Lcom/google/android/gms/internal/ads/zzcku;
.end method

.method public abstract zzado()Lcom/google/android/gms/internal/ads/zzbld;
.end method

.method public abstract zzadp()Lcom/google/android/gms/internal/ads/zzbpl;
.end method

.method public abstract zzadq()Lcom/google/android/gms/internal/ads/zzbnp;
.end method

.method public abstract zzadr()Lcom/google/android/gms/internal/ads/zzboe;
.end method

.method public abstract zzads()Lcom/google/android/gms/internal/ads/zzdjx;
.end method

.method public abstract zzadt()Lcom/google/android/gms/internal/ads/zzccd;
.end method

.method public abstract zzadu()Lcom/google/android/gms/internal/ads/zzccz;
.end method

.method public abstract zzadv()Lcom/google/android/gms/internal/ads/zzcjm;
.end method

.method public abstract zzadw()Lcom/google/android/gms/internal/ads/zzdnm;
.end method

.method public abstract zzadx()Lcom/google/android/gms/internal/ads/zzdan;
.end method

.method public abstract zzady()Lcom/google/android/gms/internal/ads/zzdaq;
.end method

.method public abstract zzadz()Lcom/google/android/gms/internal/ads/zzcsy;
.end method

.method public abstract zzaea()Lcom/google/android/gms/internal/ads/zzdoz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzdoz<",
            "Lcom/google/android/gms/internal/ads/zzcil;",
            ">;"
        }
    .end annotation
.end method
