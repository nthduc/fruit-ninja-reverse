.class public Lcom/helpshift/common/platform/AndroidBackupDAO;
.super Ljava/lang/Object;
.source "AndroidBackupDAO.java"

# interfaces
.implements Lcom/helpshift/common/dao/BackupDAO;


# instance fields
.field private final BACKUP_FILE_NAME:Ljava/lang/String;

.field private externalDirectoryPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "__hs__backup_dao_storage"

    .line 23
    iput-object v0, p0, Lcom/helpshift/common/platform/AndroidBackupDAO;->BACKUP_FILE_NAME:Ljava/lang/String;

    return-void
.end method

.method private backupExists()Z
    .registers 4

    .line 146
    :try_start_0
    invoke-direct {p0}, Lcom/helpshift/common/platform/AndroidBackupDAO;->getExternalDirectoryPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 147
    new-instance v1, Ljava/io/File;

    const-string v2, "__hs__backup_dao_storage"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 148
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    return v0

    :catch_14
    const/4 v0, 0x0

    return v0
.end method

.method private backupHashMap(Ljava/util/HashMap;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/io/Serializable;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    .line 100
    :try_start_4
    invoke-direct {p0}, Lcom/helpshift/common/platform/AndroidBackupDAO;->getExternalDirectoryPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 101
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_15

    .line 103
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 106
    :cond_15
    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 107
    new-instance v2, Ljava/io/File;

    const-string v3, "__hs__backup_dao_storage"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 108
    new-instance v1, Ljava/io/ObjectOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_2c} :catch_3a
    .catchall {:try_start_4 .. :try_end_2c} :catchall_35

    .line 109
    :try_start_2c
    invoke-virtual {v1, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2f} :catch_33
    .catchall {:try_start_2c .. :try_end_2f} :catchall_30

    goto :goto_33

    :catchall_30
    move-exception p1

    move-object v0, v1

    goto :goto_36

    :catch_33
    :goto_33
    move-object v0, v1

    goto :goto_3a

    :catchall_35
    move-exception p1

    .line 115
    :goto_36
    invoke-static {v0}, Lcom/helpshift/util/IOUtils;->closeQuitely(Ljava/io/Closeable;)V

    .line 116
    throw p1

    .line 115
    :catch_3a
    :cond_3a
    :goto_3a
    invoke-static {v0}, Lcom/helpshift/util/IOUtils;->closeQuitely(Ljava/io/Closeable;)V

    return-void
.end method

.method private getExternalDirectoryPath()Ljava/lang/String;
    .registers 3

    .line 158
    iget-object v0, p0, Lcom/helpshift/common/platform/AndroidBackupDAO;->externalDirectoryPath:Ljava/lang/String;

    if-nez v0, :cond_24

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ".backups/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    invoke-static {}, Lcom/helpshift/util/HelpshiftContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/helpshift/databases/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/common/platform/AndroidBackupDAO;->externalDirectoryPath:Ljava/lang/String;

    .line 163
    :cond_24
    iget-object v0, p0, Lcom/helpshift/common/platform/AndroidBackupDAO;->externalDirectoryPath:Ljava/lang/String;

    return-object v0
.end method

.method private restoreHashMap()Ljava/util/HashMap;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/io/Serializable;",
            ">;"
        }
    .end annotation

    .line 120
    invoke-direct {p0}, Lcom/helpshift/common/platform/AndroidBackupDAO;->backupExists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 127
    :cond_8
    :try_start_8
    invoke-direct {p0}, Lcom/helpshift/common/platform/AndroidBackupDAO;->getExternalDirectoryPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 129
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 130
    new-instance v2, Ljava/io/File;

    const-string v3, "__hs__backup_dao_storage"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 131
    new-instance v0, Ljava/io/ObjectInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_27} :catch_39
    .catchall {:try_start_8 .. :try_end_27} :catchall_34

    .line 133
    :try_start_27
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2d} :catch_3a
    .catchall {:try_start_27 .. :try_end_2d} :catchall_2f

    move-object v1, v2

    goto :goto_3a

    :catchall_2f
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_35

    :catchall_34
    move-exception v0

    .line 139
    :goto_35
    invoke-static {v1}, Lcom/helpshift/util/IOUtils;->closeQuitely(Ljava/io/Closeable;)V

    .line 140
    throw v0

    :catch_39
    :cond_39
    move-object v0, v1

    .line 139
    :catch_3a
    :goto_3a
    invoke-static {v0}, Lcom/helpshift/util/IOUtils;->closeQuitely(Ljava/io/Closeable;)V

    return-object v1
