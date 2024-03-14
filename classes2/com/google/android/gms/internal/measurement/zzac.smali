.class public Lcom/google/android/gms/internal/measurement/zzac;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-sdk-api@@17.4.1"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/zzac$zzd;,
        Lcom/google/android/gms/internal/measurement/zzac$zzc;,
        Lcom/google/android/gms/internal/measurement/zzac$zzb;,
        Lcom/google/android/gms/internal/measurement/zzac$zza;
    }
.end annotation


# static fields
.field private static volatile zzb:Lcom/google/android/gms/internal/measurement/zzac; = null

.field private static zzh:Ljava/lang/Boolean; = null

.field private static zzi:Ljava/lang/Boolean; = null

.field private static zzj:Z = false

.field private static zzk:Ljava/lang/Boolean; = null

.field private static zzl:Ljava/lang/String; = "use_dynamite_api"
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field private static zzm:Ljava/lang/String; = "allow_remote_dynamite"
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field private static zzn:Z = true

.field private static zzo:Z = false


# instance fields
.field protected final zza:Lcom/google/android/gms/common/util/Clock;

.field private final zzc:Ljava/lang/String;

.field private final zzd:Ljava/util/concurrent/ExecutorService;

.field private final zze:Lcom/google/android/gms/measurement/api/AppMeasurementSdk;

.field private zzf:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/google/android/gms/measurement/internal/zzha;",
            "Lcom/google/android/gms/internal/measurement/zzac$zzb;",
            ">;>;"
        }
    .end annotation
.end field

.field private zzg:I

.field private zzp:Z

.field private zzq:Ljava/lang/String;

