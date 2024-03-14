.class public final Lcom/google/android/gms/internal/ads/zzcpf;
.super Lcom/google/android/gms/internal/ads/zzcpd;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# static fields
.field private static final zzgju:Ljava/util/regex/Pattern;


# instance fields
.field private final zzfmv:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzfsk:Lcom/google/android/gms/internal/ads/zzdok;

.field private final zzgcz:Lcom/google/android/gms/internal/ads/zzdzb;

.field private final zzgjs:Lcom/google/android/gms/internal/ads/zzcoi;

.field private final zzgjt:Lcom/google/android/gms/internal/ads/zzcsc;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "Received error HTTP response code: (.*)"

    .line 32
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcpf;->zzgju:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbwr;Lcom/google/android/gms/internal/ads/zzdok;Lcom/google/android/gms/internal/ads/zzcoi;Lcom/google/android/gms/internal/ads/zzdzb;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/zzcsc;)V
    .registers 7

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzcpd;-><init>(Lcom/google/android/gms/internal/ads/zzbwr;)V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcpf;->zzfsk:Lcom/google/android/gms/internal/ads/zzdok;

    .line 3
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcpf;->zzgjs:Lcom/google/android/gms/internal/ads/zzcoi;

    .line 4
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcpf;->zzgcz:Lcom/google/android/gms/internal/ads/zzdzb;

    .line 5
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzcpf;->zzfmv:Ljava/util/concurrent/ScheduledExecutorService;

    .line 6
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzcpf;->zzgjt:Lcom/google/android/gms/internal/ads/zzcsc;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzcpf;)Lcom/google/android/gms/internal/ads/zzcsc;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcpf;->zzgjt:Lcom/google/android/gms/internal/ads/zzcsc;

    return-object p0
.end method

.method static synthetic zzapx()Ljava/util/regex/Pattern;
    .registers 1

    .line 30
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcpf;->zzgju:Ljava/util/regex/Pattern;

    return-object v0
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/ads/zzatc;)Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzatc;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "Lcom/google/android/gms/internal/ads/zzdog;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzcof;
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcpf;->zzgjs:Lcom/google/android/gms/internal/ads/zzcoi;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcoi;->zze(Lcom/google/android/gms/internal/ads/zzatc;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    .line 9
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcpi;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcpi;-><init>(Lcom/google/android/gms/internal/ads/zzcpf;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcpf;->zzgcz:Lcom/google/android/gms/internal/ads/zzdzb;

    .line 10
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzdyq;->zzb(Lcom/google/android/gms/internal/ads/zzdzc;Lcom/google/android/gms/internal/ads/zzdya;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    .line 11
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabb;->zzcva:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 13
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 14
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabb;->zzcvb:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 16
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 17
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcpf;->zzfmv:Ljava/util/concurrent/ScheduledExecutorService;

    .line 18
    invoke-static {p1, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdyq;->zza(Lcom/google/android/gms/internal/ads/zzdzc;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    .line 19
    const-class v0, Ljava/util/concurrent/TimeoutException;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzcph;->zzboo:Lcom/google/android/gms/internal/ads/zzdya;

    .line 20
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbbz;->zzeeu:Lcom/google/android/gms/internal/ads/zzdzb;

    .line 21
    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdyq;->zzb(Lcom/google/android/gms/internal/ads/zzdzc;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzdya;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    .line 22
    :cond_46
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcpk;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcpk;-><init>(Lcom/google/android/gms/internal/ads/zzcpf;)V

    .line 23
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbbz;->zzeeu:Lcom/google/android/gms/internal/ads/zzdzb;

    .line 24
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzdyq;->zza(Lcom/google/android/gms/internal/ads/zzdzc;Lcom/google/android/gms/internal/ads/zzdyr;Ljava/util/concurrent/Executor;)V

    return-object p1
.end method

.method final synthetic zzd(Ljava/io/InputStream;)Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 26
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdog;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdof;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcpf;->zzfsk:Lcom/google/android/gms/internal/ads/zzdok;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzdof;-><init>(Lcom/google/android/gms/internal/ads/zzdok;)V

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 27
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdoe;->zza(Ljava/io/Reader;)Lcom/google/android/gms/internal/ads/zzdoe;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdog;-><init>(Lcom/google/android/gms/internal/ads/zzdof;Lcom/google/android/gms/internal/ads/zzdoe;)V

    .line 28
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdyq;->zzaf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    return-object p1
.end method
