.class public final Lcom/google/android/gms/internal/ads/zzayb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final lock:Ljava/lang/Object;

.field private zzbpe:Lcom/google/android/gms/internal/ads/zzbbx;

.field private final zzdyh:Lcom/google/android/gms/internal/ads/zzayi;

.field private zzdza:Lcom/google/android/gms/internal/ads/zzqn;

.field private final zzdzb:Lcom/google/android/gms/internal/ads/zzayq;

.field private zzdzc:Lcom/google/android/gms/internal/ads/zzabi;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzdzd:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzdze:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final zzdzf:Lcom/google/android/gms/internal/ads/zzayc;

.field private final zzdzg:Ljava/lang/Object;

.field private zzdzh:Lcom/google/android/gms/internal/ads/zzdzc;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "grantedPermissionLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private zzvr:Landroid/content/Context;

.field private zzzh:Z


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzayb;->lock:Ljava/lang/Object;

    .line 58
    new-instance v0, Lcom/google/android/gms/internal/ads/zzayq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzayq;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzayb;->zzdzb:Lcom/google/android/gms/internal/ads/zzayq;

    .line 59
    new-instance v0, Lcom/google/android/gms/internal/ads/zzayi;

    .line 60
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpy()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzayb;->zzdzb:Lcom/google/android/gms/internal/ads/zzayq;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzayi;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzayr;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzayb;->zzdyh:Lcom/google/android/gms/internal/ads/zzayi;

    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzayb;->zzzh:Z

    const/4 v1, 0x0

    .line 62
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzayb;->zzdzc:Lcom/google/android/gms/internal/ads/zzabi;

    .line 63
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzayb;->zzdzd:Ljava/lang/Boolean;

    .line 64
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzayb;->zzdze:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 65
    new-instance v0, Lcom/google/android/gms/internal/ads/zzayc;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzayc;-><init>(Lcom/google/android/gms/internal/ads/zzayd;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzayb;->zzdzf:Lcom/google/android/gms/internal/ads/zzayc;

    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzayb;->zzdzg:Ljava/lang/Object;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzayb;)Landroid/content/Context;
    .registers 1

    .line 109
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzayb;->zzvr:Landroid/content/Context;

    return-object p0
.end method

.method private static zzam(Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 92
    :try_start_5
    invoke-static {p0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v1

    .line 93
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v2, 0x1000

    .line 94
    invoke-virtual {v1, p0, v2}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_15
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_15} :catch_36

    .line 98
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v1, :cond_36

    iget-object v1, p0, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    if-nez v1, :cond_1e

    goto :goto_36

    :cond_1e
    const/4 v1, 0x0

    .line 100
    :goto_1f
    iget-object v2, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_36

    .line 101
    iget-object v2, p0, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v2, v2, v1

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_33

    .line 102
    iget-object v2, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    :catch_36
    :cond_36
    :goto_36
    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzayb;)Lcom/google/android/gms/internal/ads/zzbbx;
    .registers 1

    .line 110
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzayb;->zzbpe:Lcom/google/android/gms/internal/ads/zzbbx;

    return-object p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/ads/zzayb;)Ljava/lang/Object;
    .registers 1

    .line 111
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzayb;->lock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/ads/zzayb;)Lcom/google/android/gms/internal/ads/zzabi;
    .registers 1

    .line 112
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzayb;->zzdzc:Lcom/google/android/gms/internal/ads/zzabi;

    return-object p0
.end method


# virtual methods
.method public final getApplicationContext()Landroid/content/Context;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayb;->zzvr:Landroid/content/Context;

    return-object v0
.end method

