.class public Lcom/google/android/gms/internal/ads/zzex;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# static fields
.field private static final TAG:Ljava/lang/String; = "zzex"


# instance fields
.field protected zzvr:Landroid/content/Context;

.field private volatile zzxj:Z

.field private zzyt:Lcom/google/android/gms/internal/ads/zzev;

.field private zzyu:Ljava/util/concurrent/ExecutorService;

.field private zzyv:Ldalvik/system/DexClassLoader;

.field private zzyw:Lcom/google/android/gms/internal/ads/zzei;

.field private zzyx:[B

.field private volatile zzyy:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

.field private zzyz:Ljava/util/concurrent/Future;

.field private zzza:Z

.field private volatile zzzb:Lcom/google/android/gms/internal/ads/zzcf$zza;

.field private zzzc:Ljava/util/concurrent/Future;

.field private zzzd:Lcom/google/android/gms/internal/ads/zzdu;

.field private zzze:Z

.field private zzzf:Z

.field private zzzg:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzgk;",
            ">;"
        }
    .end annotation
.end field

.field private zzzh:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 86
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzex;->zzyy:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    const/4 v1, 0x0

    .line 87
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzex;->zzxj:Z

    .line 88
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzex;->zzyz:Ljava/util/concurrent/Future;

    .line 89
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzex;->zzzb:Lcom/google/android/gms/internal/ads/zzcf$zza;

    .line 90
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzex;->zzzc:Ljava/util/concurrent/Future;

    .line 91
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzex;->zzze:Z

    .line 92
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzex;->zzzf:Z

    .line 93
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzex;->zzzh:Z

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1c

    const/4 v1, 0x1

    .line 95
    :cond_1c
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzex;->zzza:Z

    .line 96
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzex;->zzza:Z

    if-eqz v1, :cond_23

    move-object p1, v0

    :cond_23
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzex;->zzvr:Landroid/content/Context;

    .line 97
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzex;->zzzg:Ljava/util/Map;

    .line 99
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzex;->zzyt:Lcom/google/android/gms/internal/ads/zzev;

    if-nez p1, :cond_39

    .line 100
    new-instance p1, Lcom/google/android/gms/internal/ads/zzev;

    .line 101
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzex;->zzvr:Landroid/content/Context;

    .line 102
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzev;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzex;->zzyt:Lcom/google/android/gms/internal/ads/zzev;

    :cond_39
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzex;Lcom/google/android/gms/internal/ads/zzcf$zza;)Lcom/google/android/gms/internal/ads/zzcf$zza;
    .registers 2

    .line 319
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzex;->zzzb:Lcom/google/android/gms/internal/ads/zzcf$zza;

    return-object p1
.end method

