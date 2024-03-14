.class final Lcom/google/android/gms/measurement/internal/zzfe;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@17.4.1"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Landroidx/annotation/WorkerThread;
.end annotation


# instance fields
.field private final zza:Ljava/net/URL;

.field private final zzb:[B

.field private final zzc:Lcom/google/android/gms/measurement/internal/zzfc;

.field private final zzd:Ljava/lang/String;

.field private final zze:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final synthetic zzf:Lcom/google/android/gms/measurement/internal/zzfa;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzfa;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/zzfc;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/net/URL;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/measurement/internal/zzfc;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfe;->zzf:Lcom/google/android/gms/measurement/internal/zzfa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzfe;->zza:Ljava/net/URL;

    .line 6
    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzfe;->zzb:[B

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/measurement/internal/zzfe;->zzc:Lcom/google/android/gms/measurement/internal/zzfc;

    .line 8
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfe;->zzd:Ljava/lang/String;

    .line 9
    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/zzfe;->zze:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 14

    const-string v0, "Error closing HTTP compressed POST connection output stream. appId"

    .line 11
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfe;->zzf:Lcom/google/android/gms/measurement/internal/zzfa;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgs;->zzc()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 16
    :try_start_9
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzfe;->zzf:Lcom/google/android/gms/measurement/internal/zzfa;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzfe;->zza:Ljava/net/URL;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzfa;->zza(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v3
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_11} :catch_fa
    .catchall {:try_start_9 .. :try_end_11} :catchall_c0

    .line 17
    :try_start_11
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzfe;->zze:Ljava/util/Map;

    if-eqz v4, :cond_3b

    .line 18
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzfe;->zze:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 19
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v6, v5}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f

    .line 21
    :cond_3b
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzfe;->zzb:[B

    if-eqz v4, :cond_86

    .line 22
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzfe;->zzf:Lcom/google/android/gms/measurement/internal/zzfa;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzke;->zzg()Lcom/google/android/gms/measurement/internal/zzkk;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzfe;->zzb:[B

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzkk;->zzc([B)[B

    move-result-object v4

    .line 23
    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzfe;->zzf:Lcom/google/android/gms/measurement/internal/zzfa;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzet;->zzx()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v5

    const-string v6, "Uploading data. size"

    array-length v7, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v5, 0x1

    .line 24
    invoke-virtual {v3, v5}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string v5, "Content-Encoding"

    const-string v6, "gzip"

    .line 25
    invoke-virtual {v3, v5, v6}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    array-length v5, v4

    invoke-virtual {v3, v5}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 27
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    .line 28
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_75} :catch_bd
    .catchall {:try_start_11 .. :try_end_75} :catchall_ba

    .line 29
    :try_start_75
    invoke-virtual {v5, v4}, Ljava/io/OutputStream;->write([B)V

    .line 30
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_7b} :catch_80
    .catchall {:try_start_75 .. :try_end_7b} :catchall_7c

    goto :goto_86

    :catchall_7c
    move-exception v4

    move-object v11, v1

    move-object v1, v5

    goto :goto_c3

    :catch_80
    move-exception v4

    move-object v11, v1

    move-object v9, v4

    move-object v1, v5

    goto/16 :goto_fe

    .line 32
    :cond_86
    :goto_86
    :try_start_86
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_8a} :catch_bd
    .catchall {:try_start_86 .. :try_end_8a} :catchall_ba

    .line 33
    :try_start_8a
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v11
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_8e} :catch_b6
    .catchall {:try_start_8a .. :try_end_8e} :catchall_b3

    .line 34
    :try_start_8e
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzfe;->zzf:Lcom/google/android/gms/measurement/internal/zzfa;

    invoke-static {v2, v3}, Lcom/google/android/gms/measurement/internal/zzfa;->zza(Lcom/google/android/gms/measurement/internal/zzfa;Ljava/net/HttpURLConnection;)[B

    move-result-object v10
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_8e .. :try_end_94} :catch_b1
    .catchall {:try_start_8e .. :try_end_94} :catchall_af

    if-eqz v3, :cond_99

    .line 36
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 37
    :cond_99
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfe;->zzf:Lcom/google/android/gms/measurement/internal/zzfa;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzq()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzfb;

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzfe;->zzd:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/zzfe;->zzc:Lcom/google/android/gms/measurement/internal/zzfc;

    const/4 v9, 0x0

    const/4 v12, 0x0

    move-object v5, v1

    invoke-direct/range {v5 .. v12}, Lcom/google/android/gms/measurement/internal/zzfb;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfc;ILjava/lang/Throwable;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/zzez;)V

    .line 38
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/Runnable;)V

    return-void

    :catchall_af
    move-exception v4

    goto :goto_c4

    :catch_b1
    move-exception v4

    goto :goto_b8

    :catchall_b3
    move-exception v4

    move-object v11, v1

    goto :goto_c4

    :catch_b6
    move-exception v4

    move-object v11, v1

    :goto_b8
    move-object v9, v4

    goto :goto_ff

    :catchall_ba
    move-exception v4

    move-object v11, v1

    goto :goto_c3

    :catch_bd
    move-exception v4

    move-object v11, v1

    goto :goto_fd

    :catchall_c0
    move-exception v4

    move-object v3, v1

    move-object v11, v3

    :goto_c3
    const/4 v8, 0x0

    :goto_c4
    if-eqz v1, :cond_de

    .line 55
    :try_start_c6
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_c9
    .catch Ljava/io/IOException; {:try_start_c6 .. :try_end_c9} :catch_ca

    goto :goto_de

    :catch_ca
    move-exception v1

    .line 58
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzfe;->zzf:Lcom/google/android/gms/measurement/internal/zzfa;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v2

    .line 59
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v2

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzfe;->zzd:Ljava/lang/String;

    .line 60
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 61
    invoke-virtual {v2, v0, v5, v1}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_de
    :goto_de
    if-eqz v3, :cond_e3

    .line 63
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 64
    :cond_e3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfe;->zzf:Lcom/google/android/gms/measurement/internal/zzfa;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzq()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzfb;

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzfe;->zzd:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/zzfe;->zzc:Lcom/google/android/gms/measurement/internal/zzfc;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object v5, v1

    invoke-direct/range {v5 .. v12}, Lcom/google/android/gms/measurement/internal/zzfb;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfc;ILjava/lang/Throwable;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/zzez;)V

    .line 65
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/Runnable;)V

    .line 66
    throw v4

    :catch_fa
    move-exception v4

    move-object v3, v1

    move-object v11, v3

    :goto_fd
    move-object v9, v4

    :goto_fe
    const/4 v8, 0x0

    :goto_ff
    if-eqz v1, :cond_119

    .line 42
    :try_start_101
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_104
    .catch Ljava/io/IOException; {:try_start_101 .. :try_end_104} :catch_105

    goto :goto_119

    :catch_105
    move-exception v1

    .line 45
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzfe;->zzf:Lcom/google/android/gms/measurement/internal/zzfa;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v2

    .line 46
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzfe;->zzd:Ljava/lang/String;

    .line 47
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 48
    invoke-virtual {v2, v0, v4, v1}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_119
    :goto_119
    if-eqz v3, :cond_11e

    .line 50
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 51
    :cond_11e
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfe;->zzf:Lcom/google/android/gms/measurement/internal/zzfa;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzq()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzfb;

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzfe;->zzd:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/zzfe;->zzc:Lcom/google/android/gms/measurement/internal/zzfc;

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object v5, v1

    invoke-direct/range {v5 .. v12}, Lcom/google/android/gms/measurement/internal/zzfb;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfc;ILjava/lang/Throwable;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/zzez;)V

    .line 52
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/Runnable;)V

    return-void
.end method
