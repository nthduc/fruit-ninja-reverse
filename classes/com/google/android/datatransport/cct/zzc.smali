.class final Lcom/google/android/datatransport/cct/zzc;
.super Ljava/lang/Object;
.source "com.google.android.datatransport:transport-backend-cct@@2.2.1"

# interfaces
.implements Lcom/google/android/datatransport/runtime/backends/TransportBackend;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/datatransport/cct/zzc$zza;,
        Lcom/google/android/datatransport/cct/zzc$zzb;
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/firebase/encoders/DataEncoder;

.field private final zzb:Landroid/net/ConnectivityManager;

.field final zzc:Ljava/net/URL;

.field private final zzd:Lcom/google/android/datatransport/runtime/time/Clock;

.field private final zze:Lcom/google/android/datatransport/runtime/time/Clock;

.field private final zzf:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/datatransport/runtime/time/Clock;Lcom/google/android/datatransport/runtime/time/Clock;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;

    invoke-direct {v0}, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;-><init>()V

    sget-object v1, Lcom/google/android/datatransport/cct/a/zzb;->zza:Lcom/google/firebase/encoders/config/Configurator;

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->configureWith(Lcom/google/firebase/encoders/config/Configurator;)Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;

    move-result-object v0

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->ignoreNullValues(Z)Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->build()Lcom/google/firebase/encoders/DataEncoder;

    move-result-object v0

    .line 6
    iput-object v0, p0, Lcom/google/android/datatransport/cct/zzc;->zza:Lcom/google/firebase/encoders/DataEncoder;

    const-string v0, "connectivity"

    .line 7
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/google/android/datatransport/cct/zzc;->zzb:Landroid/net/ConnectivityManager;

    .line 8
    sget-object p1, Lcom/google/android/datatransport/cct/CCTDestination;->zza:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/datatransport/cct/zzc;->zza(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/datatransport/cct/zzc;->zzc:Ljava/net/URL;

    .line 9
    iput-object p3, p0, Lcom/google/android/datatransport/cct/zzc;->zzd:Lcom/google/android/datatransport/runtime/time/Clock;

    .line 10
    iput-object p2, p0, Lcom/google/android/datatransport/cct/zzc;->zze:Lcom/google/android/datatransport/runtime/time/Clock;

    const p1, 0x9c40

    .line 11
    iput p1, p0, Lcom/google/android/datatransport/cct/zzc;->zzf:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/datatransport/cct/zzc$zza;Lcom/google/android/datatransport/cct/zzc$zzb;)Lcom/google/android/datatransport/cct/zzc$zza;
    .registers 5

    .line 49
    iget-object v0, p1, Lcom/google/android/datatransport/cct/zzc$zzb;->zzb:Ljava/net/URL;

    if-eqz v0, :cond_12

    const-string v1, "CctTransportBackend"

    const-string v2, "Following redirect to: %s"

    .line 50
    invoke-static {v1, v2, v0}, Lcom/google/android/datatransport/runtime/logging/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 51
    iget-object p1, p1, Lcom/google/android/datatransport/cct/zzc$zzb;->zzb:Ljava/net/URL;

    invoke-virtual {p0, p1}, Lcom/google/android/datatransport/cct/zzc$zza;->zza(Ljava/net/URL;)Lcom/google/android/datatransport/cct/zzc$zza;

    move-result-object p0

    return-object p0

    :cond_12
    const/4 p0, 0x0

    return-object p0
.end method

