.class public Lcom/helpshift/logger/database/LogSQLiteStorage;
.super Ljava/lang/Object;
.source "LogSQLiteStorage.java"

# interfaces
.implements Lcom/helpshift/logger/database/LogStorage;


# static fields
.field private static final MAX_ROWS:I = 0x64

.field private static final TAG:Ljava/lang/String; = "LogSqliteStorage"

.field private static final syncLock:Ljava/lang/Object;


# instance fields
.field private logStorageSQLiteHelper:Lcom/helpshift/logger/database/LogStorageSQLiteHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 25
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/helpshift/logger/database/LogSQLiteStorage;->syncLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lcom/helpshift/logger/database/LogStorageSQLiteHelper;

    invoke-direct {v0, p1, p2}, Lcom/helpshift/logger/database/LogStorageSQLiteHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/helpshift/logger/database/LogSQLiteStorage;->logStorageSQLiteHelper:Lcom/helpshift/logger/database/LogStorageSQLiteHelper;

    return-void
.end method


# virtual methods
.method public deleteAll()V
    .registers 5

    .line 129
    sget-object v0, Lcom/helpshift/logger/database/LogSQLiteStorage;->syncLock:Ljava/lang/Object;

    monitor-enter v0

    .line 131
    :try_start_3
    iget-object v1, p0, Lcom/helpshift/logger/database/LogSQLiteStorage;->logStorageSQLiteHelper:Lcom/helpshift/logger/database/LogStorageSQLiteHelper;

    invoke-virtual {v1}, Lcom/helpshift/logger/database/LogStorageSQLiteHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "DELETE FROM LOG_MESSAGES"

    .line 132
    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_e} :catch_11
    .catchall {:try_start_3 .. :try_end_e} :catchall_f

    goto :goto_19

    :catchall_f
    move-exception v1

    goto :goto_1b

    :catch_11
    move-exception v1

    :try_start_12
    const-string v2, "LogSqliteStorage"

    const-string v3, "Error deleting all logs from db"

    .line 135
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 137
    :goto_19
    monitor-exit v0

    return-void

    :goto_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_f

    throw v1
.end method

.method public getAll()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/helpshift/logger/model/LogModel;",
            ">;"
        }
    .end annotation

    .line 103
    sget-object v0, Lcom/helpshift/logger/database/LogSQLiteStorage;->syncLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 106
    :try_start_4
    iget-object v2, p0, Lcom/helpshift/logger/database/LogSQLiteStorage;->logStorageSQLiteHelper:Lcom/helpshift/logger/database/LogStorageSQLiteHelper;

    invoke-virtual {v2}, Lcom/helpshift/logger/database/LogStorageSQLiteHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "SELECT * FROM LOG_MESSAGES"

    .line 109
    invoke-virtual {v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_10} :catch_21
    .catchall {:try_start_4 .. :try_end_10} :catchall_1c

    .line 112
    :try_start_10
    invoke-static {v2}, Lcom/helpshift/logger/adapters/LogStorageModelAdapter;->fromCursor(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v1
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_14} :catch_1a
    .catchall {:try_start_10 .. :try_end_14} :catchall_2f

    if-eqz v2, :cond_2d

    .line 119
    :goto_16
    :try_start_16
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_36

    goto :goto_2d

    :catch_1a
    move-exception v3

    goto :goto_23

    :catchall_1c
    move-exception v2

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    goto :goto_30

    :catch_21
    move-exception v3

    move-object v2, v1

    :goto_23
    :try_start_23
    const-string v4, "LogSqliteStorage"

    const-string v5, "Error getting all log messages : "

    .line 115
    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2a
    .catchall {:try_start_23 .. :try_end_2a} :catchall_2f

    if-eqz v2, :cond_2d

    goto :goto_16

    .line 122
    :cond_2d
    :goto_2d
    :try_start_2d
    monitor-exit v0

    return-object v1

    :catchall_2f
    move-exception v1

    :goto_30
    if-eqz v2, :cond_35

    .line 119
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 121
    :cond_35
    throw v1

    :catchall_36
    move-exception v1

    .line 122
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_2d .. :try_end_38} :catchall_36

    throw v1

    return-void
.end method

