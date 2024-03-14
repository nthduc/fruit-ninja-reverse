.class public final Lcom/google/android/gms/internal/ads/zzcro;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdrp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdrp<",
        "Lcom/google/android/gms/internal/ads/zzcrn;",
        "Lcom/google/android/gms/internal/ads/zzcrq;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzdrm:Ljava/lang/String;

.field private final zzglb:Lcom/google/android/gms/internal/ads/zzatt;

.field private final zzglr:Ljava/lang/String;

.field private final zzgls:I

.field private final zzvr:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzatt;Ljava/lang/String;I)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcro;->zzvr:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcro;->zzglr:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcro;->zzglb:Lcom/google/android/gms/internal/ads/zzatt;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcro;->zzdrm:Ljava/lang/String;

    .line 6
    iput p5, p0, Lcom/google/android/gms/internal/ads/zzcro;->zzgls:I

    return-void
.end method

.method private final zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzati;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzcrq;
    .registers 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzcof;
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "Received error HTTP response code: "

    const-string v2, "doritos_v2"

    const-string v3, "doritos"

    const-string v4, ""

    .line 9
    :try_start_a
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzati;->getErrorCode()I

    move-result v5

    const/4 v6, -0x2

    const/4 v7, 0x1

    if-eq v5, v6, :cond_3d

    .line 10
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzati;->getErrorCode()I

    move-result v0

    if-ne v0, v7, :cond_35

    .line 11
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzati;->zzvh()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2b

    const-string v0, ", "

    .line 12
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzati;->zzvh()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzayp;->zzfc(Ljava/lang/String;)V

    .line 13
    :cond_2b
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcof;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzdpg;->zzhfx:Lcom/google/android/gms/internal/ads/zzdpg;

    const-string v3, "Error building request URL."

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzcof;-><init>(Lcom/google/android/gms/internal/ads/zzdpg;Ljava/lang/String;)V

    throw v0

    .line 14
    :cond_35
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcof;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzdpg;->zzhfw:Lcom/google/android/gms/internal/ads/zzdpg;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzcof;-><init>(Lcom/google/android/gms/internal/ads/zzdpg;)V

    throw v0

    .line 15
    :cond_3d
    new-instance v5, Lcom/google/android/gms/internal/ads/zzcrq;

    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/zzcrq;-><init>()V

    const-string v6, "SDK version: "

    .line 16
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzcro;->zzglr:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_55

    invoke-virtual {v6, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_5b

    :cond_55
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v6, v8

    :goto_5b
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzayp;->zzfd(Ljava/lang/String;)V

    const-string v6, "AdRequestServiceImpl: Sending request: "

    .line 17
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_6f

    invoke-virtual {v6, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_75

    :cond_6f
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v6, v8

    :goto_75
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzayp;->zzef(Ljava/lang/String;)V

    .line 18
    new-instance v6, Ljava/net/URL;

    move-object/from16 v8, p1

    invoke-direct {v6, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 19
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 21
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzky()Lcom/google/android/gms/common/util/Clock;

    move-result-object v9

    invoke-interface {v9}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 22
    :goto_8e
    iget-object v13, v1, Lcom/google/android/gms/internal/ads/zzcro;->zzglb:Lcom/google/android/gms/internal/ads/zzatt;

    iget v14, v1, Lcom/google/android/gms/internal/ads/zzcro;->zzgls:I

    invoke-interface {v13, v14}, Lcom/google/android/gms/internal/ads/zzatt;->zzde(I)V

    .line 23
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    check-cast v6, Ljava/net/HttpURLConnection;
    :try_end_9b
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_9b} :catch_284

    .line 24
    :try_start_9b
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkr()Lcom/google/android/gms/internal/ads/zzayu;

    move-result-object v13

    iget-object v14, v1, Lcom/google/android/gms/internal/ads/zzcro;->zzvr:Landroid/content/Context;

    iget-object v15, v1, Lcom/google/android/gms/internal/ads/zzcro;->zzglr:Ljava/lang/String;

    .line 25
    invoke-virtual {v13, v14, v15, v11, v6}, Lcom/google/android/gms/internal/ads/zzayu;->zza(Landroid/content/Context;Ljava/lang/String;ZLjava/net/HttpURLConnection;)V

    .line 26
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_b4

    const-string v13, "Cookie"

    move-object/from16 v14, p4

    .line 27
    invoke-virtual {v6, v13, v14}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b6

    :cond_b4
    move-object/from16 v14, p4

    .line 28
    :goto_b6
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzati;->zzvk()Z

    move-result v13

    if-eqz v13, :cond_f3

    const-string v13, "pii"

    move-object/from16 v15, p3

    .line 29
    invoke-virtual {v15, v13}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    if-eqz v13, :cond_ed

    .line 31
    invoke-virtual {v13, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_d9

    const-string v11, "x-afma-drt-cookie"

    .line 33
    invoke-virtual {v13, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 34
    invoke-virtual {v6, v11, v7}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    :cond_d9
    invoke-virtual {v13, v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_f5

    const-string v7, "x-afma-drt-v2-cookie"

    .line 37
    invoke-virtual {v13, v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 38
    invoke-virtual {v6, v7, v11}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f5

    :cond_ed
    const-string v7, "DSID signal does not exist."

    .line 39
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzayp;->zzei(Ljava/lang/String;)V

    goto :goto_f5

    :cond_f3
    move-object/from16 v15, p3

    :cond_f5
    :goto_f5
    if-eqz p2, :cond_12c

    .line 42
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzati;->zzvj()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_12c

    const/4 v11, 0x1

    .line 43
    invoke-virtual {v6, v11}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 44
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzati;->zzvj()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    .line 45
    array-length v13, v11

    invoke-virtual {v6, v13}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V
    :try_end_111
    .catchall {:try_start_9b .. :try_end_111} :catchall_27a

    .line 47
    :try_start_111
    new-instance v13, Ljava/io/BufferedOutputStream;

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-direct {v13, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_11a
    .catchall {:try_start_111 .. :try_end_11a} :catchall_125

    .line 48
    :try_start_11a
    invoke-virtual {v13, v11}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_11d
    .catchall {:try_start_11a .. :try_end_11d} :catchall_121

    .line 49
    :try_start_11d
    invoke-static {v13}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_12d

    :catchall_121
    move-exception v0

    move-object/from16 v17, v13

    goto :goto_128

    :catchall_125
    move-exception v0

    const/16 v17, 0x0

    .line 51
    :goto_128
    invoke-static/range {v17 .. v17}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 52
    throw v0

    :cond_12c
    const/4 v11, 0x0

    .line 53
    :goto_12d
    new-instance v7, Lcom/google/android/gms/internal/ads/zzbbk;

    invoke-direct {v7}, Lcom/google/android/gms/internal/ads/zzbbk;-><init>()V

    .line 54
    invoke-virtual {v7, v6, v11}, Lcom/google/android/gms/internal/ads/zzbbk;->zza(Ljava/net/HttpURLConnection;[B)V

    .line 55
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v11

    .line 56
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v13

    .line 57
    invoke-interface {v13}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_145
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_186

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/Map$Entry;

    .line 58
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v20, v2

    move-object/from16 v2, v19

    check-cast v2, Ljava/lang/String;

    .line 59
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v19, v3

    move-object/from16 v3, v18

    check-cast v3, Ljava/util/List;

    .line 60
    invoke-interface {v8, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_175

    .line 61
    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_181

    :cond_175
    move-object/from16 v18, v4

    .line 62
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v8, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v4, v18

    :goto_181
    move-object/from16 v3, v19

    move-object/from16 v2, v20

    goto :goto_145

    :cond_186
    move-object/from16 v20, v2

    move-object/from16 v19, v3

    move-object/from16 v18, v4

    .line 64
    invoke-virtual {v7, v6, v11}, Lcom/google/android/gms/internal/ads/zzbbk;->zza(Ljava/net/HttpURLConnection;I)V
    :try_end_18f
    .catchall {:try_start_11d .. :try_end_18f} :catchall_27a

    const/16 v2, 0xc8

    const/16 v3, 0x12c

    if-lt v11, v2, :cond_1f3

    if-ge v11, v3, :cond_1f3

    .line 67
    :try_start_197
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1a0
    .catchall {:try_start_197 .. :try_end_1a0} :catchall_1ec

    .line 68
    :try_start_1a0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkr()Lcom/google/android/gms/internal/ads/zzayu;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzayu;->zza(Ljava/io/InputStreamReader;)Ljava/lang/String;

    move-result-object v0
    :try_end_1a7
    .catchall {:try_start_1a0 .. :try_end_1a7} :catchall_1e8

    .line 69
    :try_start_1a7
    invoke-static {v2}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 73
    invoke-virtual {v7, v0}, Lcom/google/android/gms/internal/ads/zzbbk;->zzez(Ljava/lang/String;)V

    .line 74
    iput v11, v5, Lcom/google/android/gms/internal/ads/zzcrq;->zzglt:I

    .line 75
    iput-object v0, v5, Lcom/google/android/gms/internal/ads/zzcrq;->zzdsl:Ljava/lang/String;

    .line 76
    iput-object v8, v5, Lcom/google/android/gms/internal/ads/zzcrq;->zzam:Ljava/util/Map;

    .line 77
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d4

    sget-object v0, Lcom/google/android/gms/internal/ads/zzabb;->zzcuy:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 78
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 79
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1cc

    goto :goto_1d4

    .line 80
    :cond_1cc
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcof;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzdpg;->zzhfy:Lcom/google/android/gms/internal/ads/zzdpg;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzcof;-><init>(Lcom/google/android/gms/internal/ads/zzdpg;)V

    throw v0

    .line 81
    :cond_1d4
    :goto_1d4
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzky()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v9

    iput-wide v2, v5, Lcom/google/android/gms/internal/ads/zzcrq;->zzglu:J
    :try_end_1df
    .catchall {:try_start_1a7 .. :try_end_1df} :catchall_27a

    .line 83
    :try_start_1df
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 84
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzcro;->zzglb:Lcom/google/android/gms/internal/ads/zzatt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzatt;->zzvp()V
    :try_end_1e7
    .catch Ljava/io/IOException; {:try_start_1df .. :try_end_1e7} :catch_284

    return-object v5

    :catchall_1e8
    move-exception v0

    move-object/from16 v17, v2

    goto :goto_1ef

    :catchall_1ec
    move-exception v0

    const/16 v17, 0x0

    .line 71
    :goto_1ef
    :try_start_1ef
    invoke-static/range {v17 .. v17}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 72
    throw v0

    :cond_1f3
    if-lt v11, v3, :cond_24f

    const/16 v2, 0x190

    if-ge v11, v2, :cond_24f

    const-string v2, "Location"

    .line 87
    invoke-virtual {v6, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 88
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_240

    .line 91
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    add-int/2addr v12, v2

    .line 96
    sget-object v4, Lcom/google/android/gms/internal/ads/zzabb;->zzcub:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 97
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v4

    .line 98
    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4
    :try_end_21c
    .catchall {:try_start_1ef .. :try_end_21c} :catchall_27a

    if-gt v12, v4, :cond_231

    .line 101
    :try_start_21e
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 102
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzcro;->zzglb:Lcom/google/android/gms/internal/ads/zzatt;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzatt;->zzvp()V
    :try_end_226
    .catch Ljava/io/IOException; {:try_start_21e .. :try_end_226} :catch_284

    move-object v6, v3

    move-object/from16 v4, v18

    move-object/from16 v3, v19

    move-object/from16 v2, v20

    const/4 v7, 0x1

    const/4 v11, 0x0

    goto/16 :goto_8e

    :cond_231
    :try_start_231
    const-string v0, "Too many redirects."

    .line 99
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzayp;->zzfe(Ljava/lang/String;)V

    .line 100
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcof;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzdpg;->zzhfw:Lcom/google/android/gms/internal/ads/zzdpg;

    const-string v3, "Too many redirects"

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzcof;-><init>(Lcom/google/android/gms/internal/ads/zzdpg;Ljava/lang/String;)V

    throw v0

    :cond_240
    const-string v0, "No location header to follow redirect."

    .line 89
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzayp;->zzfe(Ljava/lang/String;)V

    .line 90
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcof;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzdpg;->zzhfw:Lcom/google/android/gms/internal/ads/zzdpg;

    const-string v3, "No location header to follow redirect"

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzcof;-><init>(Lcom/google/android/gms/internal/ads/zzdpg;Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_24f
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x2e

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzayp;->zzfe(Ljava/lang/String;)V

    .line 95
    new-instance v2, Lcom/google/android/gms/internal/ads/zzcof;

    sget-object v4, Lcom/google/android/gms/internal/ads/zzdpg;->zzhfw:Lcom/google/android/gms/internal/ads/zzdpg;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v4, v0}, Lcom/google/android/gms/internal/ads/zzcof;-><init>(Lcom/google/android/gms/internal/ads/zzdpg;Ljava/lang/String;)V

    throw v2
    :try_end_27a
    .catchall {:try_start_231 .. :try_end_27a} :catchall_27a

    :catchall_27a
    move-exception v0

    .line 104
    :try_start_27b
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 105
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzcro;->zzglb:Lcom/google/android/gms/internal/ads/zzatt;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzatt;->zzvp()V

    .line 106
    throw v0
    :try_end_284
    .catch Ljava/io/IOException; {:try_start_27b .. :try_end_284} :catch_284

    :catch_284
    move-exception v0

    const-string v2, "Error while connecting to ad server: "

    .line 108
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_29a

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2a0

    :cond_29a
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 109
    :goto_2a0
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzayp;->zzfe(Ljava/lang/String;)V

    .line 110
    new-instance v3, Lcom/google/android/gms/internal/ads/zzcof;

    sget-object v4, Lcom/google/android/gms/internal/ads/zzdpg;->zzhfw:Lcom/google/android/gms/internal/ads/zzdpg;

    invoke-direct {v3, v4, v2, v0}, Lcom/google/android/gms/internal/ads/zzcof;-><init>(Lcom/google/android/gms/internal/ads/zzdpg;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 111
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcrn;

    .line 113
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcrn;->zza(Lcom/google/android/gms/internal/ads/zzcrn;)Lcom/google/android/gms/internal/ads/zzati;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzati;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcrn;->zza(Lcom/google/android/gms/internal/ads/zzcrn;)Lcom/google/android/gms/internal/ads/zzati;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcrn;->zzb(Lcom/google/android/gms/internal/ads/zzcrn;)Lorg/json/JSONObject;

    move-result-object p1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcro;->zzdrm:Ljava/lang/String;

    .line 114
    invoke-direct {p0, v0, v1, p1, v2}, Lcom/google/android/gms/internal/ads/zzcro;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzati;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzcrq;

    move-result-object p1

    return-object p1
.end method