.method public static zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzex;
    .registers 13

    const-string v0, "%s/%s.dex"

    .line 1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzex;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzex;-><init>(Landroid/content/Context;)V

    .line 4
    :try_start_7
    new-instance p0, Lcom/google/android/gms/internal/ads/zzfa;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfa;-><init>()V

    .line 5
    invoke-static {p0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    iput-object p0, v1, Lcom/google/android/gms/internal/ads/zzex;->zzyu:Ljava/util/concurrent/ExecutorService;

    .line 7
    iput-boolean p3, v1, Lcom/google/android/gms/internal/ads/zzex;->zzxj:Z

    if-eqz p3, :cond_23

    .line 9
    iget-object p0, v1, Lcom/google/android/gms/internal/ads/zzex;->zzyu:Ljava/util/concurrent/ExecutorService;

    new-instance p3, Lcom/google/android/gms/internal/ads/zzez;

    invoke-direct {p3, v1}, Lcom/google/android/gms/internal/ads/zzez;-><init>(Lcom/google/android/gms/internal/ads/zzex;)V

    invoke-interface {p0, p3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p0

    iput-object p0, v1, Lcom/google/android/gms/internal/ads/zzex;->zzyz:Ljava/util/concurrent/Future;

    .line 11
    :cond_23
    iget-object p0, v1, Lcom/google/android/gms/internal/ads/zzex;->zzyu:Ljava/util/concurrent/ExecutorService;

    new-instance p3, Lcom/google/android/gms/internal/ads/zzfb;

    invoke-direct {p3, v1}, Lcom/google/android/gms/internal/ads/zzfb;-><init>(Lcom/google/android/gms/internal/ads/zzex;)V

    invoke-interface {p0, p3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_2d
    .catch Lcom/google/android/gms/internal/ads/zzeu; {:try_start_7 .. :try_end_2d} :catch_138

    const/4 p0, 0x1

    const/4 p3, 0x0

    .line 12
    :try_start_2f
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    move-result-object v2

    .line 13
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzex;->zzvr:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getApkVersion(Landroid/content/Context;)I

    move-result v3

    if-lez v3, :cond_3d

    const/4 v3, 0x1

    goto :goto_3e

    :cond_3d
    const/4 v3, 0x0

    :goto_3e
    iput-boolean v3, v1, Lcom/google/android/gms/internal/ads/zzex;->zzze:Z

    .line 14
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzex;->zzvr:Landroid/content/Context;

    .line 15
    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v2

    if-nez v2, :cond_4a

    const/4 v2, 0x1

    goto :goto_4b

    :cond_4a
    const/4 v2, 0x0

    :goto_4b
    iput-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzex;->zzzf:Z
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_4d} :catch_4d
    .catch Lcom/google/android/gms/internal/ads/zzeu; {:try_start_2f .. :try_end_4d} :catch_138

    .line 19
    :catch_4d
    :try_start_4d
    invoke-virtual {v1, p3, p0}, Lcom/google/android/gms/internal/ads/zzex;->zza(IZ)V

    .line 20
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfg;->isMainThread()Z

    move-result v2

    if-eqz v2, :cond_71

    sget-object v2, Lcom/google/android/gms/internal/ads/zzabb;->zzcrf:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 21
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v2

    .line 22
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_69

    goto :goto_71

    .line 23
    :cond_69
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Task Context initialization must not be called from the UI thread."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 25
    :cond_71
    :goto_71
    new-instance v2, Lcom/google/android/gms/internal/ads/zzei;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzei;-><init>(Ljava/security/SecureRandom;)V

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzex;->zzyw:Lcom/google/android/gms/internal/ads/zzei;
    :try_end_79
    .catch Lcom/google/android/gms/internal/ads/zzeu; {:try_start_4d .. :try_end_79} :catch_138

    .line 26
    :try_start_79
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzex;->zzyw:Lcom/google/android/gms/internal/ads/zzei;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzei;->zzap(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, v1, Lcom/google/android/gms/internal/ads/zzex;->zzyx:[B
    :try_end_81
    .catch Lcom/google/android/gms/internal/ads/zzeh; {:try_start_79 .. :try_end_81} :catch_131
    .catch Lcom/google/android/gms/internal/ads/zzeu; {:try_start_79 .. :try_end_81} :catch_138

    .line 31
    :try_start_81
    iget-object p1, v1, Lcom/google/android/gms/internal/ads/zzex;->zzvr:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_9a

    .line 33
    iget-object p1, v1, Lcom/google/android/gms/internal/ads/zzex;->zzvr:Landroid/content/Context;

    const-string v2, "dex"

    invoke-virtual {p1, v2, p3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_94

    goto :goto_9a

    .line 35
    :cond_94
    new-instance p0, Lcom/google/android/gms/internal/ads/zzeu;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzeu;-><init>()V

    throw p0

    :cond_9a
    :goto_9a
    const-string v2, "1588462714860"

    .line 39
    new-instance v4, Ljava/io/File;

    const-string v5, "%s/%s.jar"

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Object;

    aput-object p1, v7, p3

    aput-object v2, v7, p0

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_cb

    .line 41
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzex;->zzyw:Lcom/google/android/gms/internal/ads/zzei;

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzex;->zzyx:[B

    invoke-virtual {v5, v7, p2}, Lcom/google/android/gms/internal/ads/zzei;->zza([BLjava/lang/String;)[B

    move-result-object p2

    .line 42
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 43
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 44
    array-length v7, p2

    invoke-virtual {v5, p2, p3, v7}, Ljava/io/FileOutputStream;->write([BII)V

    .line 45
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 48
    :cond_cb
    invoke-direct {v1, p1, v2}, Lcom/google/android/gms/internal/ads/zzex;->zzb(Ljava/io/File;Ljava/lang/String;)Z
    :try_end_ce
    .catch Ljava/io/FileNotFoundException; {:try_start_81 .. :try_end_ce} :catch_12a
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_ce} :catch_123
    .catch Lcom/google/android/gms/internal/ads/zzeh; {:try_start_81 .. :try_end_ce} :catch_11c
    .catch Ljava/lang/NullPointerException; {:try_start_81 .. :try_end_ce} :catch_115
    .catch Lcom/google/android/gms/internal/ads/zzeu; {:try_start_81 .. :try_end_ce} :catch_138

    .line 49
    :try_start_ce
    new-instance p2, Ldalvik/system/DexClassLoader;

    .line 50
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzex;->zzvr:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-direct {p2, v5, v7, v3, v8}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    iput-object p2, v1, Lcom/google/android/gms/internal/ads/zzex;->zzyv:Ldalvik/system/DexClassLoader;
    :try_end_e3
    .catchall {:try_start_ce .. :try_end_e3} :catchall_100

    .line 51
    :try_start_e3
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzex;->zzc(Ljava/io/File;)V

    .line 52
    invoke-direct {v1, p1, v2}, Lcom/google/android/gms/internal/ads/zzex;->zza(Ljava/io/File;Ljava/lang/String;)V

    .line 53
    new-array p2, v6, [Ljava/lang/Object;

    aput-object p1, p2, p3

    aput-object v2, p2, p0

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzex;->zzaq(Ljava/lang/String;)V
    :try_end_f6
    .catch Ljava/io/FileNotFoundException; {:try_start_e3 .. :try_end_f6} :catch_12a
    .catch Ljava/io/IOException; {:try_start_e3 .. :try_end_f6} :catch_123
    .catch Lcom/google/android/gms/internal/ads/zzeh; {:try_start_e3 .. :try_end_f6} :catch_11c
    .catch Ljava/lang/NullPointerException; {:try_start_e3 .. :try_end_f6} :catch_115
    .catch Lcom/google/android/gms/internal/ads/zzeu; {:try_start_e3 .. :try_end_f6} :catch_138

    .line 67
    :try_start_f6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdu;

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/ads/zzdu;-><init>(Lcom/google/android/gms/internal/ads/zzex;)V

    iput-object p1, v1, Lcom/google/android/gms/internal/ads/zzex;->zzzd:Lcom/google/android/gms/internal/ads/zzdu;

    .line 68
    iput-boolean p0, v1, Lcom/google/android/gms/internal/ads/zzex;->zzzh:Z
    :try_end_ff
    .catch Lcom/google/android/gms/internal/ads/zzeu; {:try_start_f6 .. :try_end_ff} :catch_138

    goto :goto_138

    :catchall_100
    move-exception p2

    .line 55
    :try_start_101
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzex;->zzc(Ljava/io/File;)V

    .line 56
    invoke-direct {v1, p1, v2}, Lcom/google/android/gms/internal/ads/zzex;->zza(Ljava/io/File;Ljava/lang/String;)V

    .line 57
    new-array v3, v6, [Ljava/lang/Object;

    aput-object p1, v3, p3

    aput-object v2, v3, p0

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzex;->zzaq(Ljava/lang/String;)V

    .line 58
    throw p2
    :try_end_115
    .catch Ljava/io/FileNotFoundException; {:try_start_101 .. :try_end_115} :catch_12a
    .catch Ljava/io/IOException; {:try_start_101 .. :try_end_115} :catch_123
    .catch Lcom/google/android/gms/internal/ads/zzeh; {:try_start_101 .. :try_end_115} :catch_11c
    .catch Ljava/lang/NullPointerException; {:try_start_101 .. :try_end_115} :catch_115
    .catch Lcom/google/android/gms/internal/ads/zzeu; {:try_start_101 .. :try_end_115} :catch_138

    :catch_115
    move-exception p0

    .line 66
    :try_start_116
    new-instance p1, Lcom/google/android/gms/internal/ads/zzeu;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzeu;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_11c
    move-exception p0

    .line 64
    new-instance p1, Lcom/google/android/gms/internal/ads/zzeu;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzeu;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_123
    move-exception p0

    .line 62
    new-instance p1, Lcom/google/android/gms/internal/ads/zzeu;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzeu;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_12a
    move-exception p0

    .line 60
    new-instance p1, Lcom/google/android/gms/internal/ads/zzeu;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzeu;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_131
    move-exception p0

    .line 29
    new-instance p1, Lcom/google/android/gms/internal/ads/zzeu;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzeu;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_138
    .catch Lcom/google/android/gms/internal/ads/zzeu; {:try_start_116 .. :try_end_138} :catch_138

    :catch_138
    :goto_138
    return-object v1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzex;)V
    .registers 1

    .line 318
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzex;->zzcq()V

    return-void
.end method

.method private final zza(Ljava/io/File;Ljava/lang/String;)V
    .registers 12

    const-string v0, "test"

    .line 104
    new-instance v1, Ljava/io/File;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v5, 0x1

    aput-object p2, v3, v5

    const-string v6, "%s/%s.tmp"

    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1d

    return-void

    .line 107
    :cond_1d
    new-instance v3, Ljava/io/File;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    aput-object p2, v2, v5

    const-string p1, "%s/%s.dex"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_35

    return-void

    .line 112
    :cond_35
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long p1, v5, v7

    if-gtz p1, :cond_40

    return-void

    :cond_40
    long-to-int p1, v5

    .line 115
    new-array p1, p1, [B

    const/4 v2, 0x0

    .line 116
    :try_start_44
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_49} :catch_de
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_44 .. :try_end_49} :catch_de
    .catch Lcom/google/android/gms/internal/ads/zzeh; {:try_start_44 .. :try_end_49} :catch_de
    .catchall {:try_start_44 .. :try_end_49} :catchall_ce

    .line 117
    :try_start_49
    invoke-virtual {v5, p1}, Ljava/io/FileInputStream;->read([B)I

    move-result v6
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4d} :catch_df
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_49 .. :try_end_4d} :catch_df
    .catch Lcom/google/android/gms/internal/ads/zzeh; {:try_start_49 .. :try_end_4d} :catch_df
    .catchall {:try_start_49 .. :try_end_4d} :catchall_cc

    if-gtz v6, :cond_56

    .line 119
    :try_start_4f
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_52

    .line 123
    :catch_52
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzex;->zzc(Ljava/io/File;)V

    return-void

    .line 125
    :cond_56
    :try_start_56
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v6, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 126
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v6, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 127
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v6, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 128
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcf$zzc;->zzbe()Lcom/google/android/gms/internal/ads/zzcf$zzc$zza;

    move-result-object v0

    sget-object v6, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    .line 129
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzeip;->zzu([B)Lcom/google/android/gms/internal/ads/zzeip;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzcf$zzc$zza;->zzd(Lcom/google/android/gms/internal/ads/zzeip;)Lcom/google/android/gms/internal/ads/zzcf$zzc$zza;

    move-result-object v0

    .line 130
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzeip;->zzu([B)Lcom/google/android/gms/internal/ads/zzeip;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzcf$zzc$zza;->zzc(Lcom/google/android/gms/internal/ads/zzeip;)Lcom/google/android/gms/internal/ads/zzcf$zzc$zza;

    move-result-object p2

    .line 131
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzex;->zzyw:Lcom/google/android/gms/internal/ads/zzei;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzex;->zzyx:[B

    invoke-virtual {v0, v6, p1}, Lcom/google/android/gms/internal/ads/zzei;->zzb([B[B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 133
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzeip;->zzu([B)Lcom/google/android/gms/internal/ads/zzeip;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzcf$zzc$zza;->zza(Lcom/google/android/gms/internal/ads/zzeip;)Lcom/google/android/gms/internal/ads/zzcf$zzc$zza;

    move-result-object v0

    .line 134
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcx;->zzb([B)[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzeip;->zzu([B)Lcom/google/android/gms/internal/ads/zzeip;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcf$zzc$zza;->zzb(Lcom/google/android/gms/internal/ads/zzeip;)Lcom/google/android/gms/internal/ads/zzcf$zzc$zza;

    .line 135
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 136
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_aa
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_aa} :catch_df
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_56 .. :try_end_aa} :catch_df
    .catch Lcom/google/android/gms/internal/ads/zzeh; {:try_start_56 .. :try_end_aa} :catch_df
    .catchall {:try_start_56 .. :try_end_aa} :catchall_cc

    .line 137
    :try_start_aa
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zzbgt()Lcom/google/android/gms/internal/ads/zzelj;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzejz;

    check-cast p2, Lcom/google/android/gms/internal/ads/zzcf$zzc;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzeif;->toByteArray()[B

    move-result-object p2

    .line 138
    array-length v0, p2

    invoke-virtual {p1, p2, v4, v0}, Ljava/io/FileOutputStream;->write([BII)V

    .line 139
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_bd
    .catch Ljava/io/IOException; {:try_start_aa .. :try_end_bd} :catch_ca
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_aa .. :try_end_bd} :catch_ca
    .catch Lcom/google/android/gms/internal/ads/zzeh; {:try_start_aa .. :try_end_bd} :catch_ca
    .catchall {:try_start_aa .. :try_end_bd} :catchall_c7

    .line 140
    :try_start_bd
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_c0
    .catch Ljava/io/IOException; {:try_start_bd .. :try_end_c0} :catch_c0

    .line 143
    :catch_c0
    :try_start_c0
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_c3
    .catch Ljava/io/IOException; {:try_start_c0 .. :try_end_c3} :catch_c3

    .line 146
    :catch_c3
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzex;->zzc(Ljava/io/File;)V

    return-void

    :catchall_c7
    move-exception p2

    move-object v2, p1

    goto :goto_d0

    :catch_ca
    move-object v2, p1

    goto :goto_df

    :catchall_cc
    move-exception p2

    goto :goto_d0

    :catchall_ce
    move-exception p2

    move-object v5, v2

    :goto_d0
    if-eqz v5, :cond_d5

    .line 161
    :try_start_d2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_d5
    .catch Ljava/io/IOException; {:try_start_d2 .. :try_end_d5} :catch_d5

    :catch_d5
    :cond_d5
    if-eqz v2, :cond_da

    .line 165
    :try_start_d7
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_da
    .catch Ljava/io/IOException; {:try_start_d7 .. :try_end_da} :catch_da

    .line 168
    :catch_da
    :cond_da
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzex;->zzc(Ljava/io/File;)V

    .line 169
    throw p2

    :catch_de
    move-object v5, v2

    :catch_df
    :goto_df
    if-eqz v5, :cond_e4

    .line 150
    :try_start_e1
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_e4
    .catch Ljava/io/IOException; {:try_start_e1 .. :try_end_e4} :catch_e4

    :catch_e4
    :cond_e4
    if-eqz v2, :cond_e9

    .line 154
    :try_start_e6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_e9
    .catch Ljava/io/IOException; {:try_start_e6 .. :try_end_e9} :catch_e9

    .line 157
    :catch_e9
    :cond_e9
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzex;->zzc(Ljava/io/File;)V

    return-void
.end method

.method private static zza(ILcom/google/android/gms/internal/ads/zzcf$zza;)Z
    .registers 6

    const/4 v0, 0x4

    if-ge p0, v0, :cond_39

    const/4 p0, 0x1

    if-nez p1, :cond_7

    return p0

    .line 279
    :cond_7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcf$zza;->zzaj()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 280
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcf$zza;->zzaf()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0000000000000000000000000000000000000000000000000000000000000000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_38

    .line 282
    :cond_1a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcf$zza;->zzao()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 283
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcf$zza;->zzap()Lcom/google/android/gms/internal/ads/zzcf$zzd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcf$zzd;->zzbg()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 284
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcf$zza;->zzap()Lcom/google/android/gms/internal/ads/zzcf$zzd;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcf$zzd;->zzbh()J

    move-result-wide v0

    const-wide/16 v2, -0x2

    cmp-long p1, v0, v2

    if-nez p1, :cond_39

    :cond_38
    :goto_38
    return p0

    :cond_39
    const/4 p0, 0x0

    return p0
.end method

.method private static zzaq(Ljava/lang/String;)V
    .registers 2

    .line 170
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 171
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzex;->zzc(Ljava/io/File;)V

    return-void
.end method

.method static synthetic zzb(ILcom/google/android/gms/internal/ads/zzcf$zza;)Z
    .registers 2

    .line 320
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzex;->zza(ILcom/google/android/gms/internal/ads/zzcf$zza;)Z

    move-result p0

    return p0
.end method

.method private final zzb(Ljava/io/File;Ljava/lang/String;)Z
    .registers 12

    .line 178
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v4, 0x1

    aput-object p2, v2, v4

    const-string v5, "%s/%s.tmp"

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1b

    return v3

    .line 181
    :cond_1b
    new-instance v2, Ljava/io/File;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    aput-object p2, v1, v4

    const-string p1, "%s/%s.dex"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 182
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_33

    return v3

    :cond_33
    const/4 p1, 0x0

    .line 186
    :try_start_34
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v1, v5, v7

    if-gtz v1, :cond_42

    .line 188
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzex;->zzc(Ljava/io/File;)V

    return v3

    :cond_42
    long-to-int v1, v5

    .line 191
    new-array v1, v1, [B

    .line 192
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_4a} :catch_eb
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_34 .. :try_end_4a} :catch_eb
    .catch Lcom/google/android/gms/internal/ads/zzeh; {:try_start_34 .. :try_end_4a} :catch_eb
    .catchall {:try_start_34 .. :try_end_4a} :catchall_de

    .line 193
    :try_start_4a
    invoke-virtual {v5, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    if-gtz v6, :cond_5e

    .line 195
    sget-object p2, Lcom/google/android/gms/internal/ads/zzex;->TAG:Ljava/lang/String;

    const-string v1, "Cannot read the cache data."

    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzex;->zzc(Ljava/io/File;)V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_5a} :catch_ec
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4a .. :try_end_5a} :catch_ec
    .catch Lcom/google/android/gms/internal/ads/zzeh; {:try_start_4a .. :try_end_5a} :catch_ec
    .catchall {:try_start_4a .. :try_end_5a} :catchall_dc

    .line 197
    :try_start_5a
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5d} :catch_5d

    :catch_5d
    return v3

    .line 202
    :cond_5e
    :try_start_5e
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzejm;->zzbfu()Lcom/google/android/gms/internal/ads/zzejm;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/google/android/gms/internal/ads/zzcf$zzc;->zzb([BLcom/google/android/gms/internal/ads/zzejm;)Lcom/google/android/gms/internal/ads/zzcf$zzc;

    move-result-object v1

    .line 203
    new-instance v6, Ljava/lang/String;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcf$zzc;->zzbc()Lcom/google/android/gms/internal/ads/zzeip;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzeip;->toByteArray()[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_d5

    .line 204
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcf$zzc;->zzbb()Lcom/google/android/gms/internal/ads/zzeip;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzeip;->toByteArray()[B

    move-result-object p2

    .line 205
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcf$zzc;->zzba()Lcom/google/android/gms/internal/ads/zzeip;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzeip;->toByteArray()[B

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzcx;->zzb([B)[B

    move-result-object v6

    .line 206
    invoke-static {p2, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p2

    if-eqz p2, :cond_d5

    .line 207
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcf$zzc;->zzbd()Lcom/google/android/gms/internal/ads/zzeip;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzeip;->toByteArray()[B

    move-result-object p2

    sget-object v6, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-static {p2, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p2

    if-nez p2, :cond_a8

    goto :goto_d5

    .line 214
    :cond_a8
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzex;->zzyw:Lcom/google/android/gms/internal/ads/zzei;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzex;->zzyx:[B

    new-instance v6, Ljava/lang/String;

    .line 215
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcf$zzc;->zzba()Lcom/google/android/gms/internal/ads/zzeip;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzeip;->toByteArray()[B

    move-result-object v1

    invoke-direct {v6, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p2, v0, v6}, Lcom/google/android/gms/internal/ads/zzei;->zza([BLjava/lang/String;)[B

    move-result-object p2

    .line 216
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 217
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_c5
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_c5} :catch_ec
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5e .. :try_end_c5} :catch_ec
    .catch Lcom/google/android/gms/internal/ads/zzeh; {:try_start_5e .. :try_end_c5} :catch_ec
    .catchall {:try_start_5e .. :try_end_c5} :catchall_dc

    .line 218
    :try_start_c5
    array-length p1, p2

    invoke-virtual {v0, p2, v3, p1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_c9
    .catch Ljava/io/IOException; {:try_start_c5 .. :try_end_c9} :catch_d3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_c5 .. :try_end_c9} :catch_d3
    .catch Lcom/google/android/gms/internal/ads/zzeh; {:try_start_c5 .. :try_end_c9} :catch_d3
    .catchall {:try_start_c5 .. :try_end_c9} :catchall_d0

    .line 219
    :try_start_c9
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_cc
    .catch Ljava/io/IOException; {:try_start_c9 .. :try_end_cc} :catch_cc

    .line 222
    :catch_cc
    :try_start_cc
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_cf
    .catch Ljava/io/IOException; {:try_start_cc .. :try_end_cf} :catch_cf

    :catch_cf
    return v4

    :catchall_d0
    move-exception p2

    move-object p1, v0

    goto :goto_e0

    :catch_d3
    move-object p1, v0

    goto :goto_ec

    .line 208
    :cond_d5
    :goto_d5
    :try_start_d5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzex;->zzc(Ljava/io/File;)V
    :try_end_d8
    .catch Ljava/io/IOException; {:try_start_d5 .. :try_end_d8} :catch_ec
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_d5 .. :try_end_d8} :catch_ec
    .catch Lcom/google/android/gms/internal/ads/zzeh; {:try_start_d5 .. :try_end_d8} :catch_ec
    .catchall {:try_start_d5 .. :try_end_d8} :catchall_dc

    .line 209
    :try_start_d8
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_db
    .catch Ljava/io/IOException; {:try_start_d8 .. :try_end_db} :catch_db

    :catch_db
    return v3

    :catchall_dc
    move-exception p2

    goto :goto_e0

    :catchall_de
    move-exception p2

    move-object v5, p1

    :goto_e0
    if-eqz v5, :cond_e5

    .line 238
    :try_start_e2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_e5
    .catch Ljava/io/IOException; {:try_start_e2 .. :try_end_e5} :catch_e5

    :catch_e5
    :cond_e5
    if-eqz p1, :cond_ea

    .line 242
    :try_start_e7
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_ea
    .catch Ljava/io/IOException; {:try_start_e7 .. :try_end_ea} :catch_ea

    .line 245
    :catch_ea
    :cond_ea
    throw p2

    :catch_eb
    move-object v5, p1

    :catch_ec
    :goto_ec
    if-eqz v5, :cond_f1

    .line 228
    :try_start_ee
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_f1
    .catch Ljava/io/IOException; {:try_start_ee .. :try_end_f1} :catch_f1

    :catch_f1
    :cond_f1
    if-eqz p1, :cond_f6

    .line 232
    :try_start_f3
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_f6
    .catch Ljava/io/IOException; {:try_start_f3 .. :try_end_f6} :catch_f6

    :catch_f6
    :cond_f6
    return v3
.end method

.method private static zzc(Ljava/io/File;)V
    .registers 4

    .line 173
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 174
    sget-object v0, Lcom/google/android/gms/internal/ads/zzex;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v2

    const-string p0, "File %s not found. No need for deletion"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 176
    :cond_1c
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method private final zzcq()V
    .registers 3

    .line 255
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzex;->zzyy:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    if-nez v0, :cond_14

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzex;->zzza:Z

    if-eqz v0, :cond_14

    .line 256
    new-instance v0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzex;->zzvr:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;-><init>(Landroid/content/Context;)V

    .line 257
    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->start()V

    .line 258
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzex;->zzyy:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;
    :try_end_14
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_0 .. :try_end_14} :catch_15
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_14} :catch_15
    .catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_0 .. :try_end_14} :catch_15

    :cond_14
    return-void

    :catch_15
    const/4 v0, 0x0

    .line 261
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzex;->zzyy:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    return-void
.end method

.method private final zzcr()Lcom/google/android/gms/internal/ads/zzcf$zza;
    .registers 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 288
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzex;->zzvr:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzex;->zzvr:Landroid/content/Context;

    .line 289
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 290
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 291
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzex;->zzvr:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzex;->zzvr:Landroid/content/Context;

    .line 292
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 293
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzdtj;->zzj(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzcf$zza;

    move-result-object v0
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_23} :catch_24

    goto :goto_25

    :catch_24
    const/4 v0, 0x0

    :goto_25
    return-object v0
.end method


# virtual methods
.method public final getContext()Landroid/content/Context;
    .registers 2

    .line 72
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzex;->zzvr:Landroid/content/Context;

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 2

    .line 73
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzex;->zzzh:Z

    return v0
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .registers 5

    .line 251
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzex;->zzzg:Ljava/util/Map;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgk;

    if-nez p1, :cond_11

    const/4 p1, 0x0

    return-object p1

    .line 254
    :cond_11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgk;->zzdb()Ljava/lang/reflect/Method;

    move-result-object p1

    return-object p1
.end method

.method final zza(IZ)V
    .registers 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 263
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzex;->zzzf:Z

    if-nez v0, :cond_5

    return-void

    .line 266
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzex;->zzyu:Ljava/util/concurrent/ExecutorService;

    .line 267
    new-instance v1, Lcom/google/android/gms/internal/ads/zzfc;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzfc;-><init>(Lcom/google/android/gms/internal/ads/zzex;IZ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p2

    if-nez p1, :cond_14

    .line 269
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzex;->zzzc:Ljava/util/concurrent/Future;

    :cond_14
    return-void
.end method

.method public final varargs zza(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 247
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzex;->zzzg:Ljava/util/Map;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 248
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzex;->zzzg:Ljava/util/Map;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzgk;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzgk;-><init>(Lcom/google/android/gms/internal/ads/zzex;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_1e
    const/4 p1, 0x0

    return p1
.end method

.method final zzb(IZ)Lcom/google/android/gms/internal/ads/zzcf$zza;
    .registers 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    if-lez p1, :cond_a

    if-eqz p2, :cond_a

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long p1, p1

    .line 272
    :try_start_7
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_a} :catch_a

    .line 275
    :catch_a
    :cond_a
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzex;->zzcr()Lcom/google/android/gms/internal/ads/zzcf$zza;

    move-result-object p1

    return-object p1
.end method

.method public final zzbu()I
    .registers 2

    .line 314
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzex;->zzzd:Lcom/google/android/gms/internal/ads/zzdu;

    if-eqz v0, :cond_9

    .line 316
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdu;->zzbu()I

    move-result v0

    goto :goto_b

    :cond_9
    const/high16 v0, -0x80000000

    :goto_b
    return v0
.end method

.method public final zzcb()Z
    .registers 2

    .line 81
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzex;->zzyt:Lcom/google/android/gms/internal/ads/zzev;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzev;->zzcb()Z

    move-result v0

    return v0
.end method

.method public final zzcg()Ljava/util/concurrent/ExecutorService;
    .registers 2

    .line 74
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzex;->zzyu:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public final zzch()Ldalvik/system/DexClassLoader;
    .registers 2

    .line 75
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzex;->zzyv:Ldalvik/system/DexClassLoader;

    return-object v0
.end method

.method public final zzci()Lcom/google/android/gms/internal/ads/zzei;
    .registers 2

    .line 76
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzex;->zzyw:Lcom/google/android/gms/internal/ads/zzei;

    return-object v0
.end method

.method public final zzcj()[B
    .registers 2

    .line 77
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzex;->zzyx:[B

    return-object v0
.end method

.method public final zzck()Z
    .registers 2

    .line 78
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzex;->zzze:Z

    return v0
.end method

.method public final zzcl()Lcom/google/android/gms/internal/ads/zzdu;
    .registers 2

    .line 79
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzex;->zzzd:Lcom/google/android/gms/internal/ads/zzdu;

    return-object v0
.end method

.method public final zzcm()Z
    .registers 2

    .line 80
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzex;->zzzf:Z

    return v0
.end method

.method final zzcn()Lcom/google/android/gms/internal/ads/zzev;
    .registers 2

    .line 82
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzex;->zzyt:Lcom/google/android/gms/internal/ads/zzev;

    return-object v0
.end method

.method public final zzco()Lcom/google/android/gms/internal/ads/zzcf$zza;
    .registers 2

    .line 83
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzex;->zzzb:Lcom/google/android/gms/internal/ads/zzcf$zza;

    return-object v0
.end method

.method public final zzcp()Ljava/util/concurrent/Future;
    .registers 2

    .line 84
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzex;->zzzc:Ljava/util/concurrent/Future;

    return-object v0
.end method

.method public final zzcs()Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;
    .registers 6

    .line 297
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzex;->zzxj:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 299
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzex;->zzyy:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    if-eqz v0, :cond_d

    .line 300
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzex;->zzyy:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    return-object v0

    .line 301
    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzex;->zzyz:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_21

    const-wide/16 v2, 0x7d0

    .line 302
    :try_start_13
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 303
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzex;->zzyz:Ljava/util/concurrent/Future;
    :try_end_1a
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_1a} :catch_21
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_13 .. :try_end_1a} :catch_21
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_13 .. :try_end_1a} :catch_1b

    goto :goto_21

    .line 310
    :catch_1b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzex;->zzyz:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 311
    :catch_21
    :cond_21
    :goto_21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzex;->zzyy:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    return-object v0
.end method
