.class public final Lcom/google/android/gms/internal/ads/zzbbu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbbl;


# instance fields
.field private final zzbij:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzbbu;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbbu;->zzbij:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zzes(Ljava/lang/String;)V
    .registers 8
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const-string v0, "Error while pinging URL: "

    const-string v1, ". "

    .line 6
    :try_start_4
    invoke-static {}, Lcom/google/android/gms/common/util/ClientLibraryUtils;->isPackageSide()Z

    move-result v2

    if-eqz v2, :cond_f

    const/16 v2, 0x107

    .line 7
    invoke-static {v2}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    :cond_f
    const-string v2, "Pinging URL: "

    .line 8
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_20

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_26

    :cond_20
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    :goto_26
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzbbq;->zzef(Ljava/lang/String;)V

    .line 9
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;
    :try_end_34
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_34} :catch_104
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_34} :catch_ca
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_34} :catch_90
    .catchall {:try_start_4 .. :try_end_34} :catchall_8d

    .line 11
    :try_start_34
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpt()Lcom/google/android/gms/internal/ads/zzbbg;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbbu;->zzbij:Ljava/lang/String;

    .line 12
    invoke-static {v3, v2, v4}, Lcom/google/android/gms/internal/ads/zzbbg;->zza(ZLjava/net/HttpURLConnection;Ljava/lang/String;)V

    .line 13
    new-instance v3, Lcom/google/android/gms/internal/ads/zzbbk;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzbbk;-><init>()V

    const/4 v4, 0x0

    .line 14
    invoke-virtual {v3, v2, v4}, Lcom/google/android/gms/internal/ads/zzbbk;->zza(Ljava/net/HttpURLConnection;[B)V

    .line 15
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    .line 16
    invoke-virtual {v3, v2, v4}, Lcom/google/android/gms/internal/ads/zzbbk;->zza(Ljava/net/HttpURLConnection;I)V

    const/16 v3, 0xc8

    if-lt v4, v3, :cond_55

    const/16 v3, 0x12c

    if-lt v4, v3, :cond_7b

    .line 18
    :cond_55
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x41

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Received non-success response code "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " from pinging URL: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzbbq;->zzfe(Ljava/lang/String;)V
    :try_end_7b
    .catchall {:try_start_34 .. :try_end_7b} :catchall_88

    .line 19
    :cond_7b
    :try_start_7b
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_7e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7b .. :try_end_7e} :catch_104
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_7e} :catch_ca
    .catch Ljava/lang/RuntimeException; {:try_start_7b .. :try_end_7e} :catch_90
    .catchall {:try_start_7b .. :try_end_7e} :catchall_8d

    .line 23
    invoke-static {}, Lcom/google/android/gms/common/util/ClientLibraryUtils;->isPackageSide()Z

    move-result p1

    if-eqz p1, :cond_13f

    .line 24
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    return-void

    :catchall_88
    move-exception v3

    .line 21
    :try_start_89
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 22
    throw v3
    :try_end_8d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_89 .. :try_end_8d} :catch_104
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_8d} :catch_ca
    .catch Ljava/lang/RuntimeException; {:try_start_89 .. :try_end_8d} :catch_90
    .catchall {:try_start_89 .. :try_end_8d} :catchall_8d

    :catchall_8d
    move-exception p1

    goto/16 :goto_140

    :catch_90
    move-exception v2

    .line 31
    :try_start_91
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1b

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zzfe(Ljava/lang/String;)V
    :try_end_c0
    .catchall {:try_start_91 .. :try_end_c0} :catchall_8d

    .line 32
    invoke-static {}, Lcom/google/android/gms/common/util/ClientLibraryUtils;->isPackageSide()Z

    move-result p1

    if-eqz p1, :cond_13f

    .line 33
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    return-void

    :catch_ca
    move-exception v2

    .line 28
    :try_start_cb
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1b

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zzfe(Ljava/lang/String;)V
    :try_end_fa
    .catchall {:try_start_cb .. :try_end_fa} :catchall_8d

    .line 29
    invoke-static {}, Lcom/google/android/gms/common/util/ClientLibraryUtils;->isPackageSide()Z

    move-result p1

    if-eqz p1, :cond_13f

    .line 30
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    return-void

    :catch_104
    move-exception v0

    .line 25
    :try_start_105
    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x20

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Error while parsing ping URL: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zzfe(Ljava/lang/String;)V
    :try_end_136
    .catchall {:try_start_105 .. :try_end_136} :catchall_8d

    .line 26
    invoke-static {}, Lcom/google/android/gms/common/util/ClientLibraryUtils;->isPackageSide()Z

    move-result p1

    if-eqz p1, :cond_13f

    .line 27
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    :cond_13f
    return-void

    .line 34
    :goto_140
    invoke-static {}, Lcom/google/android/gms/common/util/ClientLibraryUtils;->isPackageSide()Z

    move-result v0

    if-eqz v0, :cond_149

    .line 35
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 36
    :cond_149
    throw p1
.end method
