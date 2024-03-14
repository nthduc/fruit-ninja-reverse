.class public Lcom/facebook/internal/logging/monitor/MonitorLoggingStore;
.super Ljava/lang/Object;
.source "MonitorLoggingStore.java"

# interfaces
.implements Lcom/facebook/internal/logging/LoggingStore;


# static fields
.field public static final PERSISTED_LOGS_FILENAME:Ljava/lang/String; = "facebooksdk.monitoring.persistedlogs"

.field private static monitorLoggingStore:Lcom/facebook/internal/logging/monitor/MonitorLoggingStore;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/facebook/internal/logging/monitor/MonitorLoggingStore;
    .registers 2

    const-class v0, Lcom/facebook/internal/logging/monitor/MonitorLoggingStore;

    monitor-enter v0

    .line 53
    :try_start_3
    sget-object v1, Lcom/facebook/internal/logging/monitor/MonitorLoggingStore;->monitorLoggingStore:Lcom/facebook/internal/logging/monitor/MonitorLoggingStore;

    if-nez v1, :cond_e

    .line 54
    new-instance v1, Lcom/facebook/internal/logging/monitor/MonitorLoggingStore;

    invoke-direct {v1}, Lcom/facebook/internal/logging/monitor/MonitorLoggingStore;-><init>()V

    sput-object v1, Lcom/facebook/internal/logging/monitor/MonitorLoggingStore;->monitorLoggingStore:Lcom/facebook/internal/logging/monitor/MonitorLoggingStore;

    .line 56
    :cond_e
    sget-object v1, Lcom/facebook/internal/logging/monitor/MonitorLoggingStore;->monitorLoggingStore:Lcom/facebook/internal/logging/monitor/MonitorLoggingStore;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public readAndClearStore()Ljava/util/Collection;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/facebook/internal/logging/ExternalLog;",
            ">;"
        }
    .end annotation

    const-string v0, "facebooksdk.monitoring.persistedlogs"

    .line 67
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 68
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    .line 71
    :try_start_c
    invoke-virtual {v2, v0}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v4

    .line 72
    new-instance v5, Ljava/io/ObjectInputStream;

    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-direct {v6, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1a} :catch_3d
    .catchall {:try_start_c .. :try_end_1a} :catchall_31

    .line 73
    :try_start_1a
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_20} :catch_2f
    .catchall {:try_start_1a .. :try_end_20} :catchall_2c

    .line 77
    invoke-static {v5}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 80
    :try_start_23
    invoke-virtual {v2, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_2a} :catch_2a

    :catch_2a
    move-object v1, v3

    goto :goto_47

    :catchall_2c
    move-exception v1

    move-object v3, v5

    goto :goto_32

    :catch_2f
    move-object v3, v5

    goto :goto_3d

    :catchall_31
    move-exception v1

    .line 77
    :goto_32
    invoke-static {v3}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 80
    :try_start_35
    invoke-virtual {v2, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_3c} :catch_3c

    .line 84
    :catch_3c
    throw v1

    .line 77
    :catch_3d
    :goto_3d
    invoke-static {v3}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 80
    :try_start_40
    invoke-virtual {v2, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_47} :catch_47

    :catch_47
    :goto_47
    return-object v1
.end method

.method public saveLogsToDisk(Ljava/util/Collection;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/facebook/internal/logging/ExternalLog;",
            ">;)V"
        }
    .end annotation

    const-string v0, "facebooksdk.monitoring.persistedlogs"

    .line 96
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    .line 99
    :try_start_7
    new-instance v3, Ljava/io/ObjectOutputStream;

    new-instance v4, Ljava/io/BufferedOutputStream;

    const/4 v5, 0x0

    .line 101
    invoke-virtual {v1, v0, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v3, v4}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_16} :catch_24
    .catchall {:try_start_7 .. :try_end_16} :catchall_22

    .line 102
    :try_start_16
    invoke-virtual {v3, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_19} :catch_20
    .catchall {:try_start_16 .. :try_end_19} :catchall_1d

    .line 111
    invoke-static {v3}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_33

    :catchall_1d
    move-exception p1

    move-object v2, v3

    goto :goto_2c

    :catch_20
    move-object v2, v3

    goto :goto_24

    :catchall_22
    move-exception p1

    goto :goto_2c

    .line 106
    :catch_24
    :goto_24
    :try_start_24
    invoke-virtual {v1, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2b} :catch_30
    .catchall {:try_start_24 .. :try_end_2b} :catchall_22

    goto :goto_30

    .line 111
    :goto_2c
    invoke-static {v2}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 112
    throw p1

    .line 111
    :catch_30
    :goto_30
    invoke-static {v2}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    :goto_33
    return-void
.end method
