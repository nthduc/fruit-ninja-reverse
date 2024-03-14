.class Lcom/facebook/ads/internal/dynamicloading/DexLoadErrorReporter$1;
.super Ljava/lang/Thread;
.source "DexLoadErrorReporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/dynamicloading/DexLoadErrorReporter;->reportDexLoadingIssue(Landroid/content/Context;Ljava/lang/String;D)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$error:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 37
    iput-object p1, p0, Lcom/facebook/ads/internal/dynamicloading/DexLoadErrorReporter$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/ads/internal/dynamicloading/DexLoadErrorReporter$1;->val$error:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 23

    move-object/from16 v1, p0

    const-string v0, "data"

    const-string v2, ""

    const-string v3, "0"

    const-string v4, "attempt"

    const-string v5, "UTF-8"

    const-string v6, "Can\'t close connection."

    const-string v7, "FBAudienceNetwork"

    .line 40
    invoke-super/range {p0 .. p0}, Ljava/lang/Thread;->run()V

    .line 46
    :try_start_13
    new-instance v9, Ljava/net/URL;

    const-string v10, "https://www.facebook.com/adnw_logging/"

    invoke-direct {v9, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    check-cast v9, Ljava/net/HttpURLConnection;
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_20} :catch_17a
    .catchall {:try_start_13 .. :try_end_20} :catchall_172

    :try_start_20
    const-string v10, "POST"

    .line 48
    invoke-virtual {v9, v10}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v10, "Content-Type"

    const-string v11, "application/x-www-form-urlencoded;charset=UTF-8"

    .line 49
    invoke-virtual {v9, v10, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "Accept"

    const-string v11, "application/json"

    .line 51
    invoke-virtual {v9, v10, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "Accept-Charset"

    .line 52
    invoke-virtual {v9, v10, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "user-agent"

    const-string v11, "[FBAN/AudienceNetworkForAndroid;FBSN/Android]"

    .line 53
    invoke-virtual {v9, v10, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x1

    .line 54
    invoke-virtual {v9, v10}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 55
    invoke-virtual {v9, v10}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 57
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->connect()V

    .line 59
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v10

    .line 61
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 62
    invoke-virtual {v11, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63
    iget-object v12, v1, Lcom/facebook/ads/internal/dynamicloading/DexLoadErrorReporter$1;->val$context:Landroid/content/Context;

    # invokes: Lcom/facebook/ads/internal/dynamicloading/DexLoadErrorReporter;->addEnvFields(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)V
    invoke-static {v12, v11, v10}, Lcom/facebook/ads/internal/dynamicloading/DexLoadErrorReporter;->access$000(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 65
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    const-string v13, "subtype"

    const-string v14, "generic"

    .line 66
    invoke-virtual {v12, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v13, "subtype_code"

    const-string v14, "1320"

    .line 67
    invoke-virtual {v12, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v13, "caught_exception"

    const-string v14, "1"

    .line 68
    invoke-virtual {v12, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v13, "stacktrace"

    .line 69
    iget-object v14, v1, Lcom/facebook/ads/internal/dynamicloading/DexLoadErrorReporter$1;->val$error:Ljava/lang/String;

    invoke-virtual {v12, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    const-string v14, "id"

    .line 72
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v14, "type"

    const-string v15, "debug"

    .line 73
    invoke-virtual {v13, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v14, "session_time"

    .line 74
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16
    :try_end_a6
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_a6} :catch_16b
    .catchall {:try_start_20 .. :try_end_a6} :catchall_163

    const-wide/16 v18, 0x3e8

    move-object/from16 v21, v9

    :try_start_aa
    div-long v8, v16, v18

    invoke-virtual {v15, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v13, v14, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "time"

    .line 75
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    div-long v14, v14, v18

    invoke-virtual {v9, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v8, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "session_id"

    .line 76
    invoke-virtual {v13, v2, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 77
    invoke-virtual {v13, v0, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 78
    invoke-virtual {v13, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79
    iget-object v2, v1, Lcom/facebook/ads/internal/dynamicloading/DexLoadErrorReporter$1;->val$context:Landroid/content/Context;

    # invokes: Lcom/facebook/ads/internal/dynamicloading/DexLoadErrorReporter;->addEnvFields(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)V
    invoke-static {v2, v12, v10}, Lcom/facebook/ads/internal/dynamicloading/DexLoadErrorReporter;->access$000(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 81
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 82
    invoke-virtual {v2, v13}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 84
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 85
    invoke-virtual {v3, v0, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "events"

    .line 86
    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 89
    new-instance v8, Ljava/io/DataOutputStream;

    invoke-virtual/range {v21 .. v21}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v8, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_102
    .catch Ljava/lang/Throwable; {:try_start_aa .. :try_end_102} :catch_161
    .catchall {:try_start_aa .. :try_end_102} :catchall_15f

    .line 90
    :try_start_102
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "payload="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v8}, Ljava/io/DataOutputStream;->flush()V

    const/16 v0, 0x4000

    .line 94
    new-array v0, v0, [B

    .line 95
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 97
    invoke-virtual/range {v21 .. v21}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3
    :try_end_12a
    .catch Ljava/lang/Throwable; {:try_start_102 .. :try_end_12a} :catch_15d
    .catchall {:try_start_102 .. :try_end_12a} :catchall_157

    .line 99
    :goto_12a
    :try_start_12a
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_136

    const/4 v5, 0x0

    .line 100
    invoke-virtual {v2, v0, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_12a

    .line 102
    :cond_136
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->flush()V
    :try_end_139
    .catch Ljava/lang/Throwable; {:try_start_12a .. :try_end_139} :catch_153
    .catchall {:try_start_12a .. :try_end_139} :catchall_150

    .line 108
    :try_start_139
    invoke-virtual {v8}, Ljava/io/DataOutputStream;->close()V
    :try_end_13c
    .catch Ljava/lang/Exception; {:try_start_139 .. :try_end_13c} :catch_13d

    goto :goto_142

    :catch_13d
    move-exception v0

    move-object v2, v0

    .line 111
    invoke-static {v7, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_142
    if-eqz v3, :cond_14d

    .line 115
    :try_start_144
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_147
    .catch Ljava/lang/Exception; {:try_start_144 .. :try_end_147} :catch_148

    goto :goto_14d

    :catch_148
    move-exception v0

    move-object v2, v0

    .line 118
    invoke-static {v7, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_14d
    :goto_14d
    if-eqz v21, :cond_1a0

    goto :goto_19d

    :catchall_150
    move-exception v0

    move-object v2, v0

    goto :goto_1a5

    :catch_153
    move-exception v0

    move-object/from16 v20, v3

    goto :goto_180

    :catchall_157
    move-exception v0

    move-object v2, v0

    move-object/from16 v20, v8

    const/4 v3, 0x0

    goto :goto_1a7

    :catch_15d
    move-exception v0

    goto :goto_16f

    :catchall_15f
    move-exception v0

    goto :goto_166

    :catch_161
    move-exception v0

    goto :goto_16e

    :catchall_163
    move-exception v0

    move-object/from16 v21, v9

    :goto_166
    move-object v2, v0

    const/4 v3, 0x0

    const/16 v20, 0x0

    goto :goto_1a7

    :catch_16b
    move-exception v0

    move-object/from16 v21, v9

    :goto_16e
    const/4 v8, 0x0

    :goto_16f
    const/16 v20, 0x0

    goto :goto_180

    :catchall_172
    move-exception v0

    move-object v2, v0

    const/4 v3, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    goto :goto_1a7

    :catch_17a
    move-exception v0

    const/4 v8, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    :goto_180
    :try_start_180
    const-string v2, "Can\'t send error."

    .line 104
    invoke-static {v7, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_185
    .catchall {:try_start_180 .. :try_end_185} :catchall_1a1

    if-eqz v8, :cond_190

    .line 108
    :try_start_187
    invoke-virtual {v8}, Ljava/io/DataOutputStream;->close()V
    :try_end_18a
    .catch Ljava/lang/Exception; {:try_start_187 .. :try_end_18a} :catch_18b

    goto :goto_190

    :catch_18b
    move-exception v0

    move-object v2, v0

    .line 111
    invoke-static {v7, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_190
    :goto_190
    if-eqz v20, :cond_19b

    .line 115
    :try_start_192
    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->close()V
    :try_end_195
    .catch Ljava/lang/Exception; {:try_start_192 .. :try_end_195} :catch_196

    goto :goto_19b

    :catch_196
    move-exception v0

    move-object v2, v0

    .line 118
    invoke-static {v7, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_19b
    :goto_19b
    if-eqz v21, :cond_1a0

    .line 121
    :goto_19d
    invoke-virtual/range {v21 .. v21}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1a0
    return-void

    :catchall_1a1
    move-exception v0

    move-object v2, v0

    move-object/from16 v3, v20

    :goto_1a5
    move-object/from16 v20, v8

    :goto_1a7
    if-eqz v20, :cond_1b2

    .line 108
    :try_start_1a9
    invoke-virtual/range {v20 .. v20}, Ljava/io/DataOutputStream;->close()V
    :try_end_1ac
    .catch Ljava/lang/Exception; {:try_start_1a9 .. :try_end_1ac} :catch_1ad

    goto :goto_1b2

    :catch_1ad
    move-exception v0

    move-object v4, v0

    .line 111
    invoke-static {v7, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1b2
    :goto_1b2
    if-eqz v3, :cond_1bd

    .line 115
    :try_start_1b4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1b7
    .catch Ljava/lang/Exception; {:try_start_1b4 .. :try_end_1b7} :catch_1b8

    goto :goto_1bd

    :catch_1b8
    move-exception v0

    move-object v3, v0

    .line 118
    invoke-static {v7, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1bd
    :goto_1bd
    if-eqz v21, :cond_1c2

    .line 121
    invoke-virtual/range {v21 .. v21}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 123
    :cond_1c2
    throw v2

    return-void
.end method
