.class public abstract Lcom/helpshift/db/base/BaseSqliteHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "BaseSqliteHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpshift/db/base/BaseSqliteHelper$IDbMigrationListener;,
        Lcom/helpshift/db/base/BaseSqliteHelper$MigrationType;
    }
.end annotation


# instance fields
.field private contract:Lcom/helpshift/db/base/DatabaseContract;

.field private listener:Lcom/helpshift/db/base/BaseSqliteHelper$IDbMigrationListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/helpshift/db/base/DatabaseContract;)V
    .registers 6

    .line 29
    invoke-interface {p2}, Lcom/helpshift/db/base/DatabaseContract;->getDatabaseName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lcom/helpshift/db/base/DatabaseContract;->getDatabaseVersion()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v2, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 30
    iput-object p2, p0, Lcom/helpshift/db/base/BaseSqliteHelper;->contract:Lcom/helpshift/db/base/DatabaseContract;

    return-void
.end method

.method private createAllTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4

    .line 144
    iget-object v0, p0, Lcom/helpshift/db/base/BaseSqliteHelper;->contract:Lcom/helpshift/db/base/DatabaseContract;

    invoke-interface {v0}, Lcom/helpshift/db/base/DatabaseContract;->getCreateTableQueries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 145
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_a

    :cond_1a
    return-void
.end method

.method private dropAllTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 6

    .line 138
    iget-object v0, p0, Lcom/helpshift/db/base/BaseSqliteHelper;->contract:Lcom/helpshift/db/base/DatabaseContract;

    invoke-interface {v0}, Lcom/helpshift/db/base/DatabaseContract;->getTableNames()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 139
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DROP TABLE IF EXISTS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_a

    :cond_2b
    return-void
.end method

.method private dropAndCreateAllTablesOnMigrate(Landroid/database/sqlite/SQLiteDatabase;)Z
    .registers 5

    .line 92
    :try_start_0
    invoke-direct {p0, p1}, Lcom/helpshift/db/base/BaseSqliteHelper;->dropAllTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 93
    invoke-direct {p0, p1}, Lcom/helpshift/db/base/BaseSqliteHelper;->createAllTables(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_8

    const/4 p1, 0x1

    return p1

    :catch_8
    move-exception p1

    .line 96
    iget-object v0, p0, Lcom/helpshift/db/base/BaseSqliteHelper;->contract:Lcom/helpshift/db/base/DatabaseContract;

    invoke-interface {v0}, Lcom/helpshift/db/base/DatabaseContract;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception while recreating tables on DB upgrade/downgrade: version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/helpshift/db/base/BaseSqliteHelper;->contract:Lcom/helpshift/db/base/DatabaseContract;

    .line 97
    invoke-interface {v2}, Lcom/helpshift/db/base/DatabaseContract;->getDatabaseVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/helpshift/logger/logmodels/ILogExtrasModel;

    .line 96
    invoke-static {v0, v1, p1, v2}, Lcom/helpshift/util/HSLogger;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Lcom/helpshift/logger/logmodels/ILogExtrasModel;)V

    .line 99
    throw p1
.end method

