.class public Lcom/ironsource/sdk/utils/IronSourceStorageUtils;
.super Ljava/lang/Object;
.source "IronSourceStorageUtils.java"


# static fields
.field private static final SSA_DIRECTORY_NAME:Ljava/lang/String; = "supersonicads"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildFilesMap(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 10

    .line 295
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 297
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_68

    .line 300
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v0, :cond_68

    aget-object v3, p1, v2

    .line 303
    :try_start_17
    invoke-static {v3}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->looping(Ljava/io/File;)Ljava/lang/Object;

    move-result-object v4

    .line 305
    instance-of v5, v4, Lorg/json/JSONArray;

    if-eqz v5, :cond_29

    const-string v4, "files"

    .line 306
    invoke-static {v3}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->looping(Ljava/io/File;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_65

    .line 307
    :cond_29
    instance-of v4, v4, Lorg/json/JSONObject;

    if-eqz v4, :cond_65

    .line 308
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->looping(Ljava/io/File;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_38
    .catch Lorg/json/JSONException; {:try_start_17 .. :try_end_38} :catch_39

    goto :goto_65

    :catch_39
    move-exception v3

    .line 313
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 314
    new-instance v4, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;

    invoke-direct {v4}, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;-><init>()V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "https://www.supersonicads.com/mobile/sdk5/log?method="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/json/JSONException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v1

    invoke-virtual {v4, v5}, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_65
    :goto_65
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_68
    return-object p0
.end method

.method private static createRootDirectory(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    const-string v0, "supersonicads"

    .line 135
    invoke-static {p0, v0}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 137
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_f

    .line 138
    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    .line 141
    :cond_f
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static deleteAllFiles(Ljava/lang/String;)V
    .registers 5

    .line 77
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_c

    return-void

    .line 83
    :cond_c
    array-length v0, p0

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v0, :cond_29

    aget-object v2, p0, v1

    .line 84
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 85
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->deleteAllFiles(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_26

    .line 88
    :cond_23
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :goto_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_29
    return-void
.end method

.method public static declared-synchronized deleteFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8

    const-class v0, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;

    monitor-enter v0

    .line 171
    :try_start_3
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_3a

    const/4 p1, 0x0

    if-nez p0, :cond_11

    .line 174
    monitor-exit v0

    return p1

    .line 177
    :cond_11
    :try_start_11
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_3a

    if-nez p0, :cond_19

    .line 180
    monitor-exit v0

    return p1

    .line 183
    :cond_19
    :try_start_19
    array-length v1, p0

    const/4 v2, 0x0

    :goto_1b
    if-ge v2, v1, :cond_38

    aget-object v3, p0, v2

    .line 184
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_35

    .line 185
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 186
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result p0
    :try_end_33
    .catchall {:try_start_19 .. :try_end_33} :catchall_3a

    monitor-exit v0

    return p0

    :cond_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 191
    :cond_38
    monitor-exit v0

    return p1

    :catchall_3a
    move-exception p0

    monitor-exit v0

    throw p0

    return-void
.end method

.method public static declared-synchronized deleteFolder(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    const-class v0, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;

    monitor-enter v0

    .line 242
    :try_start_3
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-static {v1}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->deleteFolderContentRecursive(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_16

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result p0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_19

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    monitor-exit v0

    return p0

    :catchall_19
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static deleteFolderContentRecursive(Ljava/io/File;)Z
    .registers 7

    .line 252
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    const/4 v0, 0x1

    if-eqz p0, :cond_25

    .line 255
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v3, 0x1

    :goto_b
    if-ge v0, v1, :cond_24

    aget-object v4, p0, v0

    .line 256
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 257
    invoke-static {v4}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->deleteFolderContentRecursive(Ljava/io/File;)Z

    move-result v5

    and-int/2addr v3, v5

    .line 259
    :cond_1a
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_21

    const/4 v3, 0x0

    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_24
    move v0, v3

    :cond_25
    return v0
.end method

.method public static getCachedFilesMap(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 276
    invoke-static {p0, p1}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->buildFilesMap(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    :try_start_4
    const-string v0, "path"

    .line 278
    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_9} :catch_a

    goto :goto_e

    :catch_a
    move-exception p1

    .line 280
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 283
    :goto_e
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .registers 4

    .line 102
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->getDiskCacheDirPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getDiskCacheDirPath(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 113
    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->isExternalStorageAvailable()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 114
    invoke-static {p0}, Lcom/ironsource/environment/DeviceStatus;->getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 116
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 118
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 121
    :cond_17
    invoke-static {p0}, Lcom/ironsource/environment/DeviceStatus;->getInternalCacheDirPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 124
    :cond_1c
    invoke-static {p0}, Lcom/ironsource/environment/DeviceStatus;->getInternalCacheDirPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static initializeCacheDirectory(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    .line 29
    invoke-static {p0}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->createRootDirectory(Landroid/content/Context;)Ljava/lang/String;

    .line 30
    invoke-static {p0}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->refreshRootDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized isFileCached(Ljava/lang/String;Lcom/ironsource/sdk/data/SSAFile;)Z
    .registers 8

    const-class v0, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;

    monitor-enter v0

    .line 203
    :try_start_3
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Lcom/ironsource/sdk/data/SSAFile;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    const/4 v2, 0x0

    if-eqz p0, :cond_3b

    .line 206
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    array-length v1, p0

    const/4 v3, 0x0

    :goto_19
    if-ge v3, v1, :cond_3b

    aget-object v4, p0, v3

    .line 208
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_38

    .line 209
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/ironsource/sdk/data/SSAFile;->getFile()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/ironsource/sdk/utils/SDKUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_3d

    if-eqz v4, :cond_38

    .line 210
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :cond_38
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 216
    :cond_3b
    monitor-exit v0

    return v2

    :catchall_3d
    move-exception p0

    monitor-exit v0

    throw p0

    return-void
.end method

.method public static isPathExist(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 227
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method private static looping(Ljava/io/File;)Ljava/lang/Object;
    .registers 9

    .line 332
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 333
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const/4 v2, 0x0

    .line 336
    :try_start_b
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 337
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    return-object v1

    .line 341
    :cond_19
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_1f
    if-ge v5, v4, :cond_44

    aget-object v6, v3, v5

    .line 343
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_35

    .line 344
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->looping(Ljava/io/File;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_41

    .line 346
    :cond_35
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v6, "files"

    .line 347
    invoke-virtual {v0, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_41
    add-int/lit8 v5, v5, 0x1

    goto :goto_1f

    .line 353
    :cond_44
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_8a

    .line 354
    invoke-static {}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->getSupersonicPrefHelper()Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;

    move-result-object v1

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->getCampaignLastUpdate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_8a

    const-string v1, "lastUpdateTime"

    .line 356
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5d
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_5d} :catch_5e

    goto :goto_8a

    :catch_5e
    move-exception p0

    .line 363
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 364
    new-instance v1, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;

    invoke-direct {v1}, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;-><init>()V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "https://www.supersonicads.com/mobile/sdk5/log?method="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    aget-object p0, p0, v2

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, v2

    invoke-virtual {v1, v3}, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_8a
    :goto_8a
    return-object v0
.end method

.method public static makeDir(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 151
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_13

    .line 154
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result p0

    if-nez p0, :cond_13

    const/4 p0, 0x0

    return-object p0

    .line 159
    :cond_13
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static refreshRootDirectory(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 43
    invoke-static {p0}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->getSupersonicPrefHelper(Landroid/content/Context;)Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->getCurrentSDKVersion()Ljava/lang/String;

    move-result-object v0

    .line 45
    invoke-static {}, Lcom/ironsource/sdk/utils/DeviceProperties;->getSupersonicSdkVersion()Ljava/lang/String;

    move-result-object v1

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "supersonicads"

    if-nez v0, :cond_66

    .line 50
    invoke-static {}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->getSupersonicPrefHelper()Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->setCurrentSDKVersion(Ljava/lang/String;)V

    .line 53
    invoke-static {p0}, Lcom/ironsource/environment/DeviceStatus;->getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_41

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->deleteAllFiles(Ljava/lang/String;)V

    .line 58
    :cond_41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/ironsource/environment/DeviceStatus;->getInternalCacheDirPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->deleteAllFiles(Ljava/lang/String;)V

    .line 61
    invoke-static {p0}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->createRootDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    goto :goto_6e

    .line 63
    :cond_66
    invoke-static {p0, v2}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    :goto_6e
    return-object p0
.end method

.method public static renameFile(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 377
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 378
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 379
    invoke-virtual {v0, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static saveFile([BLjava/lang/String;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 391
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 392
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 393
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const p0, 0x19000

    .line 395
    :try_start_12
    new-array p0, p0, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 397
    :goto_16
    invoke-virtual {v0, p0}, Ljava/io/ByteArrayInputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_22

    .line 398
    invoke-virtual {p1, p0, v1, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_20
    .catchall {:try_start_12 .. :try_end_20} :catchall_29

    add-int/2addr v2, v3

    goto :goto_16

    .line 402
    :cond_22
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    .line 403
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    return v2

    :catchall_29
    move-exception p0

    .line 402
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    .line 403
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    .line 404
    throw p0

    return-void
.end method
