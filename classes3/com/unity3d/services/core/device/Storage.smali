.class public Lcom/unity3d/services/core/device/Storage;
.super Lcom/unity3d/services/core/misc/JsonStorage;
.source "Storage.java"


# instance fields
.field private _targetFileName:Ljava/lang/String;

.field private _type:Lcom/unity3d/services/core/device/StorageManager$StorageType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/unity3d/services/core/device/StorageManager$StorageType;)V
    .registers 3

    .line 17
    invoke-direct {p0}, Lcom/unity3d/services/core/misc/JsonStorage;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/unity3d/services/core/device/Storage;->_targetFileName:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/unity3d/services/core/device/Storage;->_type:Lcom/unity3d/services/core/device/StorageManager$StorageType;

    return-void
.end method


# virtual methods
.method public declared-synchronized clearStorage()Z
    .registers 3

    monitor-enter p0

    .line 63
    :try_start_1
    invoke-virtual {p0}, Lcom/unity3d/services/core/device/Storage;->clearData()V

    .line 64
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/unity3d/services/core/device/Storage;->_targetFileName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    monitor-exit p0

    return v0

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getType()Lcom/unity3d/services/core/device/StorageManager$StorageType;
    .registers 2

    .line 23
    iget-object v0, p0, Lcom/unity3d/services/core/device/Storage;->_type:Lcom/unity3d/services/core/device/StorageManager$StorageType;

    return-object v0
.end method

.method public declared-synchronized initStorage()Z
    .registers 2

    monitor-enter p0

    .line 45
    :try_start_1
    invoke-virtual {p0}, Lcom/unity3d/services/core/device/Storage;->readStorage()Z

    .line 46
    invoke-super {p0}, Lcom/unity3d/services/core/misc/JsonStorage;->initData()Z
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_a

    const/4 v0, 0x1

    .line 47
    monitor-exit p0

    return v0

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized readStorage()Z
    .registers 4

    monitor-enter p0

    .line 27
    :try_start_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/unity3d/services/core/device/Storage;->_targetFileName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_29

    const/4 v1, 0x0

    .line 30
    :try_start_9
    invoke-static {v0}, Lcom/unity3d/services/core/misc/Utilities;->readFileBytes(Ljava/io/File;)[B

    move-result-object v0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_d} :catch_21
    .catchall {:try_start_9 .. :try_end_d} :catchall_29

    if-nez v0, :cond_11

    .line 32
    monitor-exit p0

    return v1

    .line 34
    :cond_11
    :try_start_11
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    .line 35
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/unity3d/services/core/device/Storage;->setData(Lorg/json/JSONObject;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1e} :catch_21
    .catchall {:try_start_11 .. :try_end_1e} :catchall_29

    const/4 v0, 0x1

    .line 36
    monitor-exit p0

    return v0

    :catch_21
    move-exception v0

    :try_start_22
    const-string v2, "Error creating storage JSON"

    .line 39
    invoke-static {v2, v0}, Lcom/unity3d/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_27
    .catchall {:try_start_22 .. :try_end_27} :catchall_29

    .line 40
    monitor-exit p0

    return v1

    :catchall_29
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized sendEvent(Lcom/unity3d/services/core/device/StorageEvent;Ljava/lang/Object;)V
    .registers 8

    monitor-enter p0

    .line 76
    :try_start_1
    invoke-static {}, Lcom/unity3d/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/services/core/webview/WebViewApp;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_20

    .line 77
    invoke-static {}, Lcom/unity3d/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/services/core/webview/WebViewApp;

    move-result-object v0

    sget-object v2, Lcom/unity3d/services/core/webview/WebViewEventCategory;->STORAGE:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/unity3d/services/core/device/Storage;->_type:Lcom/unity3d/services/core/device/StorageManager$StorageType;

    invoke-virtual {v4}, Lcom/unity3d/services/core/device/StorageManager$StorageType;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x1

    aput-object p2, v3, v1

    invoke-virtual {v0, v2, p1, v3}, Lcom/unity3d/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    move-result v1

    :cond_20
    if-nez v1, :cond_27

    const-string p1, "Couldn\'t send storage event to WebApp"

    .line 81
    invoke-static {p1}, Lcom/unity3d/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_29

    .line 83
    :cond_27
    monitor-exit p0

    return-void

    :catchall_29
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized storageFileExists()Z
    .registers 3

    monitor-enter p0

    .line 69
    :try_start_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/unity3d/services/core/device/Storage;->_targetFileName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    monitor-exit p0

    return v0

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized writeStorage()Z
    .registers 3

    monitor-enter p0

    .line 51
    :try_start_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/unity3d/services/core/device/Storage;->_targetFileName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lcom/unity3d/services/core/device/Storage;->getData()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 55
    invoke-virtual {p0}, Lcom/unity3d/services/core/device/Storage;->getData()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unity3d/services/core/misc/Utilities;->writeFile(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1f

    .line 56
    monitor-exit p0

    return v0

    :cond_1c
    const/4 v0, 0x0

    .line 59
    monitor-exit p0

    return v0

    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method
