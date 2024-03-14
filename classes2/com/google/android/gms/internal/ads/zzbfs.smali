.class public final Lcom/google/android/gms/internal/ads/zzbfs;
.super Lcom/google/android/gms/internal/ads/zzbfl;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# static fields
.field private static final zzely:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzelz:Ljava/text/DecimalFormat;


# instance fields
.field private zzcz:Ljava/io/File;

.field private zzema:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 198
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbfs;->zzely:Ljava/util/Set;

    .line 199
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#,###"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbfs;->zzelz:Ljava/text/DecimalFormat;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbdu;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbfl;-><init>(Lcom/google/android/gms/internal/ads/zzbdu;)V

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbfs;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_11

    const-string p1, "Context.getCacheDir() returned null"

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzfe(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_11
    new-instance v0, Ljava/io/File;

    const-string v1, "admobVideoStreams"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfs;->zzcz:Ljava/io/File;

    .line 7
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbfs;->zzcz:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_4e

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbfs;->zzcz:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-nez p1, :cond_4e

    const-string p1, "Could not create preload cache directory at "

    .line 8
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbfs;->zzcz:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_42

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_48

    :cond_42
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, v1

    :goto_48
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzfe(Ljava/lang/String;)V

    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfs;->zzcz:Ljava/io/File;

    return-void

    .line 11
    :cond_4e
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbfs;->zzcz:Ljava/io/File;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Ljava/io/File;->setReadable(ZZ)Z

    move-result p1

    if-eqz p1, :cond_62

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbfs;->zzcz:Ljava/io/File;

    .line 12
    invoke-virtual {p1, v2, v1}, Ljava/io/File;->setExecutable(ZZ)Z

    move-result p1

    if-nez p1, :cond_61

    goto :goto_62

    :cond_61
    return-void

    :cond_62
    :goto_62
    const-string p1, "Could not set cache file permissions at "

    .line 13
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbfs;->zzcz:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_79

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_7f

    :cond_79
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, v1

    :goto_7f
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzfe(Ljava/lang/String;)V

    .line 14
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfs;->zzcz:Ljava/io/File;

    return-void
.end method

.method private final zzd(Ljava/io/File;)Ljava/io/File;
    .registers 5

    .line 197
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbfs;->zzcz:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, ".done"

    invoke-virtual {p1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final abort()V
    .registers 2

    const/4 v0, 0x1

    .line 195
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbfs;->zzema:Z

    return-void
.end method

.method public final zzfn(Ljava/lang/String;)Z
    .registers 32

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    .line 17
    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zzbfs;->zzcz:Ljava/io/File;

    const/4 v10, 0x0

    const/4 v11, 0x0

    if-nez v0, :cond_10

    const-string v0, "noCacheDir"

    .line 18
    invoke-virtual {v8, v9, v10, v0, v10}, Lcom/google/android/gms/internal/ads/zzbfl;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v11

    .line 21
    :cond_10
    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zzbfs;->zzcz:Ljava/io/File;

    if-nez v0, :cond_16

    const/4 v3, 0x0

    goto :goto_32

    .line 24
    :cond_16
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1d
    if-ge v2, v1, :cond_32

    aget-object v4, v0, v2

    .line 25
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".done"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2f

    add-int/lit8 v3, v3, 0x1

    :cond_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 29
    :cond_32
    :goto_32
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabb;->zzcmg:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 30
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 31
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v3, v0, :cond_96

    .line 33
    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zzbfs;->zzcz:Ljava/io/File;

    if-nez v0, :cond_4a

    :cond_48
    const/4 v0, 0x0

    goto :goto_89

    :cond_4a
    const-wide v1, 0x7fffffffffffffffL

    .line 37
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v3, v0

    move-wide v4, v1

    move-object v2, v10

    const/4 v1, 0x0

    :goto_57
    if-ge v1, v3, :cond_74

    aget-object v6, v0, v1

    .line 38
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v12, ".done"

    invoke-virtual {v7, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_71

    .line 39
    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    move-result-wide v12

    cmp-long v7, v12, v4

    if-gez v7, :cond_71

    move-object v2, v6

    move-wide v4, v12

    :cond_71
    add-int/lit8 v1, v1, 0x1

    goto :goto_57

    :cond_74
    if-eqz v2, :cond_48

    .line 46
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v0

    .line 47
    invoke-direct {v8, v2}, Lcom/google/android/gms/internal/ads/zzbfs;->zzd(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 48
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_89

    .line 49
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    and-int/2addr v0, v1

    :cond_89
    :goto_89
    if-nez v0, :cond_10

    const-string v0, "Unable to expire stream cache"

    .line 52
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzayp;->zzfe(Ljava/lang/String;)V

    const-string v0, "expireFailed"

    .line 53
    invoke-virtual {v8, v9, v10, v0, v10}, Lcom/google/android/gms/internal/ads/zzbfl;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v11

    .line 55
    :cond_96
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzbfl;->zzfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    new-instance v12, Ljava/io/File;

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzbfs;->zzcz:Ljava/io/File;

    invoke-direct {v12, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 57
    invoke-direct {v8, v12}, Lcom/google/android/gms/internal/ads/zzbfs;->zzd(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 58
    invoke-virtual {v12}, Ljava/io/File;->isFile()Z

    move-result v1

    const/4 v13, 0x1

    if-eqz v1, :cond_d9

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_d9

    .line 59
    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v1, v0

    const-string v0, "Stream cache hit at "

    .line 60
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_c8

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_ce

    :cond_c8
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    :goto_ce
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzayp;->zzef(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v9, v0, v1}, Lcom/google/android/gms/internal/ads/zzbfl;->zza(Ljava/lang/String;Ljava/lang/String;I)V

    return v13

    .line 63
    :cond_d9
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzbfs;->zzcz:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_f3

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v14, v1

    goto :goto_f9

    :cond_f3
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v14, v2

    .line 64
    :goto_f9
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbfs;->zzely:Ljava/util/Set;

    monitor-enter v1

    .line 65
    :try_start_fc
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbfs;->zzely:Ljava/util/Set;

    invoke-interface {v2, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_129

    const-string v0, "Stream cache already in progress at "

    .line 66
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_115

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_11b

    :cond_115
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    :goto_11b
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzayp;->zzfe(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v2, "inProgress"

    invoke-virtual {v8, v9, v0, v2, v10}, Lcom/google/android/gms/internal/ads/zzbfl;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    monitor-exit v1

    return v11

    .line 69
    :cond_129
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbfs;->zzely:Ljava/util/Set;

    invoke-interface {v2, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 70
    monitor-exit v1
    :try_end_12f
    .catchall {:try_start_fc .. :try_end_12f} :catchall_5c3

    const-string v15, "error"

    .line 74
    :try_start_131
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzld()Lcom/google/android/gms/internal/ads/zzbcj;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzabb;->zzcml:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 76
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v1

    .line 77
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 78
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object v3, v2

    const/4 v2, 0x0

    :goto_14b
    add-int/2addr v2, v13

    const/16 v4, 0x14

    if-gt v2, v4, :cond_517

    .line 81
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    .line 82
    invoke-virtual {v5, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 83
    invoke-virtual {v5, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 84
    instance-of v6, v5, Ljava/net/HttpURLConnection;

    if-eqz v6, :cond_50c

    .line 86
    check-cast v5, Ljava/net/HttpURLConnection;

    .line 87
    new-instance v6, Lcom/google/android/gms/internal/ads/zzbbk;

    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/zzbbk;-><init>()V

    .line 88
    invoke-virtual {v6, v5, v10}, Lcom/google/android/gms/internal/ads/zzbbk;->zza(Ljava/net/HttpURLConnection;[B)V

    .line 89
    invoke-virtual {v5, v11}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 90
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    .line 91
    invoke-virtual {v6, v5, v7}, Lcom/google/android/gms/internal/ads/zzbbk;->zza(Ljava/net/HttpURLConnection;I)V

    .line 92
    div-int/lit8 v7, v7, 0x64
    :try_end_174
    .catch Ljava/io/IOException; {:try_start_131 .. :try_end_174} :catch_52a
    .catch Ljava/lang/RuntimeException; {:try_start_131 .. :try_end_174} :catch_528

    const/4 v6, 0x3

    if-ne v7, v6, :cond_1ee

    :try_start_177
    const-string v4, "Location"

    .line 93
    invoke-virtual {v5, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1df

    .line 96
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, v3, v4}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 97
    invoke-virtual {v6}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1d7

    const-string v7, "http"

    .line 100
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1b7

    const-string v7, "https"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1b7

    .line 101
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unsupported scheme: "

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1ad

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1b3

    :cond_1ad
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_1b3
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b7
    const-string v3, "Redirecting to "

    .line 102
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_1c8

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1ce

    :cond_1c8
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    :goto_1ce
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzayp;->zzef(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v3, v6

    goto/16 :goto_14b

    .line 99
    :cond_1d7
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Protocol is null"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_1df
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Missing Location header in redirect"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1e7
    .catch Ljava/io/IOException; {:try_start_177 .. :try_end_1e7} :catch_1e9
    .catch Ljava/lang/RuntimeException; {:try_start_177 .. :try_end_1e7} :catch_1e7

    :catch_1e7
    move-exception v0

    goto :goto_1ea

    :catch_1e9
    move-exception v0

    :goto_1ea
    move-object v2, v10

    :goto_1eb
    move-object v1, v14

    goto/16 :goto_530

    .line 108
    :cond_1ee
    :try_start_1ee
    instance-of v1, v5, Ljava/net/HttpURLConnection;
    :try_end_1f0
    .catch Ljava/io/IOException; {:try_start_1ee .. :try_end_1f0} :catch_52a
    .catch Ljava/lang/RuntimeException; {:try_start_1ee .. :try_end_1f0} :catch_528

    if-eqz v1, :cond_247

    .line 109
    :try_start_1f2
    move-object v1, v5

    check-cast v1, Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0x190

    if-lt v1, v2, :cond_247

    const-string v15, "badUrl"

    const-string v0, "HTTP request failed. Code: "

    .line 112
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_215

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_21a

    :cond_215
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_21a
    .catch Ljava/io/IOException; {:try_start_1f2 .. :try_end_21a} :catch_1e9
    .catch Ljava/lang/RuntimeException; {:try_start_1f2 .. :try_end_21a} :catch_1e7

    .line 113
    :goto_21a
    :try_start_21a
    new-instance v0, Ljava/io/IOException;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x20

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "HTTP status code "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " at "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_243
    .catch Ljava/io/IOException; {:try_start_21a .. :try_end_243} :catch_245
    .catch Ljava/lang/RuntimeException; {:try_start_21a .. :try_end_243} :catch_243

    :catch_243
    move-exception v0

    goto :goto_1eb

    :catch_245
    move-exception v0

    goto :goto_1eb

    .line 114
    :cond_247
    :try_start_247
    invoke-virtual {v5}, Ljava/net/URLConnection;->getContentLength()I

    move-result v7
    :try_end_24b
    .catch Ljava/io/IOException; {:try_start_247 .. :try_end_24b} :catch_52a
    .catch Ljava/lang/RuntimeException; {:try_start_247 .. :try_end_24b} :catch_528

    if-gez v7, :cond_276

    :try_start_24d
    const-string v0, "Stream cache aborted, missing content-length header at "

    .line 116
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_25e

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_264

    :cond_25e
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_264
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzayp;->zzfe(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "contentLengthMissing"

    invoke-virtual {v8, v9, v0, v1, v10}, Lcom/google/android/gms/internal/ads/zzbfl;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbfs;->zzely:Ljava/util/Set;

    invoke-interface {v0, v14}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_275
    .catch Ljava/io/IOException; {:try_start_24d .. :try_end_275} :catch_1e9
    .catch Ljava/lang/RuntimeException; {:try_start_24d .. :try_end_275} :catch_1e7

    return v11

    .line 120
    :cond_276
    :try_start_276
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbfs;->zzelz:Ljava/text/DecimalFormat;

    int-to-long v2, v7

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    .line 121
    sget-object v2, Lcom/google/android/gms/internal/ads/zzabb;->zzcmh:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 122
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v2

    .line 123
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_28d
    .catch Ljava/io/IOException; {:try_start_276 .. :try_end_28d} :catch_52a
    .catch Ljava/lang/RuntimeException; {:try_start_276 .. :try_end_28d} :catch_528

    if-le v7, v3, :cond_2e4

    .line 125
    :try_start_28f
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x21

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Content length "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " exceeds limit at "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzayp;->zzfe(Ljava/lang/String;)V

    const-string v0, "File too big for full file cache. Size: "

    .line 126
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2cf

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2d5

    :cond_2cf
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 127
    :goto_2d5
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sizeExceeded"

    invoke-virtual {v8, v9, v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzbfl;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbfs;->zzely:Ljava/util/Set;

    invoke-interface {v0, v14}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_2e3
    .catch Ljava/io/IOException; {:try_start_28f .. :try_end_2e3} :catch_1e9
    .catch Ljava/lang/RuntimeException; {:try_start_28f .. :try_end_2e3} :catch_1e7

    return v11

    .line 130
    :cond_2e4
    :try_start_2e4
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v4

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v2, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Caching "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " bytes from "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzayp;->zzef(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v5}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 132
    invoke-static {v1}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;

    move-result-object v5

    .line 133
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_31f
    .catch Ljava/io/IOException; {:try_start_2e4 .. :try_end_31f} :catch_52a
    .catch Ljava/lang/RuntimeException; {:try_start_2e4 .. :try_end_31f} :catch_528

    .line 134
    :try_start_31f
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    const/high16 v1, 0x100000

    .line 135
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 136
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzky()Lcom/google/android/gms/common/util/Clock;

    move-result-object v16

    .line 138
    invoke-interface/range {v16 .. v16}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v17

    .line 139
    sget-object v6, Lcom/google/android/gms/internal/ads/zzabb;->zzcmk:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 140
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v10

    invoke-virtual {v10, v6}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v6

    .line 141
    check-cast v6, Ljava/lang/Long;
    :try_end_33d
    .catch Ljava/io/IOException; {:try_start_31f .. :try_end_33d} :catch_502
    .catch Ljava/lang/RuntimeException; {:try_start_31f .. :try_end_33d} :catch_500

    move-object v10, v14

    :try_start_33e
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    .line 142
    new-instance v6, Lcom/google/android/gms/internal/ads/zzbaw;

    invoke-direct {v6, v13, v14}, Lcom/google/android/gms/internal/ads/zzbaw;-><init>(J)V

    .line 143
    sget-object v13, Lcom/google/android/gms/internal/ads/zzabb;->zzcmj:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 144
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v14

    invoke-virtual {v14, v13}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v13

    .line 145
    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    .line 146
    :goto_357
    invoke-interface {v5, v1}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v20
    :try_end_35b
    .catch Ljava/io/IOException; {:try_start_33e .. :try_end_35b} :catch_4fb
    .catch Ljava/lang/RuntimeException; {:try_start_33e .. :try_end_35b} :catch_4f9

    if-ltz v20, :cond_477

    add-int v11, v11, v20

    if-le v11, v3, :cond_394

    :try_start_361
    const-string v15, "sizeExceeded"

    const-string v0, "File too big for full file cache. Size: "

    .line 150
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_379

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_37e

    :cond_379
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_37e
    .catch Ljava/io/IOException; {:try_start_361 .. :try_end_37e} :catch_38e
    .catch Ljava/lang/RuntimeException; {:try_start_361 .. :try_end_37e} :catch_38c

    .line 151
    :goto_37e
    :try_start_37e
    new-instance v0, Ljava/io/IOException;

    const-string v2, "stream cache file size limit exceeded"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_386
    .catch Ljava/io/IOException; {:try_start_37e .. :try_end_386} :catch_388
    .catch Ljava/lang/RuntimeException; {:try_start_37e .. :try_end_386} :catch_386

    :catch_386
    move-exception v0

    goto :goto_389

    :catch_388
    move-exception v0

    :goto_389
    move-object v2, v1

    move-object v1, v10

    goto :goto_391

    :catch_38c
    move-exception v0

    goto :goto_38f

    :catch_38e
    move-exception v0

    :goto_38f
    move-object v1, v10

    const/4 v2, 0x0

    :goto_391
    move-object v10, v4

    goto/16 :goto_530

    .line 152
    :cond_394
    :try_start_394
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 153
    :goto_397
    invoke-virtual {v2, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v20

    if-gtz v20, :cond_469

    .line 154
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 155
    invoke-interface/range {v16 .. v16}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v20

    sub-long v20, v20, v17

    const-wide/16 v22, 0x3e8

    mul-long v22, v22, v13

    cmp-long v24, v20, v22

    if-gtz v24, :cond_427

    move-object/from16 v20, v1

    .line 160
    iget-boolean v1, v8, Lcom/google/android/gms/internal/ads/zzbfs;->zzema:Z

    if-nez v1, :cond_417

    .line 163
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzbaw;->tryAcquire()Z

    move-result v1

    if-eqz v1, :cond_3f1

    .line 164
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v21

    .line 165
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbbg;->zzaah:Landroid/os/Handler;
    :try_end_3c0
    .catch Ljava/io/IOException; {:try_start_394 .. :try_end_3c0} :catch_46f
    .catch Ljava/lang/RuntimeException; {:try_start_394 .. :try_end_3c0} :catch_46d

    move-object/from16 v22, v15

    :try_start_3c2
    new-instance v15, Lcom/google/android/gms/internal/ads/zzbfk;
    :try_end_3c4
    .catch Ljava/io/IOException; {:try_start_3c2 .. :try_end_3c4} :catch_3eb
    .catch Ljava/lang/RuntimeException; {:try_start_3c2 .. :try_end_3c4} :catch_3e9

    const/16 v23, 0x0

    move-object/from16 v24, v10

    move-object v10, v1

    move-object v1, v15

    move-object/from16 v25, v2

    move-object/from16 v2, p0

    move/from16 v26, v3

    move-object/from16 v3, p1

    move-object/from16 v27, v4

    move-object/from16 v4, v21

    move-object/from16 v21, v5

    move v5, v11

    move-object/from16 v19, v6

    const/16 v28, 0x3

    move v6, v7

    move/from16 v29, v7

    move/from16 v7, v23

    :try_start_3e2
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzbfk;-><init>(Lcom/google/android/gms/internal/ads/zzbfl;Ljava/lang/String;Ljava/lang/String;IIZ)V

    invoke-virtual {v10, v15}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_403

    :catch_3e9
    move-exception v0

    goto :goto_3ec

    :catch_3eb
    move-exception v0

    :goto_3ec
    move-object/from16 v27, v4

    move-object v1, v10

    goto/16 :goto_4f6

    :cond_3f1
    move-object/from16 v25, v2

    move/from16 v26, v3

    move-object/from16 v27, v4

    move-object/from16 v21, v5

    move-object/from16 v19, v6

    move/from16 v29, v7

    move-object/from16 v24, v10

    move-object/from16 v22, v15

    const/16 v28, 0x3

    :goto_403
    move-object/from16 v6, v19

    move-object/from16 v1, v20

    move-object/from16 v5, v21

    move-object/from16 v15, v22

    move-object/from16 v10, v24

    move-object/from16 v2, v25

    move/from16 v3, v26

    move-object/from16 v4, v27

    move/from16 v7, v29

    goto/16 :goto_357

    :cond_417
    move-object/from16 v27, v4

    move-object/from16 v24, v10

    move-object/from16 v22, v15

    const-string v15, "externalAbort"
    :try_end_41f
    .catch Ljava/io/IOException; {:try_start_3e2 .. :try_end_41f} :catch_4c1
    .catch Ljava/lang/RuntimeException; {:try_start_3e2 .. :try_end_41f} :catch_4bf

    .line 162
    :try_start_41f
    new-instance v0, Ljava/io/IOException;

    const-string v1, "abort requested"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_427
    .catch Ljava/io/IOException; {:try_start_41f .. :try_end_427} :catch_467
    .catch Ljava/lang/RuntimeException; {:try_start_41f .. :try_end_427} :catch_465

    :cond_427
    move-object/from16 v27, v4

    move-object/from16 v24, v10

    move-object/from16 v22, v15

    :try_start_42d
    const-string v15, "downloadTimeout"
    :try_end_42f
    .catch Ljava/io/IOException; {:try_start_42d .. :try_end_42f} :catch_4c1
    .catch Ljava/lang/RuntimeException; {:try_start_42d .. :try_end_42f} :catch_4bf

    .line 158
    :try_start_42f
    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Timeout exceeded. Limit: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " sec"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10
    :try_end_453
    .catch Ljava/io/IOException; {:try_start_42f .. :try_end_453} :catch_467
    .catch Ljava/lang/RuntimeException; {:try_start_42f .. :try_end_453} :catch_465

    .line 159
    :try_start_453
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream cache time limit exceeded"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_45b
    .catch Ljava/io/IOException; {:try_start_453 .. :try_end_45b} :catch_45d
    .catch Ljava/lang/RuntimeException; {:try_start_453 .. :try_end_45b} :catch_45b

    :catch_45b
    move-exception v0

    goto :goto_45e

    :catch_45d
    move-exception v0

    :goto_45e
    move-object v2, v10

    move-object/from16 v1, v24

    move-object/from16 v10, v27

    goto/16 :goto_530

    :catch_465
    move-exception v0

    goto :goto_4c4

    :catch_467
    move-exception v0

    goto :goto_4c4

    :cond_469
    const/16 v28, 0x3

    goto/16 :goto_397

    :catch_46d
    move-exception v0

    goto :goto_470

    :catch_46f
    move-exception v0

    :goto_470
    move-object/from16 v27, v4

    move-object/from16 v22, v15

    move-object v1, v10

    goto/16 :goto_508

    :cond_477
    move-object/from16 v27, v4

    move-object/from16 v24, v10

    move-object/from16 v22, v15

    const/16 v28, 0x3

    .line 167
    :try_start_47f
    invoke-virtual/range {v27 .. v27}, Ljava/io/FileOutputStream;->close()V

    .line 168
    invoke-static/range {v28 .. v28}, Lcom/google/android/gms/internal/ads/zzayp;->isLoggable(I)Z

    move-result v1
    :try_end_486
    .catch Ljava/io/IOException; {:try_start_47f .. :try_end_486} :catch_4f3
    .catch Ljava/lang/RuntimeException; {:try_start_47f .. :try_end_486} :catch_4f1

    if-eqz v1, :cond_4c7

    .line 169
    :try_start_488
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbfs;->zzelz:Ljava/text/DecimalFormat;

    int-to-long v2, v11

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    .line 170
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x16

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Preloaded "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " bytes from "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzayp;->zzef(Ljava/lang/String;)V
    :try_end_4be
    .catch Ljava/io/IOException; {:try_start_488 .. :try_end_4be} :catch_4c1
    .catch Ljava/lang/RuntimeException; {:try_start_488 .. :try_end_4be} :catch_4bf

    goto :goto_4c7

    :catch_4bf
    move-exception v0

    goto :goto_4c2

    :catch_4c1
    move-exception v0

    :goto_4c2
    move-object/from16 v15, v22

    :goto_4c4
    move-object/from16 v1, v24

    goto :goto_508

    :cond_4c7
    :goto_4c7
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 171
    :try_start_4c9
    invoke-virtual {v12, v1, v2}, Ljava/io/File;->setReadable(ZZ)Z

    .line 173
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1
    :try_end_4d0
    .catch Ljava/io/IOException; {:try_start_4c9 .. :try_end_4d0} :catch_4f3
    .catch Ljava/lang/RuntimeException; {:try_start_4c9 .. :try_end_4d0} :catch_4f1

    if-eqz v1, :cond_4da

    .line 174
    :try_start_4d2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/File;->setLastModified(J)Z
    :try_end_4d9
    .catch Ljava/io/IOException; {:try_start_4d2 .. :try_end_4d9} :catch_4c1
    .catch Ljava/lang/RuntimeException; {:try_start_4d2 .. :try_end_4d9} :catch_4bf

    goto :goto_4dd

    .line 175
    :cond_4da
    :try_start_4da
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_4dd
    .catch Ljava/io/IOException; {:try_start_4da .. :try_end_4dd} :catch_4dd
    .catch Ljava/lang/RuntimeException; {:try_start_4da .. :try_end_4dd} :catch_4bf

    .line 178
    :catch_4dd
    :goto_4dd
    :try_start_4dd
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v9, v0, v11}, Lcom/google/android/gms/internal/ads/zzbfl;->zza(Ljava/lang/String;Ljava/lang/String;I)V

    .line 179
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbfs;->zzely:Ljava/util/Set;
    :try_end_4e6
    .catch Ljava/io/IOException; {:try_start_4dd .. :try_end_4e6} :catch_4f3
    .catch Ljava/lang/RuntimeException; {:try_start_4dd .. :try_end_4e6} :catch_4f1

    move-object/from16 v1, v24

    :try_start_4e8
    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_4eb
    .catch Ljava/io/IOException; {:try_start_4e8 .. :try_end_4eb} :catch_4ef
    .catch Ljava/lang/RuntimeException; {:try_start_4e8 .. :try_end_4eb} :catch_4ed

    const/4 v0, 0x1

    return v0

    :catch_4ed
    move-exception v0

    goto :goto_4f6

    :catch_4ef
    move-exception v0

    goto :goto_4f6

    :catch_4f1
    move-exception v0

    goto :goto_4f4

    :catch_4f3
    move-exception v0

    :goto_4f4
    move-object/from16 v1, v24

    :goto_4f6
    move-object/from16 v15, v22

    goto :goto_508

    :catch_4f9
    move-exception v0

    goto :goto_4fc

    :catch_4fb
    move-exception v0

    :goto_4fc
    move-object/from16 v27, v4

    move-object v1, v10

    goto :goto_506

    :catch_500
    move-exception v0

    goto :goto_503

    :catch_502
    move-exception v0

    :goto_503
    move-object/from16 v27, v4

    move-object v1, v14

    :goto_506
    move-object/from16 v22, v15

    :goto_508
    move-object/from16 v10, v27

    const/4 v2, 0x0

    goto :goto_530

    :cond_50c
    move-object v1, v14

    move-object/from16 v22, v15

    .line 85
    :try_start_50f
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Invalid protocol."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_517
    move-object v1, v14

    move-object/from16 v22, v15

    .line 106
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Too many redirects (20)"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_522
    .catch Ljava/io/IOException; {:try_start_50f .. :try_end_522} :catch_524
    .catch Ljava/lang/RuntimeException; {:try_start_50f .. :try_end_522} :catch_522

    :catch_522
    move-exception v0

    goto :goto_525

    :catch_524
    move-exception v0

    :goto_525
    move-object/from16 v15, v22

    goto :goto_52e

    :catch_528
    move-exception v0

    goto :goto_52b

    :catch_52a
    move-exception v0

    :goto_52b
    move-object v1, v14

    move-object/from16 v22, v15

    :goto_52e
    const/4 v2, 0x0

    const/4 v10, 0x0

    .line 182
    :goto_530
    instance-of v3, v0, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_53d

    .line 183
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkv()Lcom/google/android/gms/internal/ads/zzayb;

    move-result-object v3

    const-string v4, "VideoStreamFullFileCache.preload"

    invoke-virtual {v3, v0, v4}, Lcom/google/android/gms/internal/ads/zzayb;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 184
    :cond_53d
    :try_start_53d
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_540
    .catch Ljava/io/IOException; {:try_start_53d .. :try_end_540} :catch_540
    .catch Ljava/lang/NullPointerException; {:try_start_53d .. :try_end_540} :catch_540

    .line 187
    :catch_540
    iget-boolean v3, v8, Lcom/google/android/gms/internal/ads/zzbfs;->zzema:Z

    if-eqz v3, :cond_568

    .line 188
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Preload aborted for URL \""

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzayp;->zzfd(Ljava/lang/String;)V

    goto :goto_58b

    .line 189
    :cond_568
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x19

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Preload failed for URL \""

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/ads/zzayp;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 190
    :goto_58b
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5b5

    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_5b5

    const-string v0, "Could not delete partial cache file at "

    .line 191
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_5ac

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5b2

    :cond_5ac
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    :goto_5b2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzayp;->zzfe(Ljava/lang/String;)V

    .line 192
    :cond_5b5
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v9, v0, v15, v2}, Lcom/google/android/gms/internal/ads/zzbfl;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbfs;->zzely:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    return v1

    :catchall_5c3
    move-exception v0

    .line 70
    :try_start_5c4
    monitor-exit v1
    :try_end_5c5
    .catchall {:try_start_5c4 .. :try_end_5c5} :catchall_5c3

    throw v0

    return-void
.end method