.method public final getResources()Landroid/content/res/Resources;
    .registers 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayb;->zzbpe:Lcom/google/android/gms/internal/ads/zzbbx;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzbbx;->zzeen:Z

    if-eqz v0, :cond_d

    .line 42
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayb;->zzvr:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0

    :cond_d
    const/4 v0, 0x0

    .line 43
    :try_start_e
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzayb;->zzvr:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbbt;->zzbu(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    :try_end_17
    .catch Lcom/google/android/gms/internal/ads/zzbbv; {:try_start_e .. :try_end_17} :catch_18

    return-object v0

    :catch_18
    move-exception v1

    const-string v2, "Cannot load resource from dynamite apk or local jar"

    .line 46
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzayp;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public final zza(Ljava/lang/Boolean;)V
    .registers 3

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayb;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 5
    :try_start_3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzayb;->zzdzd:Ljava/lang/Boolean;

    .line 6
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p1
.end method

.method public final zza(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 5

    .line 49
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayb;->zzvr:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzayb;->zzbpe:Lcom/google/android/gms/internal/ads/zzbbx;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzasf;->zzc(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbx;)Lcom/google/android/gms/internal/ads/zzasj;

    move-result-object v0

    .line 50
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzasj;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public final zzb(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 5

    .line 52
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayb;->zzvr:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzayb;->zzbpe:Lcom/google/android/gms/internal/ads/zzbbx;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzasf;->zzc(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbx;)Lcom/google/android/gms/internal/ads/zzasj;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzadb;->zzdch:Lcom/google/android/gms/internal/ads/zzaci;

    .line 53
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaci;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->floatValue()F

    move-result v1

    .line 54
    invoke-interface {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzasj;->zza(Ljava/lang/Throwable;Ljava/lang/String;F)V

    return-void
.end method

.method public final zzd(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbx;)V
    .registers 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayb;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 13
    :try_start_3
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzayb;->zzzh:Z

    if-nez v1, :cond_6a

    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzayb;->zzvr:Landroid/content/Context;

    .line 15
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzayb;->zzbpe:Lcom/google/android/gms/internal/ads/zzbbx;

    .line 16
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzku()Lcom/google/android/gms/internal/ads/zzrg;

    move-result-object v1

    .line 17
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzayb;->zzdyh:Lcom/google/android/gms/internal/ads/zzayi;

    .line 18
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzrg;->zza(Lcom/google/android/gms/internal/ads/zzrh;)V

    .line 19
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzayb;->zzdzb:Lcom/google/android/gms/internal/ads/zzayq;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzayb;->zzvr:Landroid/content/Context;

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 20
    invoke-virtual {v1, v2, v4, v3}, Lcom/google/android/gms/internal/ads/zzayq;->zza(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 22
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzayb;->zzvr:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzayb;->zzbpe:Lcom/google/android/gms/internal/ads/zzbbx;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzasf;->zzc(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbx;)Lcom/google/android/gms/internal/ads/zzasj;

    .line 23
    new-instance v1, Lcom/google/android/gms/internal/ads/zzqn;

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzayb;->zzbpe:Lcom/google/android/gms/internal/ads/zzbbx;

    invoke-direct {v1, v2, v5}, Lcom/google/android/gms/internal/ads/zzqn;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbx;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzayb;->zzdza:Lcom/google/android/gms/internal/ads/zzqn;

    .line 26
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzla()Lcom/google/android/gms/internal/ads/zzabk;

    .line 27
    sget-object v1, Lcom/google/android/gms/internal/ads/zzacp;->zzdap:Lcom/google/android/gms/internal/ads/zzaci;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaci;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_4c

    const-string v1, "CsiReporterFactory: CSI is not enabled. No CSI reporter created."

    .line 28
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzayp;->zzei(Ljava/lang/String;)V

    goto :goto_51

    .line 30
    :cond_4c
    new-instance v4, Lcom/google/android/gms/internal/ads/zzabi;

    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/zzabi;-><init>()V

    .line 31
    :goto_51
    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzayb;->zzdzc:Lcom/google/android/gms/internal/ads/zzabi;

    .line 32
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzayb;->zzdzc:Lcom/google/android/gms/internal/ads/zzabi;

    if-eqz v1, :cond_65

    .line 33
    new-instance v1, Lcom/google/android/gms/internal/ads/zzayd;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzayd;-><init>(Lcom/google/android/gms/internal/ads/zzayb;)V

    .line 34
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzayl;->zzwz()Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v1

    const-string v2, "AppState.registerCsiReporter"

    .line 35
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzbcc;->zza(Lcom/google/android/gms/internal/ads/zzdzc;Ljava/lang/String;)V

    .line 36
    :cond_65
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzayb;->zzzh:Z

    .line 37
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzayb;->zzwu()Lcom/google/android/gms/internal/ads/zzdzc;

    .line 38
    :cond_6a
    monitor-exit v0
    :try_end_6b
    .catchall {:try_start_3 .. :try_end_6b} :catchall_75

    .line 39
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkr()Lcom/google/android/gms/internal/ads/zzayu;

    move-result-object v0

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzbbx;->zzbre:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzayu;->zzs(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    return-void

    :catchall_75
    move-exception p1

    .line 38
    :try_start_76
    monitor-exit v0
    :try_end_77
    .catchall {:try_start_76 .. :try_end_77} :catchall_75

    throw p1
.end method

.method public final zzwn()Lcom/google/android/gms/internal/ads/zzabi;
    .registers 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayb;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzayb;->zzdzc:Lcom/google/android/gms/internal/ads/zzabi;

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public final zzwo()Ljava/lang/Boolean;
    .registers 3

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayb;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 8
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzayb;->zzdzd:Ljava/lang/Boolean;

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    .line 9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public final zzwp()V
    .registers 2

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayb;->zzdzf:Lcom/google/android/gms/internal/ads/zzayc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzayc;->zzwp()V

    return-void
.end method

.method public final zzwq()V
    .registers 2

    .line 68
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayb;->zzdze:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method public final zzwr()V
    .registers 2

    .line 70
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayb;->zzdze:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    return-void
.end method

.method public final zzws()I
    .registers 2

    .line 72
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayb;->zzdze:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public final zzwt()Lcom/google/android/gms/internal/ads/zzayr;
    .registers 3

    .line 73
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayb;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 74
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzayb;->zzdzb:Lcom/google/android/gms/internal/ads/zzayq;

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    .line 75
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public final zzwu()Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 77
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastJellyBean()Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayb;->zzvr:Landroid/content/Context;

    if-eqz v0, :cond_3a

    .line 78
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabb;->zzcra:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 80
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 81
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_3a

    .line 83
    :cond_1d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayb;->zzdzg:Ljava/lang/Object;

    monitor-enter v0

    .line 84
    :try_start_20
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzayb;->zzdzh:Lcom/google/android/gms/internal/ads/zzdzc;

    if-eqz v1, :cond_28

    .line 85
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzayb;->zzdzh:Lcom/google/android/gms/internal/ads/zzdzc;

    monitor-exit v0

    return-object v1

    .line 86
    :cond_28
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbbz;->zzeep:Lcom/google/android/gms/internal/ads/zzdzb;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzaya;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzaya;-><init>(Lcom/google/android/gms/internal/ads/zzayb;)V

    .line 87
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzdzb;->zze(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzayb;->zzdzh:Lcom/google/android/gms/internal/ads/zzdzc;

    monitor-exit v0

    return-object v1

    :catchall_37
    move-exception v1

    .line 89
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_20 .. :try_end_39} :catchall_37

    throw v1

    .line 82
    :cond_3a
    :goto_3a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdyq;->zzaf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v0

    return-object v0
.end method

.method public final zzwv()Lcom/google/android/gms/internal/ads/zzayi;
    .registers 2

    .line 105
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayb;->zzdyh:Lcom/google/android/gms/internal/ads/zzayi;

    return-object v0
.end method

.method final synthetic zzww()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayb;->zzvr:Landroid/content/Context;

    .line 107
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzatx;->zzab(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 108
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzayb;->zzam(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