.method public insert(Lcom/helpshift/logger/model/LogModel;)V
    .registers 11

    .line 50
    sget-object v0, Lcom/helpshift/logger/database/LogSQLiteStorage;->syncLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 52
    :try_start_4
    iget-object v2, p0, Lcom/helpshift/logger/database/LogSQLiteStorage;->logStorageSQLiteHelper:Lcom/helpshift/logger/database/LogStorageSQLiteHelper;

    invoke-virtual {v2}, Lcom/helpshift/logger/database/LogStorageSQLiteHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_a} :catch_88
    .catchall {:try_start_4 .. :try_end_a} :catchall_84

    .line 54
    :try_start_a
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_d} :catch_80
    .catchall {:try_start_a .. :try_end_d} :catchall_7d

    :try_start_d
    const-string v3, "SELECT rowid FROM LOG_MESSAGES"

    .line 58
    invoke-virtual {v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_13} :catch_38
    .catchall {:try_start_d .. :try_end_13} :catchall_7d

    if-eqz v3, :cond_59

    .line 61
    :try_start_15
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    const/16 v5, 0x64

    if-lt v4, v5, :cond_59

    .line 63
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v4, 0x0

    .line 64
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const-string v6, "LOG_MESSAGES"

    const-string v7, "rowid = ?"

    const/4 v8, 0x1

    .line 65
    new-array v8, v8, [Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v4

    invoke-virtual {v2, v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_35} :catch_36
    .catchall {:try_start_15 .. :try_end_35} :catchall_79

    goto :goto_59

    :catch_36
    move-exception v4

    goto :goto_3a

    :catch_38
    move-exception v4

    move-object v3, v1

    :goto_3a
    :try_start_3a
    const-string v5, "LogSqliteStorage"

    .line 69
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error in rotation of logs + "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "LOG_MESSAGES"

    .line 71
    invoke-virtual {v2, v4, v1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_59
    :goto_59
    const-string v4, "LOG_MESSAGES"

    .line 74
    invoke-static {p1}, Lcom/helpshift/logger/adapters/LogStorageModelAdapter;->toContentValues(Lcom/helpshift/logger/model/LogModel;)Landroid/content/ContentValues;

    move-result-object p1

    invoke-virtual {v2, v4, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 75
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_65} :catch_7b
    .catchall {:try_start_3a .. :try_end_65} :catchall_79

    if-eqz v2, :cond_73

    .line 83
    :try_start_67
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_6a} :catch_6b
    .catchall {:try_start_67 .. :try_end_6a} :catchall_ac

    goto :goto_73

    :catch_6b
    move-exception p1

    :try_start_6c
    const-string v1, "LogSqliteStorage"

    const-string v2, "Error inserting log inside finally block: "

    .line 87
    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_73
    :goto_73
    if-eqz v3, :cond_a2

    .line 91
    :goto_75
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_78
    .catchall {:try_start_6c .. :try_end_78} :catchall_ac

    goto :goto_a2

    :catchall_79
    move-exception p1

    goto :goto_a6

    :catch_7b
    move-exception p1

    goto :goto_82

    :catchall_7d
    move-exception p1

    move-object v3, v1

    goto :goto_a6

    :catch_80
    move-exception p1

    move-object v3, v1

    :goto_82
    move-object v1, v2

    goto :goto_8a

    :catchall_84
    move-exception p1

    move-object v2, v1

    move-object v3, v2

    goto :goto_a6

    :catch_88
    move-exception p1

    move-object v3, v1

    :goto_8a
    :try_start_8a
    const-string v2, "LogSqliteStorage"

    const-string v4, "Error inserting log : "

    .line 78
    invoke-static {v2, v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_91
    .catchall {:try_start_8a .. :try_end_91} :catchall_a4

    if-eqz v1, :cond_9f

    .line 83
    :try_start_93
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_96} :catch_97
    .catchall {:try_start_93 .. :try_end_96} :catchall_ac

    goto :goto_9f

    :catch_97
    move-exception p1

    :try_start_98
    const-string v1, "LogSqliteStorage"

    const-string v2, "Error inserting log inside finally block: "

    .line 87
    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_9f
    :goto_9f
    if-eqz v3, :cond_a2

    goto :goto_75

    .line 94
    :cond_a2
    :goto_a2
    monitor-exit v0
    :try_end_a3
    .catchall {:try_start_98 .. :try_end_a3} :catchall_ac

    return-void

    :catchall_a4
    move-exception p1

    move-object v2, v1

    :goto_a6
    if-eqz v2, :cond_b6

    .line 83
    :try_start_a8
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_ab} :catch_ae
    .catchall {:try_start_a8 .. :try_end_ab} :catchall_ac

    goto :goto_b6

    :catchall_ac
    move-exception p1

    goto :goto_bc

    :catch_ae
    move-exception v1

    :try_start_af
    const-string v2, "LogSqliteStorage"

    const-string v4, "Error inserting log inside finally block: "

    .line 87
    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_b6
    :goto_b6
    if-eqz v3, :cond_bb

    .line 91
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 93
    :cond_bb
    throw p1

    .line 94
    :goto_bc
    monitor-exit v0
    :try_end_bd
    .catchall {:try_start_af .. :try_end_bd} :catchall_ac

    throw p1

    return-void
.end method
