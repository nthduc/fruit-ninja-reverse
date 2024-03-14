.class public final Lcom/google/android/gms/internal/ads/zzasf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzasj;


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# static fields
.field private static final lock:Ljava/lang/Object;

.field private static zzdqi:Lcom/google/android/gms/internal/ads/zzasj;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field private static zzdqj:Lcom/google/android/gms/internal/ads/zzasj;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final zzclo:Landroid/content/Context;

.field private final zzdqk:Ljava/lang/Object;

.field private final zzdql:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/Thread;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final zzdqm:Lcom/google/android/gms/internal/ads/zzbbx;

.field private final zzyu:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 133
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzasf;->lock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 134
    sput-object v0, Lcom/google/android/gms/internal/ads/zzasf;->zzdqi:Lcom/google/android/gms/internal/ads/zzasj;

    .line 135
    sput-object v0, Lcom/google/android/gms/internal/ads/zzasf;->zzdqj:Lcom/google/android/gms/internal/ads/zzasj;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 34
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbx;->zzyv()Lcom/google/android/gms/internal/ads/zzbbx;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzasf;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbx;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbx;)V
    .registers 5

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzasf;->zzdqk:Ljava/lang/Object;

    .line 38
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzasf;->zzdql:Ljava/util/WeakHashMap;

    .line 40
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdvg;->zzaxc()Lcom/google/android/gms/internal/ads/zzdvd;

    move-result-object v0

    sget v1, Lcom/google/android/gms/internal/ads/zzdvl;->zzhov:I

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzdvd;->zzej(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzasf;->zzyu:Ljava/util/concurrent/ExecutorService;

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_27

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :cond_27
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzasf;->zzclo:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzasf;->zzdqm:Lcom/google/android/gms/internal/ads/zzbbx;

    return-void
.end method

.method private final zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri$Builder;
    .registers 11
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasf;->zzclo:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->isCallerInstantApp()Z

    move-result v0
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_12

    :catch_b
    move-exception v0

    const-string v1, "Error fetching instant app info"

    .line 93
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    .line 95
    :goto_12
    :try_start_12
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzasf;->zzclo:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_18} :catch_19

    goto :goto_20

    :catch_19
    const-string v1, "Cannot obtain package name, proceeding."

    .line 98
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbbq;->zzfe(Ljava/lang/String;)V

    const-string v1, "unknown"

    .line 99
    :goto_20
    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    const-string v3, "https"

    .line 100
    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "//pagead2.googlesyndication.com/pagead/gen_204"

    .line 101
    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 102
    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    const-string v3, "is_aia"

    invoke-virtual {v2, v3, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "id"

    const-string v3, "gmob-apps-report-exception"

    .line 103
    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v3, "os"

    .line 104
    invoke-virtual {v0, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 105
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "api"

    .line 106
    invoke-virtual {v0, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 107
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 108
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 109
    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_62

    goto :goto_89

    :cond_62
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_89
    const-string v2, "device"

    .line 110
    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzasf;->zzdqm:Lcom/google/android/gms/internal/ads/zzbbx;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzbbx;->zzbre:Ljava/lang/String;

    const-string v3, "js"

    .line 111
    invoke-virtual {v0, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "appid"

    .line 112
    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "exceptiontype"

    .line 113
    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const-string v0, "stacktrace"

    .line 114
    invoke-virtual {p1, v0, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 115
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzabb;->zzrg()Ljava/util/List;

    move-result-object p2

    const-string v0, ","

    invoke-static {v0, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "eids"

    .line 116
    invoke-virtual {p1, v0, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const-string p2, "exceptionkey"

    .line 117
    invoke-virtual {p1, p2, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const-string p2, "cl"

    const-string p3, "330794610"

    .line 118
    invoke-virtual {p1, p2, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const-string p2, "rc"

    const-string p3, "dev"

    .line 119
    invoke-virtual {p1, p2, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 120
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpy()Ljava/lang/String;

    move-result-object p2

    const-string p3, "session_id"

    invoke-virtual {p1, p3, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 121
    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "sampling_rate"

    invoke-virtual {p1, p3, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/ads/zzadb;->zzdcd:Lcom/google/android/gms/internal/ads/zzaci;

    .line 122
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaci;->get()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "pb_tm"

    .line 123
    invoke-virtual {p1, p3, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 124
    sget-object p2, Lcom/google/android/gms/internal/ads/zzabb;->zzcpz:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 125
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object p2

    .line 126
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_12b

    .line 128
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    move-result-object p2

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzasf;->zzclo:Landroid/content/Context;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getApkVersion(Landroid/content/Context;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "gmscv"

    .line 129
    invoke-virtual {p1, p3, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    .line 130
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzasf;->zzdqm:Lcom/google/android/gms/internal/ads/zzbbx;

    iget-boolean p3, p3, Lcom/google/android/gms/internal/ads/zzbbx;->zzeeo:Z

    if-eqz p3, :cond_124

    const-string p3, "1"

    goto :goto_126

    :cond_124
    const-string p3, "0"

    :goto_126
    const-string p4, "lite"

    invoke-virtual {p2, p4, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_12b
    return-object p1
.end method

.method static final synthetic zza(Lcom/google/android/gms/internal/ads/zzbbu;Ljava/lang/String;)V
    .registers 2

    .line 132
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbbu;->zzes(Ljava/lang/String;)V

    return-void
.end method

.method public static zzc(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbx;)Lcom/google/android/gms/internal/ads/zzasj;
    .registers 6

    .line 11
    sget-object v0, Lcom/google/android/gms/internal/ads/zzasf;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 12
    :try_start_3
    sget-object v1, Lcom/google/android/gms/internal/ads/zzasf;->zzdqj:Lcom/google/android/gms/internal/ads/zzasj;

    if-nez v1, :cond_6a

    .line 13
    sget-object v1, Lcom/google/android/gms/internal/ads/zzadb;->zzdcf:Lcom/google/android/gms/internal/ads/zzaci;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaci;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_63

    sget-object v1, Lcom/google/android/gms/internal/ads/zzabb;->zzcxs:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 15
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v1

    .line 16
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_63

    .line 17
    new-instance v1, Lcom/google/android/gms/internal/ads/zzasf;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzasf;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbx;)V

    .line 19
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p0

    if-eqz p0, :cond_54

    .line 21
    iget-object p1, v1, Lcom/google/android/gms/internal/ads/zzasf;->zzdqk:Ljava/lang/Object;

    monitor-enter p1
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_6e

    .line 22
    :try_start_39
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzasf;->zzdql:Ljava/util/WeakHashMap;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    monitor-exit p1
    :try_end_44
    .catchall {:try_start_39 .. :try_end_44} :catchall_51

    .line 24
    :try_start_44
    invoke-virtual {p0}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object p1

    .line 25
    new-instance v2, Lcom/google/android/gms/internal/ads/zzasg;

    invoke-direct {v2, v1, p1}, Lcom/google/android/gms/internal/ads/zzasg;-><init>(Lcom/google/android/gms/internal/ads/zzasf;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-virtual {p0, v2}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    :try_end_50
    .catchall {:try_start_44 .. :try_end_50} :catchall_6e

    goto :goto_54

    :catchall_51
    move-exception p0

    .line 23
    :try_start_52
    monitor-exit p1
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_51

    :try_start_53
    throw p0

    .line 27
    :cond_54
    :goto_54
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object p0

    .line 28
    new-instance p1, Lcom/google/android/gms/internal/ads/zzash;

    invoke-direct {p1, v1, p0}, Lcom/google/android/gms/internal/ads/zzash;-><init>(Lcom/google/android/gms/internal/ads/zzasf;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {p1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 29
    sput-object v1, Lcom/google/android/gms/internal/ads/zzasf;->zzdqj:Lcom/google/android/gms/internal/ads/zzasj;

    goto :goto_6a

    .line 31
    :cond_63
    new-instance p0, Lcom/google/android/gms/internal/ads/zzasi;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzasi;-><init>()V

    sput-object p0, Lcom/google/android/gms/internal/ads/zzasf;->zzdqj:Lcom/google/android/gms/internal/ads/zzasj;

    .line 32
    :cond_6a
    :goto_6a
    monitor-exit v0
    :try_end_6b
    .catchall {:try_start_53 .. :try_end_6b} :catchall_6e

    .line 33
    sget-object p0, Lcom/google/android/gms/internal/ads/zzasf;->zzdqj:Lcom/google/android/gms/internal/ads/zzasj;

    return-object p0

    :catchall_6e
    move-exception p0

    .line 32
    :try_start_6f
    monitor-exit v0
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_6e

    throw p0
.end method

.method public static zzt(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzasj;
    .registers 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzasf;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    sget-object v1, Lcom/google/android/gms/internal/ads/zzasf;->zzdqi:Lcom/google/android/gms/internal/ads/zzasj;

    if-nez v1, :cond_36

    .line 3
    sget-object v1, Lcom/google/android/gms/internal/ads/zzadb;->zzdcf:Lcom/google/android/gms/internal/ads/zzaci;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaci;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2f

    sget-object v1, Lcom/google/android/gms/internal/ads/zzabb;->zzcxs:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v1

    .line 6
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2f

    .line 7
    new-instance v1, Lcom/google/android/gms/internal/ads/zzasf;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzasf;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/google/android/gms/internal/ads/zzasf;->zzdqi:Lcom/google/android/gms/internal/ads/zzasj;

    goto :goto_36

    .line 8
    :cond_2f
    new-instance p0, Lcom/google/android/gms/internal/ads/zzasi;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzasi;-><init>()V

    sput-object p0, Lcom/google/android/gms/internal/ads/zzasf;->zzdqi:Lcom/google/android/gms/internal/ads/zzasj;

    .line 9
    :cond_36
    :goto_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_3a

    .line 10
    sget-object p0, Lcom/google/android/gms/internal/ads/zzasf;->zzdqi:Lcom/google/android/gms/internal/ads/zzasj;

    return-object p0

    :catchall_3a
    move-exception p0

    .line 9
    :try_start_3b
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw p0
.end method


# virtual methods
.method protected final zza(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 12

    const/4 p1, 0x1

    const/4 v0, 0x0

    if-eqz p2, :cond_42

    move-object v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_7
    if-eqz v1, :cond_3d

    .line 50
    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    .line 51
    array-length v5, v4

    move v6, v3

    move v3, v2

    const/4 v2, 0x0

    :goto_11
    if-ge v2, v5, :cond_36

    aget-object v7, v4, v2

    .line 52
    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzbbg;->zzey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_20

    const/4 v3, 0x1

    .line 54
    :cond_20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_33

    const/4 v6, 0x1

    :cond_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 57
    :cond_36
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    move v2, v3

    move v3, v6

    goto :goto_7

    :cond_3d
    if-eqz v2, :cond_42

    if-nez v3, :cond_42

    goto :goto_43

    :cond_42
    const/4 p1, 0x0

    :goto_43
    if-eqz p1, :cond_4c

    const/high16 p1, 0x3f800000    # 1.0f

    const-string v0, ""

    .line 63
    invoke-virtual {p0, p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzasf;->zza(Ljava/lang/Throwable;Ljava/lang/String;F)V

    :cond_4c
    return-void
.end method

.method public final zza(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 4

    const/high16 v0, 0x3f800000    # 1.0f

    .line 65
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzasf;->zza(Ljava/lang/Throwable;Ljava/lang/String;F)V

    return-void
.end method

.method public final zza(Ljava/lang/Throwable;Ljava/lang/String;F)V
    .registers 12

    .line 67
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbbg;->zzd(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 70
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 71
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 72
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-static {p1, v2}, Lcom/google/android/gms/internal/ads/zzehy;->zza(Ljava/lang/Throwable;Ljava/io/PrintWriter;)V

    .line 73
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    .line 74
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    float-to-double v3, p3

    const/4 v5, 0x0

    const/4 v6, 0x1

    cmpg-double v7, v1, v3

    if-gez v7, :cond_2d

    const/4 v1, 0x1

    goto :goto_2e

    :cond_2d
    const/4 v1, 0x0

    :goto_2e
    const/4 v2, 0x0

    cmpl-float v2, p3, v2

    if-lez v2, :cond_37

    const/high16 v2, 0x3f800000    # 1.0f

    div-float/2addr v2, p3

    float-to-int v6, v2

    :cond_37
    if-eqz v1, :cond_69

    .line 79
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 81
    invoke-direct {p0, v0, p1, p2, v6}, Lcom/google/android/gms/internal/ads/zzasf;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 82
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    check-cast p3, Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_4f
    if-ge v5, p1, :cond_69

    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    add-int/lit8 v5, v5, 0x1

    check-cast p2, Ljava/lang/String;

    .line 85
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbbu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbbu;-><init>()V

    .line 86
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzasf;->zzyu:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzase;

    invoke-direct {v2, v0, p2}, Lcom/google/android/gms/internal/ads/zzase;-><init>(Lcom/google/android/gms/internal/ads/zzbbu;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_4f

    :cond_69
    return-void
.end method