.method private zza(Lcom/google/android/datatransport/cct/zzc$zza;)Lcom/google/android/datatransport/cct/zzc$zzb;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    iget-object v0, p1, Lcom/google/android/datatransport/cct/zzc$zza;->zza:Ljava/net/URL;

    const-string v1, "CctTransportBackend"

    const-string v2, "Making request to: %s"

    invoke-static {v1, v2, v0}, Lcom/google/android/datatransport/runtime/logging/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    iget-object v0, p1, Lcom/google/android/datatransport/cct/zzc$zza;->zza:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const/16 v2, 0x7530

    .line 5
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 6
    iget v2, p0, Lcom/google/android/datatransport/cct/zzc;->zzf:I

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v2, 0x1

    .line 7
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/4 v3, 0x0

    .line 8
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const-string v4, "POST"

    .line 9
    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 10
    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "2.2.1"

    aput-object v4, v2, v3

    const-string v3, "datatransport/%s android/"

    .line 11
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "User-Agent"

    .line 12
    invoke-virtual {v0, v3, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "gzip"

    const-string v3, "Content-Encoding"

    .line 13
    invoke-virtual {v0, v3, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "Content-Type"

    const-string v5, "application/json"

    .line 14
    invoke-virtual {v0, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "Accept-Encoding"

    .line 15
    invoke-virtual {v0, v5, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget-object v5, p1, Lcom/google/android/datatransport/cct/zzc$zza;->zzc:Ljava/lang/String;

    if-eqz v5, :cond_55

    const-string v6, "X-Goog-Api-Key"

    .line 17
    invoke-virtual {v0, v6, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_55
    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    .line 18
    :try_start_58
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8
    :try_end_5c
    .catch Lcom/google/firebase/encoders/EncodingException; {:try_start_58 .. :try_end_5c} :catch_153
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5c} :catch_151

    .line 19
    :try_start_5c
    new-instance v9, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v9, v8}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_61
    .catch Ljava/lang/Throwable; {:try_start_5c .. :try_end_61} :catch_148
    .catchall {:try_start_5c .. :try_end_61} :catchall_144

    .line 20
    :try_start_61
    iget-object v10, p0, Lcom/google/android/datatransport/cct/zzc;->zza:Lcom/google/firebase/encoders/DataEncoder;

    iget-object p1, p1, Lcom/google/android/datatransport/cct/zzc$zza;->zzb:Lcom/google/android/datatransport/cct/a/zzo;

    new-instance v11, Ljava/io/BufferedWriter;

    new-instance v12, Ljava/io/OutputStreamWriter;

    invoke-direct {v12, v9}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v11, v12}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-interface {v10, p1, v11}, Lcom/google/firebase/encoders/DataEncoder;->encode(Ljava/lang/Object;Ljava/io/Writer;)V
    :try_end_72
    .catch Ljava/lang/Throwable; {:try_start_61 .. :try_end_72} :catch_13d
    .catchall {:try_start_61 .. :try_end_72} :catchall_139

    .line 21
    :try_start_72
    invoke-static {v7, v9}, Lcom/google/android/datatransport/cct/zzc;->zza(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_75
    .catch Ljava/lang/Throwable; {:try_start_72 .. :try_end_75} :catch_148
    .catchall {:try_start_72 .. :try_end_75} :catchall_144

    if-eqz v8, :cond_7a

    :try_start_77
    invoke-static {v7, v8}, Lcom/google/android/datatransport/cct/zzc;->zza(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_7a
    .catch Lcom/google/firebase/encoders/EncodingException; {:try_start_77 .. :try_end_7a} :catch_153
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_7a} :catch_151

    .line 22
    :cond_7a
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    .line 23
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Status Code: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/google/android/datatransport/runtime/logging/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Content-Type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/google/android/datatransport/runtime/logging/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Content-Encoding: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/google/android/datatransport/runtime/logging/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x12e

    if-eq p1, v1, :cond_128

    const/16 v1, 0x12d

    if-eq p1, v1, :cond_128

    const/16 v1, 0x133

    if-ne p1, v1, :cond_cf

    goto :goto_128

    :cond_cf
    const/16 v1, 0xc8

    if-eq p1, v1, :cond_d9

    .line 26
    new-instance v0, Lcom/google/android/datatransport/cct/zzc$zzb;

    invoke-direct {v0, p1, v7, v5, v6}, Lcom/google/android/datatransport/cct/zzc$zzb;-><init>(ILjava/net/URL;J)V

    return-object v0

    .line 27
    :cond_d9
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 28
    :try_start_dd
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 29
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ed

    .line 30
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_ec
    .catch Ljava/lang/Throwable; {:try_start_dd .. :try_end_ec} :catch_11f
    .catchall {:try_start_dd .. :try_end_ec} :catchall_11d

    goto :goto_ee

    :cond_ed
    move-object v0, v1

    .line 31
    :goto_ee
    :try_start_ee
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 32
    invoke-static {v2}, Lcom/google/android/datatransport/cct/a/zzs;->zza(Ljava/io/Reader;)Lcom/google/android/datatransport/cct/a/zzs;

    move-result-object v2

    .line 33
    invoke-virtual {v2}, Lcom/google/android/datatransport/cct/a/zzs;->zza()J

    move-result-wide v2

    .line 34
    new-instance v4, Lcom/google/android/datatransport/cct/zzc$zzb;

    invoke-direct {v4, p1, v7, v2, v3}, Lcom/google/android/datatransport/cct/zzc$zzb;-><init>(ILjava/net/URL;J)V
    :try_end_105
    .catch Ljava/lang/Throwable; {:try_start_ee .. :try_end_105} :catch_114
    .catchall {:try_start_ee .. :try_end_105} :catchall_110

    if-eqz v0, :cond_10a

    .line 35
    :try_start_107
    invoke-static {v7, v0}, Lcom/google/android/datatransport/cct/zzc;->zza(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_10a
    .catch Ljava/lang/Throwable; {:try_start_107 .. :try_end_10a} :catch_11f
    .catchall {:try_start_107 .. :try_end_10a} :catchall_11d

    :cond_10a
    if-eqz v1, :cond_10f

    invoke-static {v7, v1}, Lcom/google/android/datatransport/cct/zzc;->zza(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_10f
    return-object v4

    :catchall_110
    move-exception p1

    move-object v2, p1

    move-object p1, v7

    goto :goto_117

    :catch_114
    move-exception p1

    .line 36
    :try_start_115
    throw p1
    :try_end_116
    .catchall {:try_start_115 .. :try_end_116} :catchall_116

    :catchall_116
    move-exception v2

    :goto_117
    if-eqz v0, :cond_11c

    .line 37
    :try_start_119
    invoke-static {p1, v0}, Lcom/google/android/datatransport/cct/zzc;->zza(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_11c
    throw v2
    :try_end_11d
    .catch Ljava/lang/Throwable; {:try_start_119 .. :try_end_11d} :catch_11f
    .catchall {:try_start_119 .. :try_end_11d} :catchall_11d

    :catchall_11d
    move-exception p1

    goto :goto_122

    :catch_11f
    move-exception p1

    move-object v7, p1

    .line 38
    :try_start_121
    throw v7
    :try_end_122
    .catchall {:try_start_121 .. :try_end_122} :catchall_11d

    :goto_122
    if-eqz v1, :cond_127

    .line 39
    invoke-static {v7, v1}, Lcom/google/android/datatransport/cct/zzc;->zza(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_127
    throw p1

    :cond_128
    :goto_128
    const-string v1, "Location"

    .line 40
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 41
    new-instance v1, Lcom/google/android/datatransport/cct/zzc$zzb;

    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, p1, v2, v5, v6}, Lcom/google/android/datatransport/cct/zzc$zzb;-><init>(ILjava/net/URL;J)V

    return-object v1

    :catchall_139
    move-exception p1

    move-object v0, p1

    move-object p1, v7

    goto :goto_140

    :catch_13d
    move-exception p1

    .line 42
    :try_start_13e
    throw p1
    :try_end_13f
    .catchall {:try_start_13e .. :try_end_13f} :catchall_13f

    :catchall_13f
    move-exception v0

    .line 43
    :goto_140
    :try_start_140
    invoke-static {p1, v9}, Lcom/google/android/datatransport/cct/zzc;->zza(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v0
    :try_end_144
    .catch Ljava/lang/Throwable; {:try_start_140 .. :try_end_144} :catch_148
    .catchall {:try_start_140 .. :try_end_144} :catchall_144

    :catchall_144
    move-exception p1

    move-object v0, p1

    move-object p1, v7

    goto :goto_14b

    :catch_148
    move-exception p1

    .line 44
    :try_start_149
    throw p1
    :try_end_14a
    .catchall {:try_start_149 .. :try_end_14a} :catchall_14a

    :catchall_14a
    move-exception v0

    :goto_14b
    if-eqz v8, :cond_150

    .line 45
    :try_start_14d
    invoke-static {p1, v8}, Lcom/google/android/datatransport/cct/zzc;->zza(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_150
    throw v0
    :try_end_151
    .catch Lcom/google/firebase/encoders/EncodingException; {:try_start_14d .. :try_end_151} :catch_153
    .catch Ljava/io/IOException; {:try_start_14d .. :try_end_151} :catch_151

    :catch_151
    move-exception p1

    goto :goto_154

    :catch_153
    move-exception p1

    :goto_154
    const-string v0, "Couldn\'t encode request, returning with 400"

    .line 46
    invoke-static {v1, v0, p1}, Lcom/google/android/datatransport/runtime/logging/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    new-instance p1, Lcom/google/android/datatransport/cct/zzc$zzb;

    const/16 v0, 0x190

    invoke-direct {p1, v0, v7, v5, v6}, Lcom/google/android/datatransport/cct/zzc$zzb;-><init>(ILjava/net/URL;J)V

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/datatransport/cct/zzc;Lcom/google/android/datatransport/cct/zzc$zza;)Lcom/google/android/datatransport/cct/zzc$zzb;
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/datatransport/cct/zzc;->zza(Lcom/google/android/datatransport/cct/zzc$zza;)Lcom/google/android/datatransport/cct/zzc$zzb;

    move-result-object p0

    return-object p0
.end method

.method private static zza(Ljava/lang/String;)Ljava/net/URL;
    .registers 5

    .line 1
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_5} :catch_6

    return-object v0

    :catch_6
    move-exception v0

    .line 2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static synthetic zza(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .registers 2

    if-eqz p0, :cond_6

    .line 48
    :try_start_2
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_5} :catch_9

    goto :goto_9

    :cond_6
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :catch_9
    :goto_9
    return-void
.end method


# virtual methods
.method public decorate(Lcom/google/android/datatransport/runtime/EventInternal;)Lcom/google/android/datatransport/runtime/EventInternal;
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/datatransport/cct/zzc;->zzb:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/EventInternal;->toBuilder()Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    move-result-object p1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v2, "sdk-version"

    .line 3
    invoke-virtual {p1, v2, v1}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->addMetadata(Ljava/lang/String;I)Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    move-result-object p1

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "model"

    .line 4
    invoke-virtual {p1, v2, v1}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->addMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    move-result-object p1

    sget-object v1, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string v2, "hardware"

    .line 5
    invoke-virtual {p1, v2, v1}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->addMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    move-result-object p1

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "device"

    .line 6
    invoke-virtual {p1, v2, v1}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->addMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    move-result-object p1

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v2, "product"

    .line 7
    invoke-virtual {p1, v2, v1}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->addMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    move-result-object p1

    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    const-string v2, "os-uild"

    .line 8
    invoke-virtual {p1, v2, v1}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->addMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    move-result-object p1

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v2, "manufacturer"

    .line 9
    invoke-virtual {p1, v2, v1}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->addMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    move-result-object p1

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v2, "fingerprint"

    .line 10
    invoke-virtual {p1, v2, v1}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->addMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    move-result-object p1

    .line 11
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 12
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    .line 13
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    const-string v3, "tz-offset"

    .line 14
    invoke-virtual {p1, v3, v1, v2}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->addMetadata(Ljava/lang/String;J)Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    move-result-object p1

    if-nez v0, :cond_6f

    .line 15
    sget-object v1, Lcom/google/android/datatransport/cct/a/zzt$zzc;->zzs:Lcom/google/android/datatransport/cct/a/zzt$zzc;

    invoke-virtual {v1}, Lcom/google/android/datatransport/cct/a/zzt$zzc;->zza()I

    move-result v1

    goto :goto_73

    .line 16
    :cond_6f
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    :goto_73
    const-string v2, "net-type"

    .line 17
    invoke-virtual {p1, v2, v1}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->addMetadata(Ljava/lang/String;I)Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    move-result-object p1

    if-nez v0, :cond_82

    .line 18
    sget-object v0, Lcom/google/android/datatransport/cct/a/zzt$zzb;->zza:Lcom/google/android/datatransport/cct/a/zzt$zzb;

    invoke-virtual {v0}, Lcom/google/android/datatransport/cct/a/zzt$zzb;->zza()I

    move-result v0

    goto :goto_98

    .line 19
    :cond_82
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_90

    .line 20
    sget-object v0, Lcom/google/android/datatransport/cct/a/zzt$zzb;->zzu:Lcom/google/android/datatransport/cct/a/zzt$zzb;

    invoke-virtual {v0}, Lcom/google/android/datatransport/cct/a/zzt$zzb;->zza()I

    move-result v0

    goto :goto_98

    .line 21
    :cond_90
    invoke-static {v0}, Lcom/google/android/datatransport/cct/a/zzt$zzb;->zza(I)Lcom/google/android/datatransport/cct/a/zzt$zzb;

    move-result-object v1

    if-eqz v1, :cond_97

    goto :goto_98

    :cond_97
    const/4 v0, 0x0

    :goto_98
    const-string v1, "mobile-subtype"

    .line 22
    invoke-virtual {p1, v1, v0}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->addMetadata(Ljava/lang/String;I)Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    move-result-object p1

    .line 23
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->build()Lcom/google/android/datatransport/runtime/EventInternal;

    move-result-object p1

    return-object p1
.end method

.method public send(Lcom/google/android/datatransport/runtime/backends/BackendRequest;)Lcom/google/android/datatransport/runtime/backends/BackendResponse;
    .registers 13

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/backends/BackendRequest;->getEvents()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/datatransport/runtime/EventInternal;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/datatransport/runtime/EventInternal;->getTransportName()Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2f

    .line 5
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    .line 8
    :cond_2f
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 9
    :cond_39
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_46
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "CctTransportBackend"

    if-eqz v2, :cond_1c9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 11
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/datatransport/runtime/EventInternal;

    .line 12
    invoke-static {}, Lcom/google/android/datatransport/cct/a/zzr;->zza()Lcom/google/android/datatransport/cct/a/zzr$zza;

    move-result-object v5

    sget-object v6, Lcom/google/android/datatransport/cct/a/zzu;->zza:Lcom/google/android/datatransport/cct/a/zzu;

    .line 13
    invoke-virtual {v5, v6}, Lcom/google/android/datatransport/cct/a/zzr$zza;->zza(Lcom/google/android/datatransport/cct/a/zzu;)Lcom/google/android/datatransport/cct/a/zzr$zza;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/datatransport/cct/zzc;->zze:Lcom/google/android/datatransport/runtime/time/Clock;

    .line 14
    invoke-interface {v6}, Lcom/google/android/datatransport/runtime/time/Clock;->getTime()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/google/android/datatransport/cct/a/zzr$zza;->zza(J)Lcom/google/android/datatransport/cct/a/zzr$zza;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/datatransport/cct/zzc;->zzd:Lcom/google/android/datatransport/runtime/time/Clock;

    .line 15
    invoke-interface {v6}, Lcom/google/android/datatransport/runtime/time/Clock;->getTime()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/google/android/datatransport/cct/a/zzr$zza;->zzb(J)Lcom/google/android/datatransport/cct/a/zzr$zza;

    move-result-object v5

    .line 16
    invoke-static {}, Lcom/google/android/datatransport/cct/a/zzp;->zza()Lcom/google/android/datatransport/cct/a/zzp$zza;

    move-result-object v6

    sget-object v7, Lcom/google/android/datatransport/cct/a/zzp$zzb;->zzb:Lcom/google/android/datatransport/cct/a/zzp$zzb;

    .line 17
    invoke-virtual {v6, v7}, Lcom/google/android/datatransport/cct/a/zzp$zza;->zza(Lcom/google/android/datatransport/cct/a/zzp$zzb;)Lcom/google/android/datatransport/cct/a/zzp$zza;

    move-result-object v6

    .line 18
    invoke-static {}, Lcom/google/android/datatransport/cct/a/zza;->zza()Lcom/google/android/datatransport/cct/a/zza$zza;

    move-result-object v7

    const-string v8, "sdk-version"

    .line 19
    invoke-virtual {v4, v8}, Lcom/google/android/datatransport/runtime/EventInternal;->getInteger(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/datatransport/cct/a/zza$zza;->zza(Ljava/lang/Integer;)Lcom/google/android/datatransport/cct/a/zza$zza;

    move-result-object v7

    const-string v8, "model"

    .line 20
    invoke-virtual {v4, v8}, Lcom/google/android/datatransport/runtime/EventInternal;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/datatransport/cct/a/zza$zza;->zze(Ljava/lang/String;)Lcom/google/android/datatransport/cct/a/zza$zza;

    move-result-object v7

    const-string v8, "hardware"

    .line 21
    invoke-virtual {v4, v8}, Lcom/google/android/datatransport/runtime/EventInternal;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/datatransport/cct/a/zza$zza;->zzc(Ljava/lang/String;)Lcom/google/android/datatransport/cct/a/zza$zza;

    move-result-object v7

    const-string v8, "device"

    .line 22
    invoke-virtual {v4, v8}, Lcom/google/android/datatransport/runtime/EventInternal;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/datatransport/cct/a/zza$zza;->zza(Ljava/lang/String;)Lcom/google/android/datatransport/cct/a/zza$zza;

    move-result-object v7

    const-string v8, "product"

    .line 23
    invoke-virtual {v4, v8}, Lcom/google/android/datatransport/runtime/EventInternal;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/datatransport/cct/a/zza$zza;->zzg(Ljava/lang/String;)Lcom/google/android/datatransport/cct/a/zza$zza;

    move-result-object v7

    const-string v8, "os-uild"

    .line 24
    invoke-virtual {v4, v8}, Lcom/google/android/datatransport/runtime/EventInternal;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/datatransport/cct/a/zza$zza;->zzf(Ljava/lang/String;)Lcom/google/android/datatransport/cct/a/zza$zza;

    move-result-object v7

    const-string v8, "manufacturer"

    .line 25
    invoke-virtual {v4, v8}, Lcom/google/android/datatransport/runtime/EventInternal;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/datatransport/cct/a/zza$zza;->zzd(Ljava/lang/String;)Lcom/google/android/datatransport/cct/a/zza$zza;

    move-result-object v7

    const-string v8, "fingerprint"

    .line 26
    invoke-virtual {v4, v8}, Lcom/google/android/datatransport/runtime/EventInternal;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Lcom/google/android/datatransport/cct/a/zza$zza;->zzb(Ljava/lang/String;)Lcom/google/android/datatransport/cct/a/zza$zza;

    move-result-object v4

    .line 27
    invoke-virtual {v4}, Lcom/google/android/datatransport/cct/a/zza$zza;->zza()Lcom/google/android/datatransport/cct/a/zza;

    move-result-object v4

    .line 28
    invoke-virtual {v6, v4}, Lcom/google/android/datatransport/cct/a/zzp$zza;->zza(Lcom/google/android/datatransport/cct/a/zza;)Lcom/google/android/datatransport/cct/a/zzp$zza;

    move-result-object v4

    .line 29
    invoke-virtual {v4}, Lcom/google/android/datatransport/cct/a/zzp$zza;->zza()Lcom/google/android/datatransport/cct/a/zzp;

    move-result-object v4

    .line 30
    invoke-virtual {v5, v4}, Lcom/google/android/datatransport/cct/a/zzr$zza;->zza(Lcom/google/android/datatransport/cct/a/zzp;)Lcom/google/android/datatransport/cct/a/zzr$zza;

    move-result-object v4

    .line 31
    :try_start_f1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/android/datatransport/cct/a/zzr$zza;->zza(I)Lcom/google/android/datatransport/cct/a/zzr$zza;
    :try_end_fe
    .catch Ljava/lang/NumberFormatException; {:try_start_f1 .. :try_end_fe} :catch_ff

    goto :goto_108

    .line 32
    :catch_ff
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/datatransport/cct/a/zzr$zza;->zzb(Ljava/lang/String;)Lcom/google/android/datatransport/cct/a/zzr$zza;

    .line 33
    :goto_108
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 34
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_117
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1bd

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/datatransport/runtime/EventInternal;

    .line 35
    invoke-virtual {v6}, Lcom/google/android/datatransport/runtime/EventInternal;->getEncodedPayload()Lcom/google/android/datatransport/runtime/EncodedPayload;

    move-result-object v7

    .line 36
    invoke-virtual {v7}, Lcom/google/android/datatransport/runtime/EncodedPayload;->getEncoding()Lcom/google/android/datatransport/Encoding;

    move-result-object v8

    const-string v9, "proto"

    .line 37
    invoke-static {v9}, Lcom/google/android/datatransport/Encoding;->of(Ljava/lang/String;)Lcom/google/android/datatransport/Encoding;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/android/datatransport/Encoding;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_140

    .line 38
    invoke-virtual {v7}, Lcom/google/android/datatransport/runtime/EncodedPayload;->getBytes()[B

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/datatransport/cct/a/zzq;->zza([B)Lcom/google/android/datatransport/cct/a/zzq$zza;

    move-result-object v7

    goto :goto_15f

    :cond_140
    const-string v9, "json"

    .line 39
    invoke-static {v9}, Lcom/google/android/datatransport/Encoding;->of(Ljava/lang/String;)Lcom/google/android/datatransport/Encoding;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/android/datatransport/Encoding;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1b6

    .line 40
    new-instance v8, Ljava/lang/String;

    .line 41
    invoke-virtual {v7}, Lcom/google/android/datatransport/runtime/EncodedPayload;->getBytes()[B

    move-result-object v7

    const-string v9, "UTF-8"

    invoke-static {v9}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v9

    invoke-direct {v8, v7, v9}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {v8}, Lcom/google/android/datatransport/cct/a/zzq;->zza(Ljava/lang/String;)Lcom/google/android/datatransport/cct/a/zzq$zza;

    move-result-object v7

    .line 42
    :goto_15f
    invoke-virtual {v6}, Lcom/google/android/datatransport/runtime/EventInternal;->getEventMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/google/android/datatransport/cct/a/zzq$zza;->zza(J)Lcom/google/android/datatransport/cct/a/zzq$zza;

    move-result-object v8

    .line 43
    invoke-virtual {v6}, Lcom/google/android/datatransport/runtime/EventInternal;->getUptimeMillis()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/google/android/datatransport/cct/a/zzq$zza;->zzb(J)Lcom/google/android/datatransport/cct/a/zzq$zza;

    move-result-object v8

    const-string v9, "tz-offset"

    .line 44
    invoke-virtual {v6, v9}, Lcom/google/android/datatransport/runtime/EventInternal;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/google/android/datatransport/cct/a/zzq$zza;->zzc(J)Lcom/google/android/datatransport/cct/a/zzq$zza;

    move-result-object v8

    .line 45
    invoke-static {}, Lcom/google/android/datatransport/cct/a/zzt;->zza()Lcom/google/android/datatransport/cct/a/zzt$zza;

    move-result-object v9

    const-string v10, "net-type"

    .line 46
    invoke-virtual {v6, v10}, Lcom/google/android/datatransport/runtime/EventInternal;->getInteger(Ljava/lang/String;)I

    move-result v10

    .line 47
    invoke-static {v10}, Lcom/google/android/datatransport/cct/a/zzt$zzc;->zza(I)Lcom/google/android/datatransport/cct/a/zzt$zzc;

    move-result-object v10

    .line 48
    invoke-virtual {v9, v10}, Lcom/google/android/datatransport/cct/a/zzt$zza;->zza(Lcom/google/android/datatransport/cct/a/zzt$zzc;)Lcom/google/android/datatransport/cct/a/zzt$zza;

    move-result-object v9

    const-string v10, "mobile-subtype"

    .line 49
    invoke-virtual {v6, v10}, Lcom/google/android/datatransport/runtime/EventInternal;->getInteger(Ljava/lang/String;)I

    move-result v10

    .line 50
    invoke-static {v10}, Lcom/google/android/datatransport/cct/a/zzt$zzb;->zza(I)Lcom/google/android/datatransport/cct/a/zzt$zzb;

    move-result-object v10

    .line 51
    invoke-virtual {v9, v10}, Lcom/google/android/datatransport/cct/a/zzt$zza;->zza(Lcom/google/android/datatransport/cct/a/zzt$zzb;)Lcom/google/android/datatransport/cct/a/zzt$zza;

    move-result-object v9

    .line 52
    invoke-virtual {v9}, Lcom/google/android/datatransport/cct/a/zzt$zza;->zza()Lcom/google/android/datatransport/cct/a/zzt;

    move-result-object v9

    .line 53
    invoke-virtual {v8, v9}, Lcom/google/android/datatransport/cct/a/zzq$zza;->zza(Lcom/google/android/datatransport/cct/a/zzt;)Lcom/google/android/datatransport/cct/a/zzq$zza;

    .line 54
    invoke-virtual {v6}, Lcom/google/android/datatransport/runtime/EventInternal;->getCode()Ljava/lang/Integer;

    move-result-object v8

    if-eqz v8, :cond_1ad

    .line 55
    invoke-virtual {v6}, Lcom/google/android/datatransport/runtime/EventInternal;->getCode()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/google/android/datatransport/cct/a/zzq$zza;->zza(Ljava/lang/Integer;)Lcom/google/android/datatransport/cct/a/zzq$zza;

    .line 56
    :cond_1ad
    invoke-virtual {v7}, Lcom/google/android/datatransport/cct/a/zzq$zza;->zza()Lcom/google/android/datatransport/cct/a/zzq;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_117

    :cond_1b6
    const-string v6, "Received event of unsupported encoding %s. Skipping..."

    .line 57
    invoke-static {v3, v6, v8}, Lcom/google/android/datatransport/runtime/logging/Logging;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_117

    .line 58
    :cond_1bd
    invoke-virtual {v4, v5}, Lcom/google/android/datatransport/cct/a/zzr$zza;->zza(Ljava/util/List;)Lcom/google/android/datatransport/cct/a/zzr$zza;

    .line 59
    invoke-virtual {v4}, Lcom/google/android/datatransport/cct/a/zzr$zza;->zza()Lcom/google/android/datatransport/cct/a/zzr;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_46

    .line 60
    :cond_1c9
    invoke-static {v1}, Lcom/google/android/datatransport/cct/a/zzo;->zza(Ljava/util/List;)Lcom/google/android/datatransport/cct/a/zzo;

    move-result-object v0

    const/4 v1, 0x0

    .line 61
    iget-object v2, p0, Lcom/google/android/datatransport/cct/zzc;->zzc:Ljava/net/URL;

    .line 62
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/backends/BackendRequest;->getExtras()[B

    move-result-object v4

    if-eqz v4, :cond_1fc

    .line 63
    :try_start_1d6
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/backends/BackendRequest;->getExtras()[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/datatransport/cct/CCTDestination;->fromByteArray([B)Lcom/google/android/datatransport/cct/CCTDestination;

    move-result-object p1

    .line 64
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/CCTDestination;->getAPIKey()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1e8

    .line 65
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/CCTDestination;->getAPIKey()Ljava/lang/String;

    move-result-object v1

    .line 66
    :cond_1e8
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/CCTDestination;->getEndPoint()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1fc

    .line 67
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/CCTDestination;->getEndPoint()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/datatransport/cct/zzc;->zza(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v2
    :try_end_1f6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1d6 .. :try_end_1f6} :catch_1f7

    goto :goto_1fc

    .line 68
    :catch_1f7
    invoke-static {}, Lcom/google/android/datatransport/runtime/backends/BackendResponse;->fatalError()Lcom/google/android/datatransport/runtime/backends/BackendResponse;

    move-result-object p1

    return-object p1

    :cond_1fc
    :goto_1fc
    const/4 p1, 0x5

    .line 69
    :try_start_1fd
    new-instance v4, Lcom/google/android/datatransport/cct/zzc$zza;

    invoke-direct {v4, v2, v0, v1}, Lcom/google/android/datatransport/cct/zzc$zza;-><init>(Ljava/net/URL;Lcom/google/android/datatransport/cct/a/zzo;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/google/android/datatransport/cct/zza;->zza(Lcom/google/android/datatransport/cct/zzc;)Lcom/google/android/datatransport/runtime/retries/Function;

    move-result-object v0

    invoke-static {}, Lcom/google/android/datatransport/cct/zzb;->zza()Lcom/google/android/datatransport/runtime/retries/RetryStrategy;

    move-result-object v1

    .line 70
    invoke-static {p1, v4, v0, v1}, Lcom/google/android/datatransport/runtime/retries/Retries;->retry(ILjava/lang/Object;Lcom/google/android/datatransport/runtime/retries/Function;Lcom/google/android/datatransport/runtime/retries/RetryStrategy;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/datatransport/cct/zzc$zzb;

    .line 71
    iget v0, p1, Lcom/google/android/datatransport/cct/zzc$zzb;->zza:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_21d

    .line 72
    iget-wide v0, p1, Lcom/google/android/datatransport/cct/zzc$zzb;->zzc:J

    invoke-static {v0, v1}, Lcom/google/android/datatransport/runtime/backends/BackendResponse;->ok(J)Lcom/google/android/datatransport/runtime/backends/BackendResponse;

    move-result-object p1

    return-object p1

    .line 73
    :cond_21d
    iget p1, p1, Lcom/google/android/datatransport/cct/zzc$zzb;->zza:I

    const/16 v0, 0x1f4

    if-ge p1, v0, :cond_22d

    const/16 v0, 0x194

    if-ne p1, v0, :cond_228

    goto :goto_22d

    .line 74
    :cond_228
    invoke-static {}, Lcom/google/android/datatransport/runtime/backends/BackendResponse;->fatalError()Lcom/google/android/datatransport/runtime/backends/BackendResponse;

    move-result-object p1

    return-object p1

    .line 75
    :cond_22d
    :goto_22d
    invoke-static {}, Lcom/google/android/datatransport/runtime/backends/BackendResponse;->transientError()Lcom/google/android/datatransport/runtime/backends/BackendResponse;

    move-result-object p1
    :try_end_231
    .catch Ljava/io/IOException; {:try_start_1fd .. :try_end_231} :catch_232

    return-object p1

    :catch_232
    move-exception p1

    const-string v0, "Could not make request to the backend"

    .line 76
    invoke-static {v3, v0, p1}, Lcom/google/android/datatransport/runtime/logging/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 77
    invoke-static {}, Lcom/google/android/datatransport/runtime/backends/BackendResponse;->transientError()Lcom/google/android/datatransport/runtime/backends/BackendResponse;

    move-result-object p1

    return-object p1
.end method