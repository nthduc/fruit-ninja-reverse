.class public Lcom/google/firebase/remoteconfig/internal/ConfigStorageClient;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-config@@19.1.4"


# annotations
.annotation build Landroidx/annotation/AnyThread;
.end annotation


# static fields
.field private static final JSON_STRING_ENCODING:Ljava/lang/String; = "UTF-8"

.field private static final clientInstances:Ljava/util/Map;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "ConfigStorageClient.class"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/remoteconfig/internal/ConfigStorageClient;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final context:Landroid/content/Context;

.field private final fileName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/firebase/remoteconfig/internal/ConfigStorageClient;->clientInstances:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/google/firebase/remoteconfig/internal/ConfigStorageClient;->context:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Lcom/google/firebase/remoteconfig/internal/ConfigStorageClient;->fileName:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized clearInstancesForTest()V
    .registers 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-class v0, Lcom/google/firebase/remoteconfig/internal/ConfigStorageClient;

    monitor-enter v0

    .line 138
    :try_start_3
    sget-object v1, Lcom/google/firebase/remoteconfig/internal/ConfigStorageClient;->clientInstances:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    .line 139
    monitor-exit v0

    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/google/firebase/remoteconfig/internal/ConfigStorageClient;
    .registers 5

    const-class v0, Lcom/google/firebase/remoteconfig/internal/ConfigStorageClient;

    monitor-enter v0

    .line 130
    :try_start_3
    sget-object v1, Lcom/google/firebase/remoteconfig/internal/ConfigStorageClient;->clientInstances:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 131
    sget-object v1, Lcom/google/firebase/remoteconfig/internal/ConfigStorageClient;->clientInstances:Ljava/util/Map;

    new-instance v2, Lcom/google/firebase/remoteconfig/internal/ConfigStorageClient;

    invoke-direct {v2, p0, p1}, Lcom/google/firebase/remoteconfig/internal/ConfigStorageClient;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    :cond_15
    sget-object p0, Lcom/google/firebase/remoteconfig/internal/ConfigStorageClient;->clientInstances:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/remoteconfig/internal/ConfigStorageClient;
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1f

    monitor-exit v0

    return-object p0

    :catchall_1f
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public declared-synchronized clear()Ljava/lang/Void;
    .registers 3

    monitor-enter p0

    .line 121
    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/ConfigStorageClient;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/firebase/remoteconfig/internal/ConfigStorageClient;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_b

    const/4 v0, 0x0

    .line 122
    monitor-exit p0

    return-object v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getFileName()Ljava/lang/String;
    .registers 2

    .line 143
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/ConfigStorageClient;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized read()Lcom/google/firebase/remoteconfig/internal/ConfigContainer;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 99
    :try_start_2
    iget-object v1, p0, Lcom/google/firebase/remoteconfig/internal/ConfigStorageClient;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/firebase/remoteconfig/internal/ConfigStorageClient;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_a} :catch_3a
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_a} :catch_3a
    .catchall {:try_start_2 .. :try_end_a} :catchall_30

    .line 100
    :try_start_a
    invoke-virtual {v1}, Ljava/io/FileInputStream;->available()I

    move-result v2

    new-array v2, v2, [B

    const/4 v3, 0x0

    .line 101
    array-length v4, v2

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/FileInputStream;->read([BII)I

    .line 102
    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v3, v2, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 104
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 105
    invoke-static {v2}, Lcom/google/firebase/remoteconfig/internal/ConfigContainer;->copyOf(Lorg/json/JSONObject;)Lcom/google/firebase/remoteconfig/internal/ConfigContainer;

    move-result-object v0
    :try_end_25
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_25} :catch_2e
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_25} :catch_2e
    .catchall {:try_start_a .. :try_end_25} :catchall_2c

    if-eqz v1, :cond_2a

    .line 110
    :try_start_27
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_41

    .line 105
    :cond_2a
    monitor-exit p0

    return-object v0

    :catchall_2c
    move-exception v0

    goto :goto_34

    :catch_2e
    nop

    goto :goto_3b

    :catchall_30
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_34
    if-eqz v1, :cond_39

    .line 110
    :try_start_36
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    :cond_39
    throw v0

    :catch_3a
    move-object v1, v0

    :goto_3b
    if-eqz v1, :cond_44

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_40
    .catchall {:try_start_36 .. :try_end_40} :catchall_41

    goto :goto_44

    :catchall_41
    move-exception v0

    monitor-exit p0

    throw v0

    .line 108
    :cond_44
    :goto_44
    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized write(Lcom/google/firebase/remoteconfig/internal/ConfigContainer;)Ljava/lang/Void;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 79
    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/ConfigStorageClient;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/firebase/remoteconfig/internal/ConfigStorageClient;->fileName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_22

    .line 81
    :try_start_a
    invoke-virtual {p1}, Lcom/google/firebase/remoteconfig/internal/ConfigContainer;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_17
    .catchall {:try_start_a .. :try_end_17} :catchall_1d

    .line 83
    :try_start_17
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_22

    const/4 p1, 0x0

    .line 85
    monitor-exit p0

    return-object p1

    :catchall_1d
    move-exception p1

    .line 83
    :try_start_1e
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    throw p1
    :try_end_22
    .catchall {:try_start_1e .. :try_end_22} :catchall_22

    :catchall_22
    move-exception p1

    monitor-exit p0

    throw p1
.end method