.method private migrate(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/List<",
            "Lcom/helpshift/db/base/IMigrator;",
            ">;I)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 161
    :try_start_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/helpshift/db/base/IMigrator;

    .line 162
    invoke-interface {v1, p1}, Lcom/helpshift/db/base/IMigrator;->migrate(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_14} :catch_17

    goto :goto_5

    :cond_15
    const/4 v0, 0x1

    goto :goto_50

    :catch_17
    move-exception p2

    .line 167
    iget-object v1, p0, Lcom/helpshift/db/base/BaseSqliteHelper;->contract:Lcom/helpshift/db/base/DatabaseContract;

    invoke-interface {v1}, Lcom/helpshift/db/base/DatabaseContract;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception while migrating "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/helpshift/db/base/BaseSqliteHelper;->contract:Lcom/helpshift/db/base/DatabaseContract;

    .line 168
    invoke-interface {v3}, Lcom/helpshift/db/base/DatabaseContract;->getDatabaseName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " old: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", new: "

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/helpshift/db/base/BaseSqliteHelper;->contract:Lcom/helpshift/db/base/DatabaseContract;

    .line 169
    invoke-interface {p3}, Lcom/helpshift/db/base/DatabaseContract;->getDatabaseVersion()I

    move-result p3

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-array v2, v0, [Lcom/helpshift/logger/logmodels/ILogExtrasModel;

    .line 167
    invoke-static {v1, p3, p2, v2}, Lcom/helpshift/util/HSLogger;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Lcom/helpshift/logger/logmodels/ILogExtrasModel;)V

    :goto_50
    if-nez v0, :cond_55

    .line 173
    invoke-direct {p0, p1}, Lcom/helpshift/db/base/BaseSqliteHelper;->dropAndCreateAllTablesOnMigrate(Landroid/database/sqlite/SQLiteDatabase;)Z

    :cond_55
    return v0
.end method


# virtual methods
.method public dropAndCreateAllTables(Landroid/database/sqlite/SQLiteDatabase;)Z
    .registers 8

    const-string v0, "Error in recreating inside finally block, "

    .line 111
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_7f

    const/4 v1, 0x0

    .line 113
    :try_start_9
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 114
    invoke-direct {p0, p1}, Lcom/helpshift/db/base/BaseSqliteHelper;->dropAllTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 115
    invoke-direct {p0, p1}, Lcom/helpshift/db/base/BaseSqliteHelper;->createAllTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 116
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_15} :catch_2e
    .catchall {:try_start_9 .. :try_end_15} :catchall_2c

    .line 125
    :try_start_15
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v2

    if-eqz v2, :cond_7f

    .line 126
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1e} :catch_1f

    goto :goto_7f

    :catch_1f
    move-exception p1

    .line 130
    iget-object v2, p0, Lcom/helpshift/db/base/BaseSqliteHelper;->contract:Lcom/helpshift/db/base/DatabaseContract;

    invoke-interface {v2}, Lcom/helpshift/db/base/DatabaseContract;->getTag()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Lcom/helpshift/logger/logmodels/ILogExtrasModel;

    invoke-static {v2, v0, p1, v1}, Lcom/helpshift/util/HSLogger;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Lcom/helpshift/logger/logmodels/ILogExtrasModel;)V

    goto :goto_7f

    :catchall_2c
    move-exception v2

    goto :goto_68

    :catch_2e
    move-exception v2

    .line 119
    :try_start_2f
    iget-object v3, p0, Lcom/helpshift/db/base/BaseSqliteHelper;->contract:Lcom/helpshift/db/base/DatabaseContract;

    invoke-interface {v3}, Lcom/helpshift/db/base/DatabaseContract;->getTag()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception while recreating tables: version: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/helpshift/db/base/BaseSqliteHelper;->contract:Lcom/helpshift/db/base/DatabaseContract;

    .line 120
    invoke-interface {v5}, Lcom/helpshift/db/base/DatabaseContract;->getDatabaseVersion()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Lcom/helpshift/logger/logmodels/ILogExtrasModel;

    .line 119
    invoke-static {v3, v4, v2, v5}, Lcom/helpshift/util/HSLogger;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Lcom/helpshift/logger/logmodels/ILogExtrasModel;)V
    :try_end_51
    .catchall {:try_start_2f .. :try_end_51} :catchall_2c

    .line 125
    :try_start_51
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v2

    if-eqz v2, :cond_67

    .line 126
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_5a} :catch_5b

    goto :goto_67

    :catch_5b
    move-exception p1

    .line 130
    iget-object v2, p0, Lcom/helpshift/db/base/BaseSqliteHelper;->contract:Lcom/helpshift/db/base/DatabaseContract;

    invoke-interface {v2}, Lcom/helpshift/db/base/DatabaseContract;->getTag()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Lcom/helpshift/logger/logmodels/ILogExtrasModel;

    invoke-static {v2, v0, p1, v3}, Lcom/helpshift/util/HSLogger;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Lcom/helpshift/logger/logmodels/ILogExtrasModel;)V

    :cond_67
    :goto_67
    return v1

    .line 125
    :goto_68
    :try_start_68
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v3

    if-eqz v3, :cond_7e

    .line 126
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_71} :catch_72

    goto :goto_7e

    :catch_72
    move-exception p1

    .line 130
    iget-object v3, p0, Lcom/helpshift/db/base/BaseSqliteHelper;->contract:Lcom/helpshift/db/base/DatabaseContract;

    invoke-interface {v3}, Lcom/helpshift/db/base/DatabaseContract;->getTag()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Lcom/helpshift/logger/logmodels/ILogExtrasModel;

    invoke-static {v3, v0, p1, v1}, Lcom/helpshift/util/HSLogger;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Lcom/helpshift/logger/logmodels/ILogExtrasModel;)V

    .line 132
    :cond_7e
    :goto_7e
    throw v2

    :cond_7f
    :goto_7f
    const/4 p1, 0x1

    return p1
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 6

    const-string v0, "Error in onCreate inside finally block, "

    const/4 v1, 0x0

    .line 45
    :try_start_3
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 46
    invoke-direct {p0, p1}, Lcom/helpshift/db/base/BaseSqliteHelper;->createAllTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 47
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_23

    .line 51
    :try_start_c
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 52
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_15} :catch_16

    goto :goto_22

    :catch_16
    move-exception p1

    .line 56
    iget-object v2, p0, Lcom/helpshift/db/base/BaseSqliteHelper;->contract:Lcom/helpshift/db/base/DatabaseContract;

    invoke-interface {v2}, Lcom/helpshift/db/base/DatabaseContract;->getTag()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Lcom/helpshift/logger/logmodels/ILogExtrasModel;

    invoke-static {v2, v0, p1, v1}, Lcom/helpshift/util/HSLogger;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Lcom/helpshift/logger/logmodels/ILogExtrasModel;)V

    :cond_22
    :goto_22
    return-void

    :catchall_23
    move-exception v2

    .line 51
    :try_start_24
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 52
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2d} :catch_2e

    goto :goto_3a

    :catch_2e
    move-exception p1

    .line 56
    iget-object v3, p0, Lcom/helpshift/db/base/BaseSqliteHelper;->contract:Lcom/helpshift/db/base/DatabaseContract;

    invoke-interface {v3}, Lcom/helpshift/db/base/DatabaseContract;->getTag()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Lcom/helpshift/logger/logmodels/ILogExtrasModel;

    invoke-static {v3, v0, p1, v1}, Lcom/helpshift/util/HSLogger;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Lcom/helpshift/logger/logmodels/ILogExtrasModel;)V

    .line 58
    :cond_3a
    :goto_3a
    throw v2
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    .line 79
    invoke-direct {p0, p1}, Lcom/helpshift/db/base/BaseSqliteHelper;->dropAndCreateAllTablesOnMigrate(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result p1

    .line 80
    iget-object p2, p0, Lcom/helpshift/db/base/BaseSqliteHelper;->listener:Lcom/helpshift/db/base/BaseSqliteHelper$IDbMigrationListener;

    if-eqz p2, :cond_21

    if-eqz p1, :cond_16

    .line 82
    sget-object p1, Lcom/helpshift/db/base/BaseSqliteHelper$MigrationType;->DOWNGRADE:Lcom/helpshift/db/base/BaseSqliteHelper$MigrationType;

    iget-object p3, p0, Lcom/helpshift/db/base/BaseSqliteHelper;->contract:Lcom/helpshift/db/base/DatabaseContract;

    invoke-interface {p3}, Lcom/helpshift/db/base/DatabaseContract;->getDatabaseName()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Lcom/helpshift/db/base/BaseSqliteHelper$IDbMigrationListener;->onDbMigrationSuccess(Lcom/helpshift/db/base/BaseSqliteHelper$MigrationType;Ljava/lang/String;)V

    goto :goto_21

    .line 85
    :cond_16
    sget-object p1, Lcom/helpshift/db/base/BaseSqliteHelper$MigrationType;->DOWNGRADE:Lcom/helpshift/db/base/BaseSqliteHelper$MigrationType;

    iget-object p3, p0, Lcom/helpshift/db/base/BaseSqliteHelper;->contract:Lcom/helpshift/db/base/DatabaseContract;

    invoke-interface {p3}, Lcom/helpshift/db/base/DatabaseContract;->getDatabaseName()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Lcom/helpshift/db/base/BaseSqliteHelper$IDbMigrationListener;->onDbMigrationFailed(Lcom/helpshift/db/base/BaseSqliteHelper$MigrationType;Ljava/lang/String;)V

    :cond_21
    :goto_21
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 5

    .line 63
    iget-object p3, p0, Lcom/helpshift/db/base/BaseSqliteHelper;->contract:Lcom/helpshift/db/base/DatabaseContract;

    invoke-interface {p3, p2}, Lcom/helpshift/db/base/DatabaseContract;->getMigratorsForUpgrade(I)Ljava/util/List;

    move-result-object p3

    .line 64
    invoke-static {p3}, Lcom/helpshift/util/ListUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 65
    invoke-direct {p0, p1, p3, p2}, Lcom/helpshift/db/base/BaseSqliteHelper;->migrate(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;I)Z

    move-result p1

    .line 66
    iget-object p2, p0, Lcom/helpshift/db/base/BaseSqliteHelper;->listener:Lcom/helpshift/db/base/BaseSqliteHelper$IDbMigrationListener;

    if-eqz p2, :cond_2d

    if-eqz p1, :cond_22

    .line 68
    sget-object p1, Lcom/helpshift/db/base/BaseSqliteHelper$MigrationType;->UPGRADE:Lcom/helpshift/db/base/BaseSqliteHelper$MigrationType;

    iget-object p3, p0, Lcom/helpshift/db/base/BaseSqliteHelper;->contract:Lcom/helpshift/db/base/DatabaseContract;

    invoke-interface {p3}, Lcom/helpshift/db/base/DatabaseContract;->getDatabaseName()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Lcom/helpshift/db/base/BaseSqliteHelper$IDbMigrationListener;->onDbMigrationSuccess(Lcom/helpshift/db/base/BaseSqliteHelper$MigrationType;Ljava/lang/String;)V

    goto :goto_2d

    .line 71
    :cond_22
    sget-object p1, Lcom/helpshift/db/base/BaseSqliteHelper$MigrationType;->UPGRADE:Lcom/helpshift/db/base/BaseSqliteHelper$MigrationType;

    iget-object p3, p0, Lcom/helpshift/db/base/BaseSqliteHelper;->contract:Lcom/helpshift/db/base/DatabaseContract;

    invoke-interface {p3}, Lcom/helpshift/db/base/DatabaseContract;->getDatabaseName()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Lcom/helpshift/db/base/BaseSqliteHelper$IDbMigrationListener;->onDbMigrationFailed(Lcom/helpshift/db/base/BaseSqliteHelper$MigrationType;Ljava/lang/String;)V

    :cond_2d
    :goto_2d
    return-void
.end method

.method public setListener(Lcom/helpshift/db/base/BaseSqliteHelper$IDbMigrationListener;)V
    .registers 2

    .line 39
    iput-object p1, p0, Lcom/helpshift/db/base/BaseSqliteHelper;->listener:Lcom/helpshift/db/base/BaseSqliteHelper$IDbMigrationListener;

    return-void
.end method
