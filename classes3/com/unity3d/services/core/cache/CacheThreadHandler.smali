.class Lcom/unity3d/services/core/cache/CacheThreadHandler;
.super Landroid/os/Handler;
.source "CacheThreadHandler.java"


# instance fields
.field private _active:Z

.field private _canceled:Z

.field private _currentRequest:Lcom/unity3d/services/core/request/WebRequest;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 27
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/services/core/request/WebRequest;

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_canceled:Z

    .line 30
    iput-boolean v0, p0, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_active:Z

    return-void
.end method

.method private downloadFile(Ljava/lang/String;Ljava/lang/String;IIILjava/util/HashMap;Z)V
    .registers 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "III",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;Z)V"
        }
    .end annotation

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object/from16 v0, p2

    move/from16 v1, p7

    const-string v15, "Error closing stream"

    .line 92
    iget-boolean v2, v13, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_canceled:Z

    if-nez v2, :cond_38e

    if-eqz v14, :cond_38e

    if-nez v0, :cond_14

    goto/16 :goto_38e

    .line 96
    :cond_14
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v2, " to "

    if-eqz v1, :cond_49

    .line 99
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unity Ads cache: resuming download "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " at "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " bytes"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    goto :goto_63

    .line 102
    :cond_49
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unity Ads cache: start downloading "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 105
    :goto_63
    invoke-static {}, Lcom/unity3d/services/core/device/Device;->isActiveNetworkConnected()Z

    move-result v0

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    if-nez v0, :cond_85

    const-string v0, "Unity Ads cache: download cancelled, no internet connection available"

    .line 106
    invoke-static {v0}, Lcom/unity3d/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 107
    invoke-static {}, Lcom/unity3d/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/services/core/webview/WebViewApp;

    move-result-object v0

    sget-object v1, Lcom/unity3d/services/core/webview/WebViewEventCategory;->CACHE:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    sget-object v2, Lcom/unity3d/services/core/cache/CacheEvent;->DOWNLOAD_ERROR:Lcom/unity3d/services/core/cache/CacheEvent;

    new-array v3, v12, [Ljava/lang/Object;

    sget-object v4, Lcom/unity3d/services/core/cache/CacheError;->NO_INTERNET:Lcom/unity3d/services/core/cache/CacheError;

    aput-object v4, v3, v10

    aput-object v14, v3, v11

    invoke-virtual {v0, v1, v2, v3}, Lcom/unity3d/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    return-void

    .line 111
    :cond_85
    iput-boolean v11, v13, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_active:Z

    .line 113
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const/4 v8, 0x0

    const/4 v9, 0x3

    .line 117
    :try_start_8d
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v5, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_92
    .catch Ljava/io/FileNotFoundException; {:try_start_8d .. :try_end_92} :catch_315
    .catch Ljava/net/MalformedURLException; {:try_start_8d .. :try_end_92} :catch_2c9
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_92} :catch_27b
    .catch Ljava/lang/IllegalStateException; {:try_start_8d .. :try_end_92} :catch_22d
    .catch Lcom/unity3d/services/core/request/NetworkIOException; {:try_start_8d .. :try_end_92} :catch_1df
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_92} :catch_191
    .catchall {:try_start_8d .. :try_end_92} :catchall_186

    move/from16 v0, p3

    move/from16 v1, p4

    move-object/from16 v4, p6

    .line 118
    :try_start_98
    invoke-direct {v13, v14, v0, v1, v4}, Lcom/unity3d/services/core/cache/CacheThreadHandler;->getWebRequest(Ljava/lang/String;IILjava/util/HashMap;)Lcom/unity3d/services/core/request/WebRequest;

    move-result-object v0

    iput-object v0, v13, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/services/core/request/WebRequest;

    .line 119
    iget-object v0, v13, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/services/core/request/WebRequest;

    new-instance v1, Lcom/unity3d/services/core/cache/CacheThreadHandler$1;

    move/from16 v4, p5

    invoke-direct {v1, v13, v5, v4}, Lcom/unity3d/services/core/cache/CacheThreadHandler$1;-><init>(Lcom/unity3d/services/core/cache/CacheThreadHandler;Ljava/io/File;I)V

    invoke-virtual {v0, v1}, Lcom/unity3d/services/core/request/WebRequest;->setProgressListener(Lcom/unity3d/services/core/request/IWebRequestProgressListener;)V

    .line 136
    iget-object v0, v13, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/services/core/request/WebRequest;

    invoke-virtual {v0, v6}, Lcom/unity3d/services/core/request/WebRequest;->makeStreamRequest(Ljava/io/OutputStream;)J

    move-result-wide v16

    .line 139
    iput-boolean v10, v13, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_active:Z

    .line 140
    iget-object v0, v13, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/services/core/request/WebRequest;

    invoke-virtual {v0}, Lcom/unity3d/services/core/request/WebRequest;->getContentLength()J

    move-result-wide v18

    iget-object v0, v13, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/services/core/request/WebRequest;

    invoke-virtual {v0}, Lcom/unity3d/services/core/request/WebRequest;->isCanceled()Z

    move-result v0

    iget-object v1, v13, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/services/core/request/WebRequest;

    invoke-virtual {v1}, Lcom/unity3d/services/core/request/WebRequest;->getResponseCode()I

    move-result v20

    iget-object v1, v13, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/services/core/request/WebRequest;

    invoke-virtual {v1}, Lcom/unity3d/services/core/request/WebRequest;->getResponseHeaders()Ljava/util/Map;

    move-result-object v21
    :try_end_ca
    .catch Ljava/io/FileNotFoundException; {:try_start_98 .. :try_end_ca} :catch_178
    .catch Ljava/net/MalformedURLException; {:try_start_98 .. :try_end_ca} :catch_16a
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_ca} :catch_15c
    .catch Ljava/lang/IllegalStateException; {:try_start_98 .. :try_end_ca} :catch_14e
    .catch Lcom/unity3d/services/core/request/NetworkIOException; {:try_start_98 .. :try_end_ca} :catch_140
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_ca} :catch_133
    .catchall {:try_start_98 .. :try_end_ca} :catchall_124

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move-object/from16 v22, v6

    move-wide/from16 v6, v16

    move-object v14, v8

    move-wide/from16 v8, v18

    move v10, v0

    const/16 v16, 0x1

    move/from16 v11, v20

    const/16 v17, 0x2

    move-object/from16 v12, v21

    :try_start_de
    invoke-direct/range {v1 .. v12}, Lcom/unity3d/services/core/cache/CacheThreadHandler;->postProcessDownload(JLjava/lang/String;Ljava/io/File;JJZILjava/util/Map;)V
    :try_end_e1
    .catch Ljava/io/FileNotFoundException; {:try_start_de .. :try_end_e1} :catch_11f
    .catch Ljava/net/MalformedURLException; {:try_start_de .. :try_end_e1} :catch_11b
    .catch Ljava/io/IOException; {:try_start_de .. :try_end_e1} :catch_117
    .catch Ljava/lang/IllegalStateException; {:try_start_de .. :try_end_e1} :catch_113
    .catch Lcom/unity3d/services/core/request/NetworkIOException; {:try_start_de .. :try_end_e1} :catch_10f
    .catch Ljava/lang/Exception; {:try_start_de .. :try_end_e1} :catch_10b
    .catchall {:try_start_de .. :try_end_e1} :catchall_107

    .line 173
    iput-object v14, v13, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/services/core/request/WebRequest;

    .line 176
    :try_start_e3
    invoke-virtual/range {v22 .. v22}, Ljava/io/FileOutputStream;->close()V
    :try_end_e6
    .catch Ljava/lang/Exception; {:try_start_e3 .. :try_end_e6} :catch_e8

    goto/16 :goto_363

    :catch_e8
    move-exception v0

    move-object v1, v0

    .line 179
    invoke-static {v15, v1}, Lcom/unity3d/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 180
    invoke-static {}, Lcom/unity3d/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/services/core/webview/WebViewApp;

    move-result-object v0

    sget-object v2, Lcom/unity3d/services/core/webview/WebViewEventCategory;->CACHE:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    sget-object v3, Lcom/unity3d/services/core/cache/CacheEvent;->DOWNLOAD_ERROR:Lcom/unity3d/services/core/cache/CacheEvent;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    sget-object v5, Lcom/unity3d/services/core/cache/CacheError;->FILE_IO_ERROR:Lcom/unity3d/services/core/cache/CacheError;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    aput-object p1, v4, v16

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v17

    goto/16 :goto_360

    :catchall_107
    move-exception v0

    const/4 v4, 0x3

    const/4 v6, 0x0

    goto :goto_12e

    :catch_10b
    move-exception v0

    const/4 v4, 0x3

    const/4 v6, 0x0

    goto :goto_13d

    :catch_10f
    move-exception v0

    const/4 v4, 0x3

    const/4 v6, 0x0

    goto :goto_14a

    :catch_113
    move-exception v0

    const/4 v4, 0x3

    const/4 v6, 0x0

    goto :goto_158

    :catch_117
    move-exception v0

    const/4 v4, 0x3

    const/4 v6, 0x0

    goto :goto_166

    :catch_11b
    move-exception v0

    const/4 v4, 0x3

    const/4 v6, 0x0

    goto :goto_174

    :catch_11f
    move-exception v0

    const/4 v4, 0x3

    const/4 v6, 0x0

    goto/16 :goto_182

    :catchall_124
    move-exception v0

    move-object/from16 v22, v6

    move-object v14, v8

    const/4 v4, 0x3

    const/4 v6, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x2

    :goto_12e
    move-object v1, v0

    move-object/from16 v8, v22

    goto/16 :goto_367

    :catch_133
    move-exception v0

    move-object/from16 v22, v6

    move-object v14, v8

    const/4 v4, 0x3

    const/4 v6, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x2

    :goto_13d
    move-object/from16 v8, v22

    goto :goto_199

    :catch_140
    move-exception v0

    move-object/from16 v22, v6

    move-object v14, v8

    const/4 v4, 0x3

    const/4 v6, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x2

    :goto_14a
    move-object/from16 v8, v22

    goto/16 :goto_1e7

    :catch_14e
    move-exception v0

    move-object/from16 v22, v6

    move-object v14, v8

    const/4 v4, 0x3

    const/4 v6, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x2

    :goto_158
    move-object/from16 v8, v22

    goto/16 :goto_235

    :catch_15c
    move-exception v0

    move-object/from16 v22, v6

    move-object v14, v8

    const/4 v4, 0x3

    const/4 v6, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x2

    :goto_166
    move-object/from16 v8, v22

    goto/16 :goto_283

    :catch_16a
    move-exception v0

    move-object/from16 v22, v6

    move-object v14, v8

    const/4 v4, 0x3

    const/4 v6, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x2

    :goto_174
    move-object/from16 v8, v22

    goto/16 :goto_2d1

    :catch_178
    move-exception v0

    move-object/from16 v22, v6

    move-object v14, v8

    const/4 v4, 0x3

    const/4 v6, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x2

    :goto_182
    move-object/from16 v8, v22

    goto/16 :goto_31d

    :catchall_186
    move-exception v0

    move-object v14, v8

    const/4 v4, 0x3

    const/4 v6, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x2

    :goto_18e
    move-object v1, v0

    goto/16 :goto_367

    :catch_191
    move-exception v0

    move-object v14, v8

    const/4 v4, 0x3

    const/4 v6, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x2

    :goto_199
    :try_start_199
    const-string v1, "Unknown error"

    .line 168
    invoke-static {v1, v0}, Lcom/unity3d/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 169
    iput-boolean v6, v13, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_active:Z

    .line 170
    invoke-static {}, Lcom/unity3d/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/services/core/webview/WebViewApp;

    move-result-object v1

    sget-object v2, Lcom/unity3d/services/core/webview/WebViewEventCategory;->CACHE:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    sget-object v3, Lcom/unity3d/services/core/cache/CacheEvent;->DOWNLOAD_ERROR:Lcom/unity3d/services/core/cache/CacheEvent;

    new-array v5, v4, [Ljava/lang/Object;

    sget-object v7, Lcom/unity3d/services/core/cache/CacheError;->UNKNOWN_ERROR:Lcom/unity3d/services/core/cache/CacheError;

    aput-object v7, v5, v6

    aput-object p1, v5, v16

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v17

    invoke-virtual {v1, v2, v3, v5}, Lcom/unity3d/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z
    :try_end_1b9
    .catchall {:try_start_199 .. :try_end_1b9} :catchall_364

    .line 173
    iput-object v14, v13, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/services/core/request/WebRequest;

    if-eqz v8, :cond_363

    .line 176
    :try_start_1bd
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_1c0
    .catch Ljava/lang/Exception; {:try_start_1bd .. :try_end_1c0} :catch_1c2

    goto/16 :goto_363

    :catch_1c2
    move-exception v0

    move-object v1, v0

    .line 179
    invoke-static {v15, v1}, Lcom/unity3d/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 180
    invoke-static {}, Lcom/unity3d/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/services/core/webview/WebViewApp;

    move-result-object v0

    sget-object v2, Lcom/unity3d/services/core/webview/WebViewEventCategory;->CACHE:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    sget-object v3, Lcom/unity3d/services/core/cache/CacheEvent;->DOWNLOAD_ERROR:Lcom/unity3d/services/core/cache/CacheEvent;

    new-array v4, v4, [Ljava/lang/Object;

    sget-object v5, Lcom/unity3d/services/core/cache/CacheError;->FILE_IO_ERROR:Lcom/unity3d/services/core/cache/CacheError;

    aput-object v5, v4, v6

    aput-object p1, v4, v16

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v17

    goto/16 :goto_360

    :catch_1df
    move-exception v0

    move-object v14, v8

    const/4 v4, 0x3

    const/4 v6, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x2

    :goto_1e7
    :try_start_1e7
    const-string v1, "Network error"

    .line 163
    invoke-static {v1, v0}, Lcom/unity3d/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 164
    iput-boolean v6, v13, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_active:Z

    .line 165
    invoke-static {}, Lcom/unity3d/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/services/core/webview/WebViewApp;

    move-result-object v1

    sget-object v2, Lcom/unity3d/services/core/webview/WebViewEventCategory;->CACHE:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    sget-object v3, Lcom/unity3d/services/core/cache/CacheEvent;->DOWNLOAD_ERROR:Lcom/unity3d/services/core/cache/CacheEvent;

    new-array v5, v4, [Ljava/lang/Object;

    sget-object v7, Lcom/unity3d/services/core/cache/CacheError;->NETWORK_ERROR:Lcom/unity3d/services/core/cache/CacheError;

    aput-object v7, v5, v6

    aput-object p1, v5, v16

    invoke-virtual {v0}, Lcom/unity3d/services/core/request/NetworkIOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v17

    invoke-virtual {v1, v2, v3, v5}, Lcom/unity3d/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z
    :try_end_207
    .catchall {:try_start_1e7 .. :try_end_207} :catchall_364

    .line 173
    iput-object v14, v13, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/services/core/request/WebRequest;

    if-eqz v8, :cond_363

    .line 176
    :try_start_20b
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_20e
    .catch Ljava/lang/Exception; {:try_start_20b .. :try_end_20e} :catch_210

    goto/16 :goto_363

    :catch_210
    move-exception v0

    move-object v1, v0

    .line 179
    invoke-static {v15, v1}, Lcom/unity3d/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 180
    invoke-static {}, Lcom/unity3d/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/services/core/webview/WebViewApp;

    move-result-object v0

    sget-object v2, Lcom/unity3d/services/core/webview/WebViewEventCategory;->CACHE:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    sget-object v3, Lcom/unity3d/services/core/cache/CacheEvent;->DOWNLOAD_ERROR:Lcom/unity3d/services/core/cache/CacheEvent;

    new-array v4, v4, [Ljava/lang/Object;

    sget-object v5, Lcom/unity3d/services/core/cache/CacheError;->FILE_IO_ERROR:Lcom/unity3d/services/core/cache/CacheError;

    aput-object v5, v4, v6

    aput-object p1, v4, v16

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v17

    goto/16 :goto_360

    :catch_22d
    move-exception v0

    move-object v14, v8

    const/4 v4, 0x3

    const/4 v6, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x2

    :goto_235
    :try_start_235
    const-string v1, "Illegal state"

    .line 158
    invoke-static {v1, v0}, Lcom/unity3d/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 159
    iput-boolean v6, v13, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_active:Z

    .line 160
    invoke-static {}, Lcom/unity3d/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/services/core/webview/WebViewApp;

    move-result-object v1

    sget-object v2, Lcom/unity3d/services/core/webview/WebViewEventCategory;->CACHE:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    sget-object v3, Lcom/unity3d/services/core/cache/CacheEvent;->DOWNLOAD_ERROR:Lcom/unity3d/services/core/cache/CacheEvent;

    new-array v5, v4, [Ljava/lang/Object;

    sget-object v7, Lcom/unity3d/services/core/cache/CacheError;->ILLEGAL_STATE:Lcom/unity3d/services/core/cache/CacheError;

    aput-object v7, v5, v6

    aput-object p1, v5, v16

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v17

    invoke-virtual {v1, v2, v3, v5}, Lcom/unity3d/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z
    :try_end_255
    .catchall {:try_start_235 .. :try_end_255} :catchall_364

    .line 173
    iput-object v14, v13, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/services/core/request/WebRequest;

    if-eqz v8, :cond_363

    .line 176
    :try_start_259
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_25c
    .catch Ljava/lang/Exception; {:try_start_259 .. :try_end_25c} :catch_25e

    goto/16 :goto_363

    :catch_25e
    move-exception v0

    move-object v1, v0

    .line 179
    invoke-static {v15, v1}, Lcom/unity3d/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 180
    invoke-static {}, Lcom/unity3d/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/services/core/webview/WebViewApp;

    move-result-object v0

    sget-object v2, Lcom/unity3d/services/core/webview/WebViewEventCategory;->CACHE:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    sget-object v3, Lcom/unity3d/services/core/cache/CacheEvent;->DOWNLOAD_ERROR:Lcom/unity3d/services/core/cache/CacheEvent;

    new-array v4, v4, [Ljava/lang/Object;

    sget-object v5, Lcom/unity3d/services/core/cache/CacheError;->FILE_IO_ERROR:Lcom/unity3d/services/core/cache/CacheError;

    aput-object v5, v4, v6

    aput-object p1, v4, v16

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v17

    goto/16 :goto_360

    :catch_27b
    move-exception v0

    move-object v14, v8

    const/4 v4, 0x3

    const/4 v6, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x2

    :goto_283
    :try_start_283
    const-string v1, "Couldn\'t request stream"

    .line 153
    invoke-static {v1, v0}, Lcom/unity3d/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 154
    iput-boolean v6, v13, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_active:Z

    .line 155
    invoke-static {}, Lcom/unity3d/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/services/core/webview/WebViewApp;

    move-result-object v1

    sget-object v2, Lcom/unity3d/services/core/webview/WebViewEventCategory;->CACHE:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    sget-object v3, Lcom/unity3d/services/core/cache/CacheEvent;->DOWNLOAD_ERROR:Lcom/unity3d/services/core/cache/CacheEvent;

    new-array v5, v4, [Ljava/lang/Object;

    sget-object v7, Lcom/unity3d/services/core/cache/CacheError;->FILE_IO_ERROR:Lcom/unity3d/services/core/cache/CacheError;

    aput-object v7, v5, v6

    aput-object p1, v5, v16

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v17

    invoke-virtual {v1, v2, v3, v5}, Lcom/unity3d/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z
    :try_end_2a3
    .catchall {:try_start_283 .. :try_end_2a3} :catchall_364

    .line 173
    iput-object v14, v13, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/services/core/request/WebRequest;

    if-eqz v8, :cond_363

    .line 176
    :try_start_2a7
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_2aa
    .catch Ljava/lang/Exception; {:try_start_2a7 .. :try_end_2aa} :catch_2ac

    goto/16 :goto_363

    :catch_2ac
    move-exception v0

    move-object v1, v0

    .line 179
    invoke-static {v15, v1}, Lcom/unity3d/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 180
    invoke-static {}, Lcom/unity3d/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/services/core/webview/WebViewApp;

    move-result-object v0

    sget-object v2, Lcom/unity3d/services/core/webview/WebViewEventCategory;->CACHE:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    sget-object v3, Lcom/unity3d/services/core/cache/CacheEvent;->DOWNLOAD_ERROR:Lcom/unity3d/services/core/cache/CacheEvent;

    new-array v4, v4, [Ljava/lang/Object;

    sget-object v5, Lcom/unity3d/services/core/cache/CacheError;->FILE_IO_ERROR:Lcom/unity3d/services/core/cache/CacheError;

    aput-object v5, v4, v6

    aput-object p1, v4, v16

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v17

    goto/16 :goto_360

    :catch_2c9
    move-exception v0

    move-object v14, v8

    const/4 v4, 0x3

    const/4 v6, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x2

    :goto_2d1
    :try_start_2d1
    const-string v1, "Malformed URL"

    .line 148
    invoke-static {v1, v0}, Lcom/unity3d/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 149
    iput-boolean v6, v13, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_active:Z

    .line 150
    invoke-static {}, Lcom/unity3d/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/services/core/webview/WebViewApp;

    move-result-object v1

    sget-object v2, Lcom/unity3d/services/core/webview/WebViewEventCategory;->CACHE:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    sget-object v3, Lcom/unity3d/services/core/cache/CacheEvent;->DOWNLOAD_ERROR:Lcom/unity3d/services/core/cache/CacheEvent;

    new-array v5, v4, [Ljava/lang/Object;

    sget-object v7, Lcom/unity3d/services/core/cache/CacheError;->MALFORMED_URL:Lcom/unity3d/services/core/cache/CacheError;

    aput-object v7, v5, v6

    aput-object p1, v5, v16

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v17

    invoke-virtual {v1, v2, v3, v5}, Lcom/unity3d/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z
    :try_end_2f1
    .catchall {:try_start_2d1 .. :try_end_2f1} :catchall_364

    .line 173
    iput-object v14, v13, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/services/core/request/WebRequest;

    if-eqz v8, :cond_363

    .line 176
    :try_start_2f5
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_2f8
    .catch Ljava/lang/Exception; {:try_start_2f5 .. :try_end_2f8} :catch_2f9

    goto :goto_363

    :catch_2f9
    move-exception v0

    move-object v1, v0

    .line 179
    invoke-static {v15, v1}, Lcom/unity3d/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 180
    invoke-static {}, Lcom/unity3d/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/services/core/webview/WebViewApp;

    move-result-object v0

    sget-object v2, Lcom/unity3d/services/core/webview/WebViewEventCategory;->CACHE:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    sget-object v3, Lcom/unity3d/services/core/cache/CacheEvent;->DOWNLOAD_ERROR:Lcom/unity3d/services/core/cache/CacheEvent;

    new-array v4, v4, [Ljava/lang/Object;

    sget-object v5, Lcom/unity3d/services/core/cache/CacheError;->FILE_IO_ERROR:Lcom/unity3d/services/core/cache/CacheError;

    aput-object v5, v4, v6

    aput-object p1, v4, v16

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v17

    goto :goto_360

    :catch_315
    move-exception v0

    move-object v14, v8

    const/4 v4, 0x3

    const/4 v6, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x2

    :goto_31d
    :try_start_31d
    const-string v1, "Couldn\'t create target file"

    .line 143
    invoke-static {v1, v0}, Lcom/unity3d/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 144
    iput-boolean v6, v13, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_active:Z

    .line 145
    invoke-static {}, Lcom/unity3d/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/services/core/webview/WebViewApp;

    move-result-object v1

    sget-object v2, Lcom/unity3d/services/core/webview/WebViewEventCategory;->CACHE:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    sget-object v3, Lcom/unity3d/services/core/cache/CacheEvent;->DOWNLOAD_ERROR:Lcom/unity3d/services/core/cache/CacheEvent;

    new-array v5, v4, [Ljava/lang/Object;

    sget-object v7, Lcom/unity3d/services/core/cache/CacheError;->FILE_IO_ERROR:Lcom/unity3d/services/core/cache/CacheError;

    aput-object v7, v5, v6

    aput-object p1, v5, v16

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v17

    invoke-virtual {v1, v2, v3, v5}, Lcom/unity3d/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z
    :try_end_33d
    .catchall {:try_start_31d .. :try_end_33d} :catchall_364

    .line 173
    iput-object v14, v13, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/services/core/request/WebRequest;

    if-eqz v8, :cond_363

    .line 176
    :try_start_341
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_344
    .catch Ljava/lang/Exception; {:try_start_341 .. :try_end_344} :catch_345

    goto :goto_363

    :catch_345
    move-exception v0

    move-object v1, v0

    .line 179
    invoke-static {v15, v1}, Lcom/unity3d/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 180
    invoke-static {}, Lcom/unity3d/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/services/core/webview/WebViewApp;

    move-result-object v0

    sget-object v2, Lcom/unity3d/services/core/webview/WebViewEventCategory;->CACHE:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    sget-object v3, Lcom/unity3d/services/core/cache/CacheEvent;->DOWNLOAD_ERROR:Lcom/unity3d/services/core/cache/CacheEvent;

    new-array v4, v4, [Ljava/lang/Object;

    sget-object v5, Lcom/unity3d/services/core/cache/CacheError;->FILE_IO_ERROR:Lcom/unity3d/services/core/cache/CacheError;

    aput-object v5, v4, v6

    aput-object p1, v4, v16

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v17

    :goto_360
    invoke-virtual {v0, v2, v3, v4}, Lcom/unity3d/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    :cond_363
    :goto_363
    return-void

    :catchall_364
    move-exception v0

    goto/16 :goto_18e

    .line 173
    :goto_367
    iput-object v14, v13, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/services/core/request/WebRequest;

    if-eqz v8, :cond_38d

    .line 176
    :try_start_36b
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_36e
    .catch Ljava/lang/Exception; {:try_start_36b .. :try_end_36e} :catch_36f

    goto :goto_38d

    :catch_36f
    move-exception v0

    move-object v2, v0

    .line 179
    invoke-static {v15, v2}, Lcom/unity3d/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 180
    invoke-static {}, Lcom/unity3d/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/services/core/webview/WebViewApp;

    move-result-object v0

    sget-object v3, Lcom/unity3d/services/core/webview/WebViewEventCategory;->CACHE:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    sget-object v5, Lcom/unity3d/services/core/cache/CacheEvent;->DOWNLOAD_ERROR:Lcom/unity3d/services/core/cache/CacheEvent;

    new-array v4, v4, [Ljava/lang/Object;

    sget-object v7, Lcom/unity3d/services/core/cache/CacheError;->FILE_IO_ERROR:Lcom/unity3d/services/core/cache/CacheError;

    aput-object v7, v4, v6

    aput-object p1, v4, v16

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v17

    invoke-virtual {v0, v3, v5, v4}, Lcom/unity3d/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    .line 181
    :cond_38d
    :goto_38d
    throw v1

    :cond_38e
    :goto_38e
    return-void
.end method

.method private getWebRequest(Ljava/lang/String;IILjava/util/HashMap;)Lcom/unity3d/services/core/request/WebRequest;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/unity3d/services/core/request/WebRequest;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 204
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    if-eqz p4, :cond_a

    .line 206
    invoke-virtual {v3, p4}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 209
    :cond_a
    new-instance p4, Lcom/unity3d/services/core/request/WebRequest;

    const-string v2, "GET"

    move-object v0, p4

    move-object v1, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/unity3d/services/core/request/WebRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;II)V

    return-object p4
.end method

.method private postProcessDownload(JLjava/lang/String;Ljava/io/File;JJZILjava/util/Map;)V
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "JJZI",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    move-object/from16 v0, p3

    .line 186
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sub-long v1, v1, p1

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object/from16 v5, p4

    .line 189
    invoke-virtual {v5, v4, v3}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v6

    if-nez v6, :cond_17

    const-string v6, "Unity Ads cache: could not set file readable!"

    .line 191
    invoke-static {v6}, Lcom/unity3d/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    :cond_17
    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x6

    if-nez p9, :cond_7b

    .line 195
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unity Ads cache: File "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " of "

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v12, p5

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " bytes downloaded in "

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "ms"

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/unity3d/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 196
    invoke-static {}, Lcom/unity3d/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/services/core/webview/WebViewApp;

    move-result-object v5

    sget-object v11, Lcom/unity3d/services/core/webview/WebViewEventCategory;->CACHE:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    sget-object v14, Lcom/unity3d/services/core/cache/CacheEvent;->DOWNLOAD_END:Lcom/unity3d/services/core/cache/CacheEvent;

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v0, v10, v3

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v10, v4

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v10, v9

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v10, v8

    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v10, v7

    invoke-static/range {p11 .. p11}, Lcom/unity3d/services/core/api/Request;->getResponseHeadersMap(Ljava/util/Map;)Lorg/json/JSONArray;

    move-result-object v0

    aput-object v0, v10, v6

    invoke-virtual {v5, v11, v14, v10}, Lcom/unity3d/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    goto :goto_c3

    :cond_7b
    move-wide/from16 v12, p5

    .line 198
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unity Ads cache: downloading of "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " stopped"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/unity3d/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 199
    invoke-static {}, Lcom/unity3d/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/services/core/webview/WebViewApp;

    move-result-object v5

    sget-object v11, Lcom/unity3d/services/core/webview/WebViewEventCategory;->CACHE:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    sget-object v14, Lcom/unity3d/services/core/cache/CacheEvent;->DOWNLOAD_STOPPED:Lcom/unity3d/services/core/cache/CacheEvent;

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v0, v10, v3

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v10, v4

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v10, v9

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v10, v8

    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v10, v7

    invoke-static/range {p11 .. p11}, Lcom/unity3d/services/core/api/Request;->getResponseHeadersMap(Ljava/util/Map;)Lorg/json/JSONArray;

    move-result-object v0

    aput-object v0, v10, v6

    invoke-virtual {v5, v11, v14, v10}, Lcom/unity3d/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    :goto_c3
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 14

    .line 34
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "source"

    .line 35
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 36
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v1, "target"

    .line 37
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 38
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v1, "connectTimeout"

    .line 39
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 40
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v1, "readTimeout"

    .line 41
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 42
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v1, "progressInterval"

    .line 43
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 44
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v1, "append"

    const/4 v2, 0x0

    .line 45
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 46
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v1

    if-lez v1, :cond_6d

    const-string v1, "There are headers left in data, reading them"

    .line 50
    invoke-static {v1}, Lcom/unity3d/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 51
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 54
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_53
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 55
    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    .line 56
    invoke-virtual {v1, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_53

    :cond_6b
    move-object v8, v1

    goto :goto_6f

    :cond_6d
    const/4 v0, 0x0

    move-object v8, v0

    .line 60
    :goto_6f
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    if-eqz v9, :cond_7d

    .line 62
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_85

    :cond_7d
    if-nez v9, :cond_b1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_b1

    .line 63
    :cond_85
    iput-boolean v2, p0, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_active:Z

    .line 64
    invoke-static {}, Lcom/unity3d/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/services/core/webview/WebViewApp;

    move-result-object p1

    sget-object v5, Lcom/unity3d/services/core/webview/WebViewEventCategory;->CACHE:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    sget-object v6, Lcom/unity3d/services/core/cache/CacheEvent;->DOWNLOAD_ERROR:Lcom/unity3d/services/core/cache/CacheEvent;

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    sget-object v8, Lcom/unity3d/services/core/cache/CacheError;->FILE_STATE_WRONG:Lcom/unity3d/services/core/cache/CacheError;

    aput-object v8, v7, v2

    aput-object v3, v7, v1

    const/4 v1, 0x2

    aput-object v4, v7, v1

    const/4 v1, 0x3

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v7, v1

    const/4 v1, 0x4

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v7, v1

    invoke-virtual {p1, v5, v6, v7}, Lcom/unity3d/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    return-void

    .line 68
    :cond_b1
    iget p1, p1, Landroid/os/Message;->what:I

    if-eq p1, v1, :cond_b6

    goto :goto_ba

    :cond_b6
    move-object v2, p0

    .line 70
    invoke-direct/range {v2 .. v9}, Lcom/unity3d/services/core/cache/CacheThreadHandler;->downloadFile(Ljava/lang/String;Ljava/lang/String;IIILjava/util/HashMap;Z)V

    :goto_ba
    return-void
.end method

.method public isActive()Z
    .registers 2

    .line 88
    iget-boolean v0, p0, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_active:Z

    return v0
.end method

.method public setCancelStatus(Z)V
    .registers 3

    .line 79
    iput-boolean p1, p0, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_canceled:Z

    if-eqz p1, :cond_e

    .line 81
    iget-object p1, p0, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/services/core/request/WebRequest;

    if-eqz p1, :cond_e

    const/4 v0, 0x0

    .line 82
    iput-boolean v0, p0, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_active:Z

    .line 83
    invoke-virtual {p1}, Lcom/unity3d/services/core/request/WebRequest;->cancel()V

    :cond_e
    return-void
.end method