.field private zzr:Lcom/google/android/gms/internal/measurement/zzr;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 13

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_f

    .line 11
    invoke-static {p3, p4}, Lcom/google/android/gms/internal/measurement/zzac;->zzc(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_f

    .line 13
    :cond_c
    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzac;->zzc:Ljava/lang/String;

    goto :goto_13

    :cond_f
    :goto_f
    const-string p2, "FA"

    .line 12
    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzac;->zzc:Ljava/lang/String;

    .line 15
    :goto_13
    invoke-static {}, Lcom/google/android/gms/common/util/DefaultClock;->getInstance()Lcom/google/android/gms/common/util/Clock;

    move-result-object p2

    .line 16
    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzac;->zza:Lcom/google/android/gms/common/util/Clock;

    .line 18
    new-instance p2, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v3, 0x1e

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move-object v0, p2

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 19
    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzac;->zzd:Ljava/util/concurrent/ExecutorService;

    .line 20
    new-instance p2, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;

    invoke-direct {p2, p0}, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;-><init>(Lcom/google/android/gms/internal/measurement/zzac;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzac;->zze:Lcom/google/android/gms/measurement/api/AppMeasurementSdk;

    .line 22
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzac;->zzf(Landroid/content/Context;)Z

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_44

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzac;->zzk()Z

    move-result p2

    if-eqz p2, :cond_42

    goto :goto_44

    :cond_42
    const/4 p2, 0x0

    goto :goto_45

    :cond_44
    :goto_44
    const/4 p2, 0x1

    :goto_45
    if-nez p2, :cond_54

    const/4 p1, 0x0

    .line 24
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzac;->zzq:Ljava/lang/String;

    .line 25
    iput-boolean v1, p0, Lcom/google/android/gms/internal/measurement/zzac;->zzp:Z

    .line 26
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzac;->zzc:Ljava/lang/String;

    const-string p2, "Disabling data collection. Found google_app_id in strings.xml but Google Analytics for Firebase is missing. Remove this value or add Google Analytics for Firebase to resume data collection."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 28
    :cond_54
    invoke-static {p3, p4}, Lcom/google/android/gms/internal/measurement/zzac;->zzc(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_7d

    const-string p2, "fa"

    .line 29
    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzac;->zzq:Ljava/lang/String;

    if-eqz p3, :cond_6a

    if-eqz p4, :cond_6a

    .line 31
    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/zzac;->zzc:Ljava/lang/String;

    const-string v0, "Deferring to Google Analytics for Firebase for event data collection. https://goo.gl/J1sWQy"

    invoke-static {p2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7f

    :cond_6a
    if-nez p3, :cond_6e

    const/4 p2, 0x1

    goto :goto_6f

    :cond_6e
    const/4 p2, 0x0

    :goto_6f
    if-nez p4, :cond_72

    const/4 v0, 0x1

    :cond_72
    xor-int/2addr p2, v0

    if-eqz p2, :cond_7f

    .line 33
    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/zzac;->zzc:Ljava/lang/String;

    const-string v0, "Specified origin or custom app id is null. Both parameters will be ignored."

    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7f

    .line 34
    :cond_7d
    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzac;->zzq:Ljava/lang/String;

    .line 35
    :cond_7f
    :goto_7f
    new-instance p2, Lcom/google/android/gms/internal/measurement/zzaf;

    move-object v1, p2

    move-object v2, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p1

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/zzaf;-><init>(Lcom/google/android/gms/internal/measurement/zzac;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Bundle;)V

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/zzac;->zza(Lcom/google/android/gms/internal/measurement/zzac$zza;)V

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    if-nez p1, :cond_9d

    .line 38
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzac;->zzc:Ljava/lang/String;

    const-string p2, "Unable to register lifecycle notifications. Application null."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 40
    :cond_9d
    new-instance p2, Lcom/google/android/gms/internal/measurement/zzac$zzd;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/measurement/zzac$zzd;-><init>(Lcom/google/android/gms/internal/measurement/zzac;)V

    invoke-virtual {p1, p2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public static zza(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/zzac;
    .registers 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0, v0, v0, v0}, Lcom/google/android/gms/internal/measurement/zzac;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/internal/measurement/zzac;

    move-result-object p0

    return-object p0
.end method

.method public static zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/internal/measurement/zzac;
    .registers 13

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzac;->zzb:Lcom/google/android/gms/internal/measurement/zzac;

    if-nez v0, :cond_20

    .line 4
    const-class v0, Lcom/google/android/gms/internal/measurement/zzac;

    monitor-enter v0

    .line 5
    :try_start_a
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzac;->zzb:Lcom/google/android/gms/internal/measurement/zzac;

    if-nez v1, :cond_1b

    .line 6
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzac;

    move-object v2, v1

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/measurement/zzac;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzac;->zzb:Lcom/google/android/gms/internal/measurement/zzac;

    .line 7
    :cond_1b
    monitor-exit v0

    goto :goto_20

    :catchall_1d
    move-exception p0

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_a .. :try_end_1f} :catchall_1d

    throw p0

    .line 8
    :cond_20
    :goto_20
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzac;->zzb:Lcom/google/android/gms/internal/measurement/zzac;

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzac;Lcom/google/android/gms/internal/measurement/zzr;)Lcom/google/android/gms/internal/measurement/zzr;
    .registers 2

    .line 248
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzac;->zzr:Lcom/google/android/gms/internal/measurement/zzr;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzac;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .line 243
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzac;->zzf:Ljava/util/List;

    return-object p1
.end method

.method private final zza(Lcom/google/android/gms/internal/measurement/zzac$zza;)V
    .registers 3

    .line 50
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzac;->zzd:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzac;Lcom/google/android/gms/internal/measurement/zzac$zza;)V
    .registers 2

    .line 253
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzac;->zza(Lcom/google/android/gms/internal/measurement/zzac$zza;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzac;Ljava/lang/Exception;ZZ)V
    .registers 4

    .line 242
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzac;->zza(Ljava/lang/Exception;ZZ)V

    return-void
.end method

.method private final zza(Ljava/lang/Exception;ZZ)V
    .registers 10

    .line 65
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzac;->zzp:Z

    or-int/2addr v0, p2

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzac;->zzp:Z

    if-eqz p2, :cond_f

    .line 67
    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/zzac;->zzc:Ljava/lang/String;

    const-string p3, "Data collection startup failed. No data will be collected."

    invoke-static {p2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_f
    const-string p2, "Error with data collection. Data lost."

    if-eqz p3, :cond_1c

    const/4 v1, 0x5

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v3, p1

    .line 70
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzac;->zza(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 71
    :cond_1c
    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzac;->zzc:Ljava/lang/String;

    invoke-static {p3, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private final zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZLjava/lang/Long;)V
    .registers 16

    .line 91
    new-instance v8, Lcom/google/android/gms/internal/measurement/zzbf;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p6

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/measurement/zzbf;-><init>(Lcom/google/android/gms/internal/measurement/zzac;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZ)V

    invoke-direct {p0, v8}, Lcom/google/android/gms/internal/measurement/zzac;->zza(Lcom/google/android/gms/internal/measurement/zzac$zza;)V

    return-void
.end method

.method private final zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V
    .registers 12

    .line 97
    new-instance v6, Lcom/google/android/gms/internal/measurement/zzbe;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzbe;-><init>(Lcom/google/android/gms/internal/measurement/zzac;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-direct {p0, v6}, Lcom/google/android/gms/internal/measurement/zzac;->zza(Lcom/google/android/gms/internal/measurement/zzac$zza;)V

    return-void
.end method

.method private static zza(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Size;
            min = 0x1L
        .end annotation
    .end param

    .line 232
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x0

    .line 234
    :try_start_4
    invoke-static {p0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v1

    .line 235
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x80

    invoke-virtual {v1, p0, v2}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_20

    .line 236
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v1, :cond_19

    goto :goto_20

    .line 238
    :cond_19
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0
    :try_end_1f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_1f} :catch_20

    return p0

    :catch_20
    :cond_20
    :goto_20
    return v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzac;)Z
    .registers 1

    .line 241
    iget-boolean p0, p0, Lcom/google/android/gms/internal/measurement/zzac;->zzp:Z

    return p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzac;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 244
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/zzac;->zzc(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/measurement/zzac;)Ljava/lang/String;
    .registers 1

    .line 245
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzac;->zzc:Ljava/lang/String;

    return-object p0
.end method

.method public static zzb(Landroid/content/Context;)Z
    .registers 9

    .line 208
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzac;->zzi(Landroid/content/Context;)V

    .line 209
    const-class p0, Lcom/google/android/gms/internal/measurement/zzac;

    monitor-enter p0

    .line 210
    :try_start_6
    sget-boolean v0, Lcom/google/android/gms/internal/measurement/zzac;->zzj:Z

    if-eqz v0, :cond_c

    .line 211
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_76

    goto :goto_68

    :cond_c
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_e
    const-string v2, "android.os.SystemProperties"

    .line 212
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "get"

    const/4 v4, 0x2

    .line 213
    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v1

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 214
    new-array v3, v4, [Ljava/lang/Object;

    const-string v4, "measurement.dynamite.enabled"

    aput-object v4, v3, v7

    const-string v4, ""

    aput-object v4, v3, v1

    .line 215
    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "true"

    .line 216
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 217
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lcom/google/android/gms/internal/measurement/zzac;->zzk:Ljava/lang/Boolean;

    goto :goto_56

    :cond_45
    const-string v3, "false"

    .line 218
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_54

    .line 219
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lcom/google/android/gms/internal/measurement/zzac;->zzk:Ljava/lang/Boolean;

    goto :goto_56

    .line 220
    :cond_54
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzac;->zzk:Ljava/lang/Boolean;
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_56} :catch_5b
    .catchall {:try_start_e .. :try_end_56} :catchall_59

    .line 221
    :goto_56
    :try_start_56
    sput-boolean v1, Lcom/google/android/gms/internal/measurement/zzac;->zzj:Z
    :try_end_58
    .catchall {:try_start_56 .. :try_end_58} :catchall_76

    goto :goto_67

    :catchall_59
    move-exception v0

    goto :goto_73

    :catch_5b
    move-exception v2

    :try_start_5c
    const-string v3, "FA"

    const-string v4, "Unable to call SystemProperties.get()"

    .line 224
    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 225
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzac;->zzk:Ljava/lang/Boolean;
    :try_end_65
    .catchall {:try_start_5c .. :try_end_65} :catchall_59

    .line 226
    :try_start_65
    sput-boolean v1, Lcom/google/android/gms/internal/measurement/zzac;->zzj:Z

    .line 230
    :goto_67
    monitor-exit p0
    :try_end_68
    .catchall {:try_start_65 .. :try_end_68} :catchall_76

    .line 231
    :goto_68
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzac;->zzk:Ljava/lang/Boolean;

    if-nez p0, :cond_6e

    sget-object p0, Lcom/google/android/gms/internal/measurement/zzac;->zzh:Ljava/lang/Boolean;

    :cond_6e
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 228
    :goto_73
    :try_start_73
    sput-boolean v1, Lcom/google/android/gms/internal/measurement/zzac;->zzj:Z

    .line 229
    throw v0

    :catchall_76
    move-exception v0

    .line 230
    monitor-exit p0
    :try_end_78
    .catchall {:try_start_73 .. :try_end_78} :catchall_76

    throw v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/measurement/zzac;)Lcom/google/android/gms/internal/measurement/zzr;
    .registers 1

    .line 249
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzac;->zzr:Lcom/google/android/gms/internal/measurement/zzr;

    return-object p0
.end method

.method static synthetic zzc(Landroid/content/Context;)V
    .registers 1

    .line 246
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzac;->zzi(Landroid/content/Context;)V

    return-void
.end method

.method private static zzc(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 2

    if-eqz p1, :cond_c

    if-eqz p0, :cond_c

    .line 49
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzac;->zzk()Z

    move-result p0

    if-nez p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic zzd(Landroid/content/Context;)I
    .registers 1

    .line 250
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzac;->zzh(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/measurement/zzac;)Ljava/util/List;
    .registers 1

    .line 252
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzac;->zzf:Ljava/util/List;

    return-object p0
.end method

.method static synthetic zze(Landroid/content/Context;)I
    .registers 1

    .line 251
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzac;->zzg(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method private static zzf(Landroid/content/Context;)Z
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "google_app_id"

    .line 44
    new-instance v2, Lcom/google/android/gms/common/internal/StringResourceValueReader;

    invoke-direct {v2, p0}, Lcom/google/android/gms/common/internal/StringResourceValueReader;-><init>(Landroid/content/Context;)V

    .line 45
    invoke-virtual {v2, v1}, Lcom/google/android/gms/common/internal/StringResourceValueReader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_c
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_c} :catch_10

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :catch_10
    :cond_10
    return v0
.end method

.method private static zzg(Landroid/content/Context;)I
    .registers 2

    const-string v0, "com.google.android.gms.measurement.dynamite"

    .line 63
    invoke-static {p0, v0}, Lcom/google/android/gms/dynamite/DynamiteModule;->getRemoteVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static zzh(Landroid/content/Context;)I
    .registers 2

    const-string v0, "com.google.android.gms.measurement.dynamite"

    .line 64
    invoke-static {p0, v0}, Lcom/google/android/gms/dynamite/DynamiteModule;->getLocalVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static zzi(Landroid/content/Context;)V
    .registers 5

    .line 185
    const-class v0, Lcom/google/android/gms/internal/measurement/zzac;

    monitor-enter v0

    const/4 v1, 0x0

    .line 186
    :try_start_4
    sget-object v2, Lcom/google/android/gms/internal/measurement/zzac;->zzh:Ljava/lang/Boolean;

    if-eqz v2, :cond_e

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzac;->zzi:Ljava/lang/Boolean;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_a} :catch_5a
    .catchall {:try_start_4 .. :try_end_a} :catchall_58

    if-eqz v2, :cond_e

    .line 187
    :try_start_c
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_58

    return-void

    :cond_e
    :try_start_e
    const-string v2, "app_measurement_internal_disable_startup_flags"

    .line 188
    invoke-static {p0, v2}, Lcom/google/android/gms/internal/measurement/zzac;->zza(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 189
    sget-boolean p0, Lcom/google/android/gms/internal/measurement/zzac;->zzn:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/internal/measurement/zzac;->zzh:Ljava/lang/Boolean;

    .line 190
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/internal/measurement/zzac;->zzi:Ljava/lang/Boolean;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_24} :catch_5a
    .catchall {:try_start_e .. :try_end_24} :catchall_58

    .line 191
    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_58

    return-void

    :cond_26
    :try_start_26
    const-string v2, "com.google.android.gms.measurement.prefs"

    .line 193
    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 194
    sget-object v2, Lcom/google/android/gms/internal/measurement/zzac;->zzl:Ljava/lang/String;

    sget-boolean v3, Lcom/google/android/gms/internal/measurement/zzac;->zzn:Z

    .line 195
    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lcom/google/android/gms/internal/measurement/zzac;->zzh:Ljava/lang/Boolean;

    .line 196
    sget-object v2, Lcom/google/android/gms/internal/measurement/zzac;->zzm:Ljava/lang/String;

    .line 197
    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lcom/google/android/gms/internal/measurement/zzac;->zzi:Ljava/lang/Boolean;

    .line 198
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 199
    sget-object v2, Lcom/google/android/gms/internal/measurement/zzac;->zzl:Ljava/lang/String;

    invoke-interface {p0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 200
    sget-object v2, Lcom/google/android/gms/internal/measurement/zzac;->zzm:Ljava/lang/String;

    invoke-interface {p0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 201
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_57} :catch_5a
    .catchall {:try_start_26 .. :try_end_57} :catchall_58

    goto :goto_70

    :catchall_58
    move-exception p0

    goto :goto_72

    :catch_5a
    move-exception p0

    :try_start_5b
    const-string v2, "FA"

    const-string v3, "Exception reading flag from SharedPreferences."

    .line 204
    invoke-static {v2, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 205
    sget-boolean p0, Lcom/google/android/gms/internal/measurement/zzac;->zzn:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/internal/measurement/zzac;->zzh:Ljava/lang/Boolean;

    .line 206
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/internal/measurement/zzac;->zzi:Ljava/lang/Boolean;

    .line 207
    :goto_70
    monitor-exit v0

    return-void

    :goto_72
    monitor-exit v0
    :try_end_73
    .catchall {:try_start_5b .. :try_end_73} :catchall_58

    throw p0
.end method

.method static synthetic zzj()Ljava/lang/Boolean;
    .registers 1

    .line 247
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzac;->zzi:Ljava/lang/Boolean;

    return-object v0
.end method

.method private static zzk()Z
    .registers 1

    :try_start_0
    const-string v0, "com.google.firebase.analytics.FirebaseAnalytics"

    .line 73
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_5} :catch_7

    const/4 v0, 0x1

    return v0

    :catch_7
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final zza(Landroid/os/Bundle;Z)Landroid/os/Bundle;
    .registers 5

    .line 163
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzp;-><init>()V

    .line 164
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzaw;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzaw;-><init>(Lcom/google/android/gms/internal/measurement/zzac;Landroid/os/Bundle;Lcom/google/android/gms/internal/measurement/zzp;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzac;->zza(Lcom/google/android/gms/internal/measurement/zzac$zza;)V

    if-eqz p2, :cond_16

    const-wide/16 p1, 0x1388

    .line 167
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzp;->zzb(J)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_16
    const/4 p1, 0x0

    return-object p1
.end method

.method protected final zza(Landroid/content/Context;Z)Lcom/google/android/gms/internal/measurement/zzr;
    .registers 4

    if-eqz p2, :cond_5

    .line 54
    :try_start_2
    sget-object p2, Lcom/google/android/gms/dynamite/DynamiteModule;->PREFER_HIGHEST_OR_REMOTE_VERSION:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    goto :goto_7

    .line 55
    :cond_5
    sget-object p2, Lcom/google/android/gms/dynamite/DynamiteModule;->PREFER_LOCAL:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    :goto_7
    const-string v0, "com.google.android.gms.measurement.dynamite"

    .line 56
    invoke-static {p1, p2, v0}, Lcom/google/android/gms/dynamite/DynamiteModule;->load(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object p1

    const-string p2, "com.google.android.gms.measurement.internal.AppMeasurementDynamiteService"

    .line 58
    invoke-virtual {p1, p2}, Lcom/google/android/gms/dynamite/DynamiteModule;->instantiate(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 59
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzq;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/internal/measurement/zzr;

    move-result-object p1
    :try_end_17
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_2 .. :try_end_17} :catch_18

    return-object p1

    :catch_18
    move-exception p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/measurement/zzac;->zza(Ljava/lang/Exception;ZZ)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final zza()Lcom/google/android/gms/measurement/api/AppMeasurementSdk;
    .registers 2

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzac;->zze:Lcom/google/android/gms/measurement/api/AppMeasurementSdk;

    return-object v0
.end method

.method public final zza(I)Ljava/lang/Object;
    .registers 5

    .line 180
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzp;-><init>()V

    .line 181
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzba;

    invoke-direct {v1, p0, v0, p1}, Lcom/google/android/gms/internal/measurement/zzba;-><init>(Lcom/google/android/gms/internal/measurement/zzac;Lcom/google/android/gms/internal/measurement/zzp;I)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzac;->zza(Lcom/google/android/gms/internal/measurement/zzac$zza;)V

    const-wide/16 v1, 0x3a98

    .line 182
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzp;->zzb(J)Landroid/os/Bundle;

    move-result-object p1

    const-class v0, Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/zzp;->zza(Landroid/os/Bundle;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 147
    new-instance v6, Lcom/google/android/gms/internal/measurement/zzp;

    invoke-direct {v6}, Lcom/google/android/gms/internal/measurement/zzp;-><init>()V

    .line 148
    new-instance v7, Lcom/google/android/gms/internal/measurement/zzau;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzau;-><init>(Lcom/google/android/gms/internal/measurement/zzac;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/measurement/zzp;)V

    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/measurement/zzac;->zza(Lcom/google/android/gms/internal/measurement/zzac$zza;)V

    const-wide/16 p1, 0x1388

    .line 150
    invoke-virtual {v6, p1, p2}, Lcom/google/android/gms/internal/measurement/zzp;->zzb(J)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_54

    .line 152
    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result p2

    if-nez p2, :cond_22

    goto :goto_54

    .line 154
    :cond_22
    new-instance p2, Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result p3

    invoke-direct {p2, p3}, Ljava/util/HashMap;-><init>(I)V

    .line 155
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_33
    :goto_33
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_53

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 156
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 157
    instance-of v2, v1, Ljava/lang/Double;

    if-nez v2, :cond_4f

    instance-of v2, v1, Ljava/lang/Long;

    if-nez v2, :cond_4f

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_33

    .line 158
    :cond_4f
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_33

    :cond_53
    return-object p2

    .line 153
    :cond_54
    :goto_54
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public final zza(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 14

    .line 161
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzax;

    const/4 v2, 0x0

    const/4 v3, 0x5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/measurement/zzax;-><init>(Lcom/google/android/gms/internal/measurement/zzac;ZILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzac;->zza(Lcom/google/android/gms/internal/measurement/zzac$zza;)V

    return-void
.end method

.method public final zza(J)V
    .registers 4

    .line 119
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzak;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzak;-><init>(Lcom/google/android/gms/internal/measurement/zzac;J)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzac;->zza(Lcom/google/android/gms/internal/measurement/zzac$zza;)V

    return-void
.end method

.method public final zza(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 113
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzaj;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzaj;-><init>(Lcom/google/android/gms/internal/measurement/zzac;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzac;->zza(Lcom/google/android/gms/internal/measurement/zzac$zza;)V

    return-void
.end method

.method public final zza(Landroid/os/Bundle;)V
    .registers 3

    .line 99
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzbg;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/zzbg;-><init>(Lcom/google/android/gms/internal/measurement/zzac;Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzac;->zza(Lcom/google/android/gms/internal/measurement/zzac$zza;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzgx;)V
    .registers 3

    .line 77
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzao;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/zzao;-><init>(Lcom/google/android/gms/internal/measurement/zzac;Lcom/google/android/gms/measurement/internal/zzgx;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzac;->zza(Lcom/google/android/gms/internal/measurement/zzac$zza;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzha;)V
    .registers 3

    .line 79
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzbb;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/zzbb;-><init>(Lcom/google/android/gms/internal/measurement/zzac;Lcom/google/android/gms/measurement/internal/zzha;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzac;->zza(Lcom/google/android/gms/internal/measurement/zzac$zza;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;)V
    .registers 3

    .line 111
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzag;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/zzag;-><init>(Lcom/google/android/gms/internal/measurement/zzac;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzac;->zza(Lcom/google/android/gms/internal/measurement/zzac$zza;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 10
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    .line 85
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/measurement/zzac;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZLjava/lang/Long;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 93
    invoke-direct {p0, v0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/zzac;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 11

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 87
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/measurement/zzac;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZLjava/lang/Long;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V
    .registers 13

    .line 89
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/measurement/zzac;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZLjava/lang/Long;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    const/4 v0, 0x1

    .line 95
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/measurement/zzac;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method public final zza(Z)V
    .registers 3

    .line 115
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzai;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/zzai;-><init>(Lcom/google/android/gms/internal/measurement/zzac;Z)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzac;->zza(Lcom/google/android/gms/internal/measurement/zzac$zza;)V

    return-void
.end method

.method public final zzb(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 103
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzp;-><init>()V

    .line 104
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzah;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/google/android/gms/internal/measurement/zzah;-><init>(Lcom/google/android/gms/internal/measurement/zzac;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzp;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzac;->zza(Lcom/google/android/gms/internal/measurement/zzac$zza;)V

    const-wide/16 p1, 0x1388

    .line 106
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzp;->zzb(J)Landroid/os/Bundle;

    move-result-object p1

    const-class p2, Ljava/util/List;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/zzp;->zza(Landroid/os/Bundle;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_21

    .line 109
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    :cond_21
    return-object p1
.end method

.method public final zzb()V
    .registers 2

    .line 117
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzal;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzal;-><init>(Lcom/google/android/gms/internal/measurement/zzac;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzac;->zza(Lcom/google/android/gms/internal/measurement/zzac$zza;)V

    return-void
.end method

.method public final zzb(J)V
    .registers 4

    .line 121
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzan;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzan;-><init>(Lcom/google/android/gms/internal/measurement/zzac;J)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzac;->zza(Lcom/google/android/gms/internal/measurement/zzac$zza;)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/measurement/internal/zzha;)V
    .registers 3

    .line 82
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzbc;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/zzbc;-><init>(Lcom/google/android/gms/internal/measurement/zzac;Lcom/google/android/gms/measurement/internal/zzha;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzac;->zza(Lcom/google/android/gms/internal/measurement/zzac$zza;)V

    return-void
.end method

.method public final zzb(Ljava/lang/String;)V
    .registers 3

    .line 123
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzam;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/zzam;-><init>(Lcom/google/android/gms/internal/measurement/zzac;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzac;->zza(Lcom/google/android/gms/internal/measurement/zzac$zza;)V

    return-void
.end method

.method public final zzb(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    .line 101
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzae;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzae;-><init>(Lcom/google/android/gms/internal/measurement/zzac;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzac;->zza(Lcom/google/android/gms/internal/measurement/zzac$zza;)V

    return-void
.end method

.method public final zzb(Z)V
    .registers 3

    .line 183
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzbd;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/zzbd;-><init>(Lcom/google/android/gms/internal/measurement/zzac;Z)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzac;->zza(Lcom/google/android/gms/internal/measurement/zzac$zza;)V

    return-void
.end method

.method public final zzc()Ljava/lang/String;
    .registers 4

    .line 127
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzp;-><init>()V

    .line 128
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzar;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/measurement/zzar;-><init>(Lcom/google/android/gms/internal/measurement/zzac;Lcom/google/android/gms/internal/measurement/zzp;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzac;->zza(Lcom/google/android/gms/internal/measurement/zzac$zza;)V

    const-wide/16 v1, 0x1f4

    .line 129
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzp;->zza(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzc(Ljava/lang/String;)V
    .registers 3

    .line 125
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzap;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/zzap;-><init>(Lcom/google/android/gms/internal/measurement/zzac;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzac;->zza(Lcom/google/android/gms/internal/measurement/zzac$zza;)V

    return-void
.end method

.method public final zzd(Ljava/lang/String;)I
    .registers 5

    .line 170
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzp;-><init>()V

    .line 171
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzaz;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzaz;-><init>(Lcom/google/android/gms/internal/measurement/zzac;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzp;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzac;->zza(Lcom/google/android/gms/internal/measurement/zzac$zza;)V

    const-wide/16 v1, 0x2710

    .line 173
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzp;->zzb(J)Landroid/os/Bundle;

    move-result-object p1

    const-class v0, Ljava/lang/Integer;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/zzp;->zza(Landroid/os/Bundle;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_20

    const/16 p1, 0x19

    return p1

    .line 175
    :cond_20
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public final zzd()Ljava/lang/String;
    .registers 4

    .line 130
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzp;-><init>()V

    .line 131
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzaq;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/measurement/zzaq;-><init>(Lcom/google/android/gms/internal/measurement/zzac;Lcom/google/android/gms/internal/measurement/zzp;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzac;->zza(Lcom/google/android/gms/internal/measurement/zzac$zza;)V

    const-wide/16 v1, 0x32

    .line 132
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzp;->zza(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zze()J
    .registers 6

    .line 133
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzp;-><init>()V

    .line 134
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzat;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/measurement/zzat;-><init>(Lcom/google/android/gms/internal/measurement/zzac;Lcom/google/android/gms/internal/measurement/zzp;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzac;->zza(Lcom/google/android/gms/internal/measurement/zzac$zza;)V

    const-wide/16 v1, 0x1f4

    .line 136
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzp;->zzb(J)Landroid/os/Bundle;

    move-result-object v0

    const-class v1, Ljava/lang/Long;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzp;->zza(Landroid/os/Bundle;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_3a

    .line 139
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzac;->zza:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v3

    xor-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzac;->zzg:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzac;->zzg:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0

    .line 140
    :cond_3a
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzf()Ljava/lang/String;
    .registers 4

    .line 141
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzp;-><init>()V

    .line 142
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzas;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/measurement/zzas;-><init>(Lcom/google/android/gms/internal/measurement/zzac;Lcom/google/android/gms/internal/measurement/zzp;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzac;->zza(Lcom/google/android/gms/internal/measurement/zzac$zza;)V

    const-wide/16 v1, 0x1f4

    .line 143
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzp;->zza(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzg()Ljava/lang/String;
    .registers 4

    .line 144
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzp;-><init>()V

    .line 145
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzav;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/measurement/zzav;-><init>(Lcom/google/android/gms/internal/measurement/zzac;Lcom/google/android/gms/internal/measurement/zzp;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzac;->zza(Lcom/google/android/gms/internal/measurement/zzac$zza;)V

    const-wide/16 v1, 0x1f4

    .line 146
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzp;->zza(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzh()Ljava/lang/String;
    .registers 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 176
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzp;-><init>()V

    .line 177
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzay;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/measurement/zzay;-><init>(Lcom/google/android/gms/internal/measurement/zzac;Lcom/google/android/gms/internal/measurement/zzp;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzac;->zza(Lcom/google/android/gms/internal/measurement/zzac$zza;)V

    const-wide/32 v1, 0x1d4c0

    .line 178
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzp;->zza(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzi()Ljava/lang/String;
    .registers 2

    .line 179
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzac;->zzq:Ljava/lang/String;

    return-object v0
.end method