.end method


# virtual methods
.method public declared-synchronized delete()V
    .registers 4

    monitor-enter p0

    .line 75
    :try_start_1
    invoke-direct {p0}, Lcom/helpshift/common/platform/AndroidBackupDAO;->backupExists()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_2b

    if-nez v0, :cond_9

    .line 76
    monitor-exit p0

    return-void

    .line 80
    :cond_9
    :try_start_9
    invoke-direct {p0}, Lcom/helpshift/common/platform/AndroidBackupDAO;->getExternalDirectoryPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 81
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 82
    new-instance v1, Ljava/io/File;

    const-string v2, "__hs__backup_dao_storage"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 83
    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 84
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_29} :catch_29
    .catchall {:try_start_9 .. :try_end_29} :catchall_2b

    .line 91
    :catch_29
    :cond_29
    monitor-exit p0

    return-void

    :catchall_2b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getValue(Ljava/lang/String;)Ljava/io/Serializable;
    .registers 4

    monitor-enter p0

    .line 48
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_1a

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 49
    monitor-exit p0

    return-object v1

    .line 52
    :cond_a
    :try_start_a
    invoke-direct {p0}, Lcom/helpshift/common/platform/AndroidBackupDAO;->restoreHashMap()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 54
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/Serializable;
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_1a

    monitor-exit p0

    return-object p1

    .line 57
    :cond_18
    monitor-exit p0

    return-object v1

    :catchall_1a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeKey(Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    .line 62
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_1d

    if-eqz v0, :cond_9

    .line 63
    monitor-exit p0

    return-void

    .line 66
    :cond_9
    :try_start_9
    invoke-direct {p0}, Lcom/helpshift/common/platform/AndroidBackupDAO;->restoreHashMap()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 67
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 68
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    invoke-direct {p0, v0}, Lcom/helpshift/common/platform/AndroidBackupDAO;->backupHashMap(Ljava/util/HashMap;)V
    :try_end_1b
    .catchall {:try_start_9 .. :try_end_1b} :catchall_1d

    .line 71
    :cond_1b
    monitor-exit p0

    return-void

    :catchall_1d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized storeValue(Ljava/lang/String;Ljava/io/Serializable;)V
    .registers 5

    monitor-enter p0

    .line 28
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_29

    if-nez p2, :cond_a

    goto :goto_29

    .line 32
    :cond_a
    invoke-direct {p0}, Lcom/helpshift/common/platform/AndroidBackupDAO;->restoreHashMap()Ljava/util/HashMap;

    move-result-object v0

    if-nez v0, :cond_15

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 38
    :cond_15
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_2b

    if-eqz v1, :cond_21

    .line 39
    monitor-exit p0

    return-void

    .line 42
    :cond_21
    :try_start_21
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    invoke-direct {p0, v0}, Lcom/helpshift/common/platform/AndroidBackupDAO;->backupHashMap(Ljava/util/HashMap;)V
    :try_end_27
    .catchall {:try_start_21 .. :try_end_27} :catchall_2b

    .line 44
    monitor-exit p0

    return-void

    .line 29
    :cond_29
    :goto_29
    monitor-exit p0

    return-void

    :catchall_2b
    move-exception p1

    monitor-exit p0

    throw p1
.end method
